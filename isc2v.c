/* ---------------------------------------------------------------------------
** This software is in the public domain, furnished "as is", without technical
** support, and with no warranty, express or implied, as to its usefulness for
** any purpose.
**
** transfer.c
** Convert a file in ISCAS85 format to VERILOG format
**
** Author: David Kebo Houngninou
** Southern Methodist University
** May 23 2017
** -------------------------------------------------------------------------*/

#include <sys/types.h>
#include <sys/time.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>


#define MAXLINE 256	/* Maximum length of each input line read. */

/* Definitions of wire types, used in type field of wire structure. */
#define	INPUT	0	/* Primary input */
#define	AND		1
#define	NAND	2
#define	OR		3
#define NOR		4
#define XOR		5
#define XNOR	6
#define BUFF	7	/* Non-inverting buffer:  output = input */
#define NOT		8
#define FROM	9	/* Fanout branch:  output = input */
#define DRIVER		10	/* Internal wire: fanout driver	 */
#define	OUTPUT	11

struct wire_	{
    char *name;		/* Name of this wire. */
    int	type;		/* Type of gate driving this wire. */
    int	fanincount;	/* Number of fanins. */
    int	*fanins;	/* Array of fanin indices. */
    char *logic;	/* Name of the wire logic function */
    int index;		/* Index of the wire */
    char* driver;		/* Driver of the wire (For fanouts only) */
};
typedef struct wire_ *wire;

struct circuit_	{
    char *name;		/* Name of the circuit. */
    int	wirecount;	/* Number of wire indices. */
    wire *wires;	/* Array of all wires */
    int	inputcount;	/* Number of primary inputs. */
    int	*inputs;	/* Array of input indices. */
    int	outputcount;	/* Number of primary outputs. */
    int	*outputs;		/* Array of output indices. */
};
typedef struct circuit_ *circuit;

/* Returns the wire type constant for the given string. */
int translate_wiretype(char *typename)

{
    if (strncmp("inpt",typename,4)==0) return INPUT;
    if (strncmp("and",typename,4)==0) return AND;
    if (strncmp("nand",typename,4)==0) return NAND;
    if (strncmp("or",typename,4)==0) return OR;
    if (strncmp("nor",typename,4)==0) return NOR;
    if (strncmp("xor",typename,4)==0) return XOR;
    if (strncmp("xnor",typename,4)==0) return XNOR;
    if (strncmp("buff",typename,4)==0) return BUFF;
    if (strncmp("not",typename,4)==0) return NOT;
    if (strncmp("from",typename,4)==0) return FROM;

    fprintf(stderr,"isc2v:  Illegal wire type \"%s\"\n",typename);
    exit(1);
}

