# makefile
# By David Kebo Houngninou

isc2v: isc2v.o
	gcc -o isc2v isc2v.o

isc2v.o: isc2v.c
	gcc -O -c isc2v.c

clean:
	rm -f isc2v isc2v.o