/* Reads an ISCAS 85 circuit from stream f, building up circuit c. */
int parse_iscas85(FILE *f, circuit c)
{
    int inputcount = 0;
    int outputcount = 0;
    int maxindex = -1;
    char linebuf[MAXLINE];
    int index, fanins, fanouts;
    char wirename[MAXLINE], fanoutname[MAXLINE], wiretype[MAXLINE];
    int i;
    int fanindex;

    /* Make first pass to count primary inputs, primary outputs, and wires. */
    while (fgets(linebuf,MAXLINE,f) != NULL) {
        if (linebuf[0]=='*') continue;	/* Skip comment lines. */

        /* Pick out the relevant data from the line. */
        sscanf(linebuf,"%d %*s %*s %d %d",&index,&fanouts,&fanins);
        maxindex = ( index>maxindex ) ? index : maxindex; // Get the highest index
        if (fanouts==0) outputcount++;	/* Only outputs have no fanout. */
        if (fanins==0) inputcount++;	/* Only inputs have no fanin. */
        if (fanins>0) fgets(linebuf,MAXLINE,f);	/* Discard fanin line. */
        if (fanouts>1) {
            while (fanouts-- > 0)
                fgets(linebuf,MAXLINE,f);	/* Discard fanout lines. */
        }
    }

    /* Now that we know how big to make the arrays, allocate memory. */
    /* Allocate a contiguous array we can index for every wire. */
    c->wires = (wire *)malloc((maxindex*9)*sizeof(wire));
    bzero(c->wires,(maxindex*9)*sizeof(wire));	/* Clear out the space. */
    c->inputcount = inputcount;
    c->inputs = (int *)malloc(inputcount*sizeof(int));
    c->outputcount = outputcount;
    c->outputs = (int *)malloc(outputcount*sizeof(int));

    /* Second pass actually reads the circuit. */
    rewind(f);
    inputcount = 0;
    outputcount = 0;
    int nets=0;

    while (fgets(linebuf,MAXLINE,f) != NULL) {
        if (linebuf[0]=='*') continue;	/* Skip comment lines. */

        /* Pick out the relevant data from the line. */
        sscanf(linebuf,"%d %s %s %d %d",&index,wirename,wiretype,&fanouts,&fanins);

        /* If it's a primary input or primary output, record that fact. */
        if (fanins==0) c->inputs[inputcount++] = index; /* primary input. */
        if (fanouts==0) c->outputs[outputcount++] = index; /* primary output. */

        /* Create the new wire. */
        c->wires[nets] = (wire)malloc(sizeof(struct wire_));
        c->wires[nets]->name = strdup(wirename);
        c->wires[nets]->type = translate_wiretype(wiretype);
        c->wires[nets]->fanincount = fanins;
        c->wires[nets]->fanins = (int *)malloc(sizeof(int)*fanins);
        c->wires[nets]->logic = wiretype;
        c->wires[nets]->index = index;
        c->wires[nets]->logic = strdup(wiretype);
        /* Read the fanins. */
        if (fanins>0) {
            for (i=0; i<fanins; i++) {
                fscanf(f,"%d",&(c->wires[nets]->fanins[i]));
            }
            fgets(linebuf,MAXLINE,f);	/* Discard rest of line. */
        }
        nets ++; // Increment the index in the array of wires

        /* Create driver for wire */
        if (translate_wiretype(wiretype) != INPUT)
        {
            c->wires[nets] = (wire)malloc(sizeof(struct wire_));
            c->wires[nets]->name = strdup(wirename);
            strcat (c->wires[nets]->name,"_out");
            c->wires[nets]->type = DRIVER;
            c->wires[nets]->fanincount = 1;
            c->wires[nets]->fanins = (int *)malloc(sizeof(int));
            c->wires[nets]->fanins[0] = index;
            c->wires[nets]->logic = "driver";

            if (fanouts==0) /*Overwrite the type if this is an output*/
                c->wires[nets]->type = OUTPUT;

            nets++; // Increment the index in the array of wires
        }

        /* Read the fanout lines if fanouts>1. */
        if (fanouts>1) {
            for (i=0; i<fanouts; i++) {
                /* Create additional wires for
                   each fanout because of the way the input format works. */
                fscanf(f,"%d %s",&fanindex,fanoutname);
                /* Create the fanout branch wire. */
                c->wires[nets] = (wire)malloc(sizeof(struct wire_));
                c->wires[nets]->name = strdup(fanoutname);
                c->wires[nets]->type = FROM;
                c->wires[nets]->fanincount = 1;
                c->wires[nets]->fanins = (int *)malloc(sizeof(int));
                c->wires[nets]->fanins[0] = index;
                c->wires[nets]->index = fanindex;
                c->wires[nets]->logic = "fanout";

                /* If the fanout driver is an input, keep the driver name unchanged,
                   If the fanout driver is a gate, update the driver name*/
                if (translate_wiretype(wiretype) == INPUT)
                    c->wires[nets]->driver = strdup(wirename);
                else {
                    c->wires[nets]->driver = strdup(wirename);
                    strcat (c->wires[nets]->driver,"_out");
                }

                nets ++; // Increment the index in the array of wires

                fgets(linebuf,MAXLINE,f);	/* Discard rest of line. */
            }
        }
    }

    c->wirecount = nets;

    return 1;	/* Didn't bother to do any error checking. */
}

/* This routine reads in an ISCAS 85 format circuit from the file. */
circuit read_iscas85_file(char *filename)
{
    FILE *f;
    circuit c;

    f = fopen(filename,"r");
    if (!f) {
        fprintf(stderr,"isc2v:  cannot open file \"%s\"\n",filename);
        return NULL;
    }

    c = (circuit)malloc(sizeof(*c));
    if (!c) {
        fprintf(stderr,"isc2v:  cannot allocate memory\n");
        return NULL;
    }

    c->name = filename;

    /* Parse the circuit into c, returning NULL if error. */
    if (!parse_iscas85(f,c)) {
        fprintf(stderr,"isc2v:  error reading circuit in file \"%s\"\n",filename);
        free((void *)c);
        return NULL;
    }

    fclose(f);

    return c;
}

/**
 * Get a wire by id
 * @param the signal name, the circuit's name
 */
wire get_wire (circuit c, int index)
{
    int i=0;
    for (i=0; i<c->wirecount; i++) {
        if (c->wires[i]->index == index) // If node is found in the circuit
            return c->wires[i];
    }
    return 0;
}

/*
Fanins can either be a primary input, a fanout, or a gate.
Proceed accordingly
*/
char* get_fanin (circuit c, int index)
{
    int i=0;

    for (i=0; i<c->wirecount; i++) {
        if (c->wires[i]->index == index) {

            if (c->wires[i]->type == FROM)	 		// Fanout
                return c->wires[i]->driver;
            else if (c->wires[i]->type == INPUT) 	// Input
                return c->wires[i]->name;
            else 									// Gate
                return c->wires[i+1]->name;

        }
    }
    return 0;
}


void print_gate (circuit c, wire w, wire output, FILE *verilog)
{
    int i=0;
    int input=0;


    fprintf (verilog,"%s %s (", w->logic, w->name );
    for (i=0; i < w->fanincount; i++) {
        input = w->fanins[i];
        fprintf (verilog,"%s,", get_fanin(c, input));
    }
    fprintf (verilog, "%s);\n", output->name);
}

/*Print the Verilog netlist to an output file*/
void print_verilog (circuit c)
{
    int i=0;
    int index=0;

    FILE *verilog; 			/* Verilog file */
    verilog = fopen("verilog.v", "w"); 	/* Open Verilog file */
    if (!verilog) {
        fprintf(stderr,"transfer:  cannot open destination file \n");
        exit(1);
    }

    fprintf (verilog, "// Verilog generated from iscas85 format\n");
    fprintf (verilog, "// Circuit name: %s \n", c->name);
    fprintf (verilog, "// Circuit input count: %d \n", c->inputcount);
    fprintf (verilog, "// Circuit output count: %d \n", c->outputcount);
    fprintf (verilog, "// Circuit wire count: %d \n\n", c->wirecount);

    fprintf (verilog, "module %s (", c->name);
    for (i=0; i<c->wirecount; i++)
        if (c->wires[i]->type == INPUT)
            fprintf (verilog, "%s, ", c->wires[i]->name);

    for (i=0; i<c->wirecount; i++)
        if (c->wires[i]->type == OUTPUT)
            fprintf (verilog, "%s, ", c->wires[i]->name);

    fprintf (verilog, ");\n\n");

    fprintf (verilog, "input ");
    for (i=0; i<c->wirecount; i++)
        if (c->wires[i]->type == INPUT)
            fprintf (verilog, "%s, ", c->wires[i]->name);
    fprintf (verilog, ";\n\n");

    fprintf (verilog, "output ");
    for (i=0; i<c->wirecount; i++)
        if (c->wires[i]->type == OUTPUT)
            fprintf (verilog, "%s, ", c->wires[i]->name);
    fprintf (verilog, ";\n\n");

    fprintf (verilog, "wire ");
    for (i=0; i<c->wirecount; i++)
        if (c->wires[i]->type == DRIVER)
            fprintf (verilog, "%s, ", c->wires[i]->name);
    fprintf (verilog, ";\n\n");

    for (i=0; i<c->wirecount; i++) {
        if (c->wires[i]->type != FROM &&
                c->wires[i]->type != INPUT &&
                c->wires[i]->type != OUTPUT &&
                c->wires[i]->type != DRIVER)
        {
            print_gate (c, c->wires[i], c->wires[i+1], verilog); // Gate wire and gate output wire
        }
    }

    fprintf (verilog, "\nendmodule\n\n");

    fclose(verilog);
}


/*main()*/
int main(int argc, char *argv[])
{
    circuit c;
    int i;

    /* Make sure program invoked with two arguments. */
    if (argc !=2) {
        fprintf(stderr,"isc2v:  usage:  isc2v file\n");
        exit(1);
    }

    c = read_iscas85_file(argv[1]); // Read circuit 1
    if (!c) exit(1);

    print_verilog (c);
    printf ("File successfully converted in verilog.v\n");

    /*Deallocate memory*/
    /*
    for (i=0; i < c->outputcount; i++)
        free (c->outputs[i]);

    for (i=0; i < c->inputcount; i++)
        free (c->inputs[i]);

    for (i=0; i < c->wirecount; i++) {
        free (c->wires[i]->name);
        free (c->wires[i]->fanins);
        free (c->wires[i]->logic);
        free (c->wires[i]->driver);
        free (c->wires[i]);
    }
    free(c->wires);

    free (c->name);
    free (c); //Deallocate memory used by the circuit
    */
    /*End Deallocate memory*/

    return 0;
}
