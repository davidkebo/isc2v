// Verilog generated from iscas85 format
// Circuit name: iscas85/c1355.isc 
// Circuit input count: 41 
// Circuit output count: 32 
// Circuit wire count: 1901 

module iscas85/c1355.isc (1gat, 8gat, 15gat, 22gat, 29gat, 36gat, 43gat, 50gat, 57gat, 64gat, 71gat, 78gat, 85gat, 92gat, 99gat, 106gat, 113gat, 120gat, 127gat, 134gat, 141gat, 148gat, 155gat, 162gat, 169gat, 176gat, 183gat, 190gat, 197gat, 204gat, 211gat, 218gat, 225gat, 226gat, 227gat, 228gat, 229gat, 230gat, 231gat, 232gat, 233gat, 1324gat_out, 1325gat_out, 1326gat_out, 1327gat_out, 1328gat_out, 1329gat_out, 1330gat_out, 1331gat_out, 1332gat_out, 1333gat_out, 1334gat_out, 1335gat_out, 1336gat_out, 1337gat_out, 1338gat_out, 1339gat_out, 1340gat_out, 1341gat_out, 1342gat_out, 1343gat_out, 1344gat_out, 1345gat_out, 1346gat_out, 1347gat_out, 1348gat_out, 1349gat_out, 1350gat_out, 1351gat_out, 1352gat_out, 1353gat_out, 1354gat_out, 1355gat_out, );

input 1gat, 8gat, 15gat, 22gat, 29gat, 36gat, 43gat, 50gat, 57gat, 64gat, 71gat, 78gat, 85gat, 92gat, 99gat, 106gat, 113gat, 120gat, 127gat, 134gat, 141gat, 148gat, 155gat, 162gat, 169gat, 176gat, 183gat, 190gat, 197gat, 204gat, 211gat, 218gat, 225gat, 226gat, 227gat, 228gat, 229gat, 230gat, 231gat, 232gat, 233gat, ;

output 1324gat_out, 1325gat_out, 1326gat_out, 1327gat_out, 1328gat_out, 1329gat_out, 1330gat_out, 1331gat_out, 1332gat_out, 1333gat_out, 1334gat_out, 1335gat_out, 1336gat_out, 1337gat_out, 1338gat_out, 1339gat_out, 1340gat_out, 1341gat_out, 1342gat_out, 1343gat_out, 1344gat_out, 1345gat_out, 1346gat_out, 1347gat_out, 1348gat_out, 1349gat_out, 1350gat_out, 1351gat_out, 1352gat_out, 1353gat_out, 1354gat_out, 1355gat_out, ;

wire 242gat_out, 245gat_out, 248gat_out, 251gat_out, 254gat_out, 257gat_out, 260gat_out, 263gat_out, 266gat_out, 269gat_out, 272gat_out, 275gat_out, 278gat_out, 281gat_out, 284gat_out, 287gat_out, 290gat_out, 293gat_out, 296gat_out, 299gat_out, 302gat_out, 305gat_out, 308gat_out, 311gat_out, 314gat_out, 317gat_out, 320gat_out, 323gat_out, 326gat_out, 329gat_out, 332gat_out, 335gat_out, 338gat_out, 341gat_out, 344gat_out, 347gat_out, 350gat_out, 353gat_out, 356gat_out, 359gat_out, 362gat_out, 363gat_out, 364gat_out, 365gat_out, 366gat_out, 367gat_out, 368gat_out, 369gat_out, 370gat_out, 371gat_out, 372gat_out, 373gat_out, 374gat_out, 375gat_out, 376gat_out, 377gat_out, 378gat_out, 379gat_out, 380gat_out, 381gat_out, 382gat_out, 383gat_out, 384gat_out, 385gat_out, 386gat_out, 387gat_out, 388gat_out, 389gat_out, 390gat_out, 391gat_out, 392gat_out, 393gat_out, 394gat_out, 395gat_out, 396gat_out, 397gat_out, 398gat_out, 399gat_out, 400gat_out, 401gat_out, 402gat_out, 403gat_out, 404gat_out, 405gat_out, 406gat_out, 407gat_out, 408gat_out, 409gat_out, 410gat_out, 411gat_out, 412gat_out, 413gat_out, 414gat_out, 415gat_out, 416gat_out, 417gat_out, 418gat_out, 419gat_out, 420gat_out, 421gat_out, 422gat_out, 423gat_out, 424gat_out, 425gat_out, 426gat_out, 429gat_out, 432gat_out, 435gat_out, 438gat_out, 441gat_out, 444gat_out, 447gat_out, 450gat_out, 453gat_out, 456gat_out, 459gat_out, 462gat_out, 465gat_out, 468gat_out, 471gat_out, 474gat_out, 477gat_out, 480gat_out, 483gat_out, 486gat_out, 489gat_out, 492gat_out, 495gat_out, 498gat_out, 501gat_out, 504gat_out, 507gat_out, 510gat_out, 513gat_out, 516gat_out, 519gat_out, 522gat_out, 525gat_out, 528gat_out, 531gat_out, 534gat_out, 537gat_out, 540gat_out, 543gat_out, 546gat_out, 549gat_out, 552gat_out, 555gat_out, 558gat_out, 561gat_out, 564gat_out, 567gat_out, 570gat_out, 571gat_out, 572gat_out, 573gat_out, 574gat_out, 575gat_out, 576gat_out, 577gat_out, 578gat_out, 579gat_out, 580gat_out, 581gat_out, 582gat_out, 583gat_out, 584gat_out, 585gat_out, 586gat_out, 587gat_out, 588gat_out, 589gat_out, 590gat_out, 591gat_out, 592gat_out, 593gat_out, 594gat_out, 595gat_out, 596gat_out, 597gat_out, 598gat_out, 599gat_out, 600gat_out, 601gat_out, 602gat_out, 607gat_out, 612gat_out, 617gat_out, 622gat_out, 627gat_out, 632gat_out, 637gat_out, 642gat_out, 645gat_out, 648gat_out, 651gat_out, 654gat_out, 657gat_out, 660gat_out, 663gat_out, 666gat_out, 669gat_out, 672gat_out, 675gat_out, 678gat_out, 681gat_out, 684gat_out, 687gat_out, 690gat_out, 691gat_out, 692gat_out, 693gat_out, 694gat_out, 695gat_out, 696gat_out, 697gat_out, 698gat_out, 699gat_out, 700gat_out, 701gat_out, 702gat_out, 703gat_out, 704gat_out, 705gat_out, 706gat_out, 709gat_out, 712gat_out, 715gat_out, 718gat_out, 721gat_out, 724gat_out, 727gat_out, 730gat_out, 733gat_out, 736gat_out, 739gat_out, 742gat_out, 745gat_out, 748gat_out, 751gat_out, 754gat_out, 755gat_out, 756gat_out, 757gat_out, 758gat_out, 759gat_out, 760gat_out, 761gat_out, 762gat_out, 763gat_out, 764gat_out, 765gat_out, 766gat_out, 767gat_out, 768gat_out, 769gat_out, 770gat_out, 773gat_out, 776gat_out, 779gat_out, 782gat_out, 785gat_out, 788gat_out, 791gat_out, 794gat_out, 797gat_out, 800gat_out, 803gat_out, 806gat_out, 809gat_out, 812gat_out, 815gat_out, 818gat_out, 819gat_out, 820gat_out, 821gat_out, 822gat_out, 823gat_out, 824gat_out, 825gat_out, 826gat_out, 827gat_out, 828gat_out, 829gat_out, 830gat_out, 831gat_out, 832gat_out, 833gat_out, 834gat_out, 847gat_out, 860gat_out, 873gat_out, 886gat_out, 899gat_out, 912gat_out, 925gat_out, 938gat_out, 939gat_out, 940gat_out, 941gat_out, 942gat_out, 943gat_out, 944gat_out, 945gat_out, 946gat_out, 947gat_out, 948gat_out, 949gat_out, 950gat_out, 951gat_out, 952gat_out, 953gat_out, 954gat_out, 955gat_out, 956gat_out, 957gat_out, 958gat_out, 959gat_out, 960gat_out, 961gat_out, 962gat_out, 963gat_out, 964gat_out, 965gat_out, 966gat_out, 967gat_out, 968gat_out, 969gat_out, 970gat_out, 971gat_out, 972gat_out, 973gat_out, 974gat_out, 975gat_out, 976gat_out, 977gat_out, 978gat_out, 979gat_out, 980gat_out, 981gat_out, 982gat_out, 983gat_out, 984gat_out, 985gat_out, 986gat_out, 991gat_out, 996gat_out, 1001gat_out, 1006gat_out, 1011gat_out, 1016gat_out, 1021gat_out, 1026gat_out, 1031gat_out, 1036gat_out, 1039gat_out, 1042gat_out, 1045gat_out, 1048gat_out, 1051gat_out, 1054gat_out, 1057gat_out, 1060gat_out, 1063gat_out, 1066gat_out, 1069gat_out, 1072gat_out, 1075gat_out, 1078gat_out, 1081gat_out, 1084gat_out, 1087gat_out, 1090gat_out, 1093gat_out, 1096gat_out, 1099gat_out, 1102gat_out, 1105gat_out, 1108gat_out, 1111gat_out, 1114gat_out, 1117gat_out, 1120gat_out, 1123gat_out, 1126gat_out, 1129gat_out, 1132gat_out, 1135gat_out, 1138gat_out, 1141gat_out, 1144gat_out, 1147gat_out, 1150gat_out, 1153gat_out, 1156gat_out, 1159gat_out, 1162gat_out, 1165gat_out, 1168gat_out, 1171gat_out, 1174gat_out, 1177gat_out, 1180gat_out, 1183gat_out, 1186gat_out, 1189gat_out, 1192gat_out, 1195gat_out, 1198gat_out, 1201gat_out, 1204gat_out, 1207gat_out, 1210gat_out, 1213gat_out, 1216gat_out, 1219gat_out, 1222gat_out, 1225gat_out, 1228gat_out, 1229gat_out, 1230gat_out, 1231gat_out, 1232gat_out, 1233gat_out, 1234gat_out, 1235gat_out, 1236gat_out, 1237gat_out, 1238gat_out, 1239gat_out, 1240gat_out, 1241gat_out, 1242gat_out, 1243gat_out, 1244gat_out, 1245gat_out, 1246gat_out, 1247gat_out, 1248gat_out, 1249gat_out, 1250gat_out, 1251gat_out, 1252gat_out, 1253gat_out, 1254gat_out, 1255gat_out, 1256gat_out, 1257gat_out, 1258gat_out, 1259gat_out, 1260gat_out, 1261gat_out, 1262gat_out, 1263gat_out, 1264gat_out, 1265gat_out, 1266gat_out, 1267gat_out, 1268gat_out, 1269gat_out, 1270gat_out, 1271gat_out, 1272gat_out, 1273gat_out, 1274gat_out, 1275gat_out, 1276gat_out, 1277gat_out, 1278gat_out, 1279gat_out, 1280gat_out, 1281gat_out, 1282gat_out, 1283gat_out, 1284gat_out, 1285gat_out, 1286gat_out, 1287gat_out, 1288gat_out, 1289gat_out, 1290gat_out, 1291gat_out, 1292gat_out, 1293gat_out, 1294gat_out, 1295gat_out, 1296gat_out, 1297gat_out, 1298gat_out, 1299gat_out, 1300gat_out, 1301gat_out, 1302gat_out, 1303gat_out, 1304gat_out, 1305gat_out, 1306gat_out, 1307gat_out, 1308gat_out, 1309gat_out, 1310gat_out, 1311gat_out, 1312gat_out, 1313gat_out, 1314gat_out, 1315gat_out, 1316gat_out, 1317gat_out, 1318gat_out, 1319gat_out, 1320gat_out, 1321gat_out, 1322gat_out, 1323gat_out, ;

and 242gat (225gat,233gat,242gat_out);
and 245gat (226gat,233gat,245gat_out);
and 248gat (227gat,233gat,248gat_out);
and 251gat (228gat,233gat,251gat_out);
and 254gat (229gat,233gat,254gat_out);
and 257gat (230gat,233gat,257gat_out);
and 260gat (231gat,233gat,260gat_out);
and 263gat (232gat,233gat,263gat_out);
nand 266gat (1gat,8gat,266gat_out);
nand 269gat (15gat,22gat,269gat_out);
nand 272gat (29gat,36gat,272gat_out);
nand 275gat (43gat,50gat,275gat_out);
nand 278gat (57gat,64gat,278gat_out);
nand 281gat (71gat,78gat,281gat_out);
nand 284gat (85gat,92gat,284gat_out);
nand 287gat (99gat,106gat,287gat_out);
nand 290gat (113gat,120gat,290gat_out);
nand 293gat (127gat,134gat,293gat_out);
nand 296gat (141gat,148gat,296gat_out);
nand 299gat (155gat,162gat,299gat_out);
nand 302gat (169gat,176gat,302gat_out);
nand 305gat (183gat,190gat,305gat_out);
nand 308gat (197gat,204gat,308gat_out);
nand 311gat (211gat,218gat,311gat_out);
nand 314gat (1gat,29gat,314gat_out);
nand 317gat (57gat,85gat,317gat_out);
nand 320gat (8gat,36gat,320gat_out);
nand 323gat (64gat,92gat,323gat_out);
nand 326gat (15gat,43gat,326gat_out);
nand 329gat (71gat,99gat,329gat_out);
nand 332gat (22gat,50gat,332gat_out);
nand 335gat (78gat,106gat,335gat_out);
nand 338gat (113gat,141gat,338gat_out);
nand 341gat (169gat,197gat,341gat_out);
nand 344gat (120gat,148gat,344gat_out);
nand 347gat (176gat,204gat,347gat_out);
nand 350gat (127gat,155gat,350gat_out);
nand 353gat (183gat,211gat,353gat_out);
nand 356gat (134gat,162gat,356gat_out);
nand 359gat (190gat,218gat,359gat_out);
nand 362gat (1gat,266gat_out,362gat_out);
nand 363gat (8gat,266gat_out,363gat_out);
nand 364gat (15gat,269gat_out,364gat_out);
nand 365gat (22gat,269gat_out,365gat_out);
nand 366gat (29gat,272gat_out,366gat_out);
nand 367gat (36gat,272gat_out,367gat_out);
nand 368gat (43gat,275gat_out,368gat_out);
nand 369gat (50gat,275gat_out,369gat_out);
nand 370gat (57gat,278gat_out,370gat_out);
nand 371gat (64gat,278gat_out,371gat_out);
nand 372gat (71gat,281gat_out,372gat_out);
nand 373gat (78gat,281gat_out,373gat_out);
nand 374gat (85gat,284gat_out,374gat_out);
nand 375gat (92gat,284gat_out,375gat_out);
nand 376gat (99gat,287gat_out,376gat_out);
nand 377gat (106gat,287gat_out,377gat_out);
nand 378gat (113gat,290gat_out,378gat_out);
nand 379gat (120gat,290gat_out,379gat_out);
nand 380gat (127gat,293gat_out,380gat_out);
nand 381gat (134gat,293gat_out,381gat_out);
nand 382gat (141gat,296gat_out,382gat_out);
nand 383gat (148gat,296gat_out,383gat_out);
nand 384gat (155gat,299gat_out,384gat_out);
nand 385gat (162gat,299gat_out,385gat_out);
nand 386gat (169gat,302gat_out,386gat_out);
nand 387gat (176gat,302gat_out,387gat_out);
nand 388gat (183gat,305gat_out,388gat_out);
nand 389gat (190gat,305gat_out,389gat_out);
nand 390gat (197gat,308gat_out,390gat_out);
nand 391gat (204gat,308gat_out,391gat_out);
nand 392gat (211gat,311gat_out,392gat_out);
nand 393gat (218gat,311gat_out,393gat_out);
nand 394gat (1gat,314gat_out,394gat_out);
nand 395gat (29gat,314gat_out,395gat_out);
nand 396gat (57gat,317gat_out,396gat_out);
nand 397gat (85gat,317gat_out,397gat_out);
nand 398gat (8gat,320gat_out,398gat_out);
nand 399gat (36gat,320gat_out,399gat_out);
nand 400gat (64gat,323gat_out,400gat_out);
nand 401gat (92gat,323gat_out,401gat_out);
nand 402gat (15gat,326gat_out,402gat_out);
nand 403gat (43gat,326gat_out,403gat_out);
nand 404gat (71gat,329gat_out,404gat_out);
nand 405gat (99gat,329gat_out,405gat_out);
nand 406gat (22gat,332gat_out,406gat_out);
nand 407gat (50gat,332gat_out,407gat_out);
nand 408gat (78gat,335gat_out,408gat_out);
nand 409gat (106gat,335gat_out,409gat_out);
nand 410gat (113gat,338gat_out,410gat_out);
nand 411gat (141gat,338gat_out,411gat_out);
nand 412gat (169gat,341gat_out,412gat_out);
nand 413gat (197gat,341gat_out,413gat_out);
nand 414gat (120gat,344gat_out,414gat_out);
nand 415gat (148gat,344gat_out,415gat_out);
nand 416gat (176gat,347gat_out,416gat_out);
nand 417gat (204gat,347gat_out,417gat_out);
nand 418gat (127gat,350gat_out,418gat_out);
nand 419gat (155gat,350gat_out,419gat_out);
nand 420gat (183gat,353gat_out,420gat_out);
nand 421gat (211gat,353gat_out,421gat_out);
nand 422gat (134gat,356gat_out,422gat_out);
nand 423gat (162gat,356gat_out,423gat_out);
nand 424gat (190gat,359gat_out,424gat_out);
nand 425gat (218gat,359gat_out,425gat_out);
nand 426gat (362gat_out,363gat_out,426gat_out);
nand 429gat (364gat_out,365gat_out,429gat_out);
nand 432gat (366gat_out,367gat_out,432gat_out);
nand 435gat (368gat_out,369gat_out,435gat_out);
nand 438gat (370gat_out,371gat_out,438gat_out);
nand 441gat (372gat_out,373gat_out,441gat_out);
nand 444gat (374gat_out,375gat_out,444gat_out);
nand 447gat (376gat_out,377gat_out,447gat_out);
nand 450gat (378gat_out,379gat_out,450gat_out);
nand 453gat (380gat_out,381gat_out,453gat_out);
nand 456gat (382gat_out,383gat_out,456gat_out);
nand 459gat (384gat_out,385gat_out,459gat_out);
nand 462gat (386gat_out,387gat_out,462gat_out);
nand 465gat (388gat_out,389gat_out,465gat_out);
nand 468gat (390gat_out,391gat_out,468gat_out);
nand 471gat (392gat_out,393gat_out,471gat_out);
nand 474gat (394gat_out,395gat_out,474gat_out);
nand 477gat (396gat_out,397gat_out,477gat_out);
nand 480gat (398gat_out,399gat_out,480gat_out);
nand 483gat (400gat_out,401gat_out,483gat_out);
nand 486gat (402gat_out,403gat_out,486gat_out);
nand 489gat (404gat_out,405gat_out,489gat_out);
nand 492gat (406gat_out,407gat_out,492gat_out);
nand 495gat (408gat_out,409gat_out,495gat_out);
nand 498gat (410gat_out,411gat_out,498gat_out);
nand 501gat (412gat_out,413gat_out,501gat_out);
nand 504gat (414gat_out,415gat_out,504gat_out);
nand 507gat (416gat_out,417gat_out,507gat_out);
nand 510gat (418gat_out,419gat_out,510gat_out);
nand 513gat (420gat_out,421gat_out,513gat_out);
nand 516gat (422gat_out,423gat_out,516gat_out);
nand 519gat (424gat_out,425gat_out,519gat_out);
nand 522gat (426gat_out,429gat_out,522gat_out);
nand 525gat (432gat_out,435gat_out,525gat_out);
nand 528gat (438gat_out,441gat_out,528gat_out);
nand 531gat (444gat_out,447gat_out,531gat_out);
nand 534gat (450gat_out,453gat_out,534gat_out);
nand 537gat (456gat_out,459gat_out,537gat_out);
nand 540gat (462gat_out,465gat_out,540gat_out);
nand 543gat (468gat_out,471gat_out,543gat_out);
nand 546gat (474gat_out,477gat_out,546gat_out);
nand 549gat (480gat_out,483gat_out,549gat_out);
nand 552gat (486gat_out,489gat_out,552gat_out);
nand 555gat (492gat_out,495gat_out,555gat_out);
nand 558gat (498gat_out,501gat_out,558gat_out);
nand 561gat (504gat_out,507gat_out,561gat_out);
nand 564gat (510gat_out,513gat_out,564gat_out);
nand 567gat (516gat_out,519gat_out,567gat_out);
nand 570gat (426gat_out,522gat_out,570gat_out);
nand 571gat (429gat_out,522gat_out,571gat_out);
nand 572gat (432gat_out,525gat_out,572gat_out);
nand 573gat (435gat_out,525gat_out,573gat_out);
nand 574gat (438gat_out,528gat_out,574gat_out);
nand 575gat (441gat_out,528gat_out,575gat_out);
nand 576gat (444gat_out,531gat_out,576gat_out);
nand 577gat (447gat_out,531gat_out,577gat_out);
nand 578gat (450gat_out,534gat_out,578gat_out);
nand 579gat (453gat_out,534gat_out,579gat_out);
nand 580gat (456gat_out,537gat_out,580gat_out);
nand 581gat (459gat_out,537gat_out,581gat_out);
nand 582gat (462gat_out,540gat_out,582gat_out);
nand 583gat (465gat_out,540gat_out,583gat_out);
nand 584gat (468gat_out,543gat_out,584gat_out);
nand 585gat (471gat_out,543gat_out,585gat_out);
nand 586gat (474gat_out,546gat_out,586gat_out);
nand 587gat (477gat_out,546gat_out,587gat_out);
nand 588gat (480gat_out,549gat_out,588gat_out);
nand 589gat (483gat_out,549gat_out,589gat_out);
nand 590gat (486gat_out,552gat_out,590gat_out);
nand 591gat (489gat_out,552gat_out,591gat_out);
nand 592gat (492gat_out,555gat_out,592gat_out);
nand 593gat (495gat_out,555gat_out,593gat_out);
nand 594gat (498gat_out,558gat_out,594gat_out);
nand 595gat (501gat_out,558gat_out,595gat_out);
nand 596gat (504gat_out,561gat_out,596gat_out);
nand 597gat (507gat_out,561gat_out,597gat_out);
nand 598gat (510gat_out,564gat_out,598gat_out);
nand 599gat (513gat_out,564gat_out,599gat_out);
nand 600gat (516gat_out,567gat_out,600gat_out);
nand 601gat (519gat_out,567gat_out,601gat_out);
nand 602gat (570gat_out,571gat_out,602gat_out);
nand 607gat (572gat_out,573gat_out,607gat_out);
nand 612gat (574gat_out,575gat_out,612gat_out);
nand 617gat (576gat_out,577gat_out,617gat_out);
nand 622gat (578gat_out,579gat_out,622gat_out);
nand 627gat (580gat_out,581gat_out,627gat_out);
nand 632gat (582gat_out,583gat_out,632gat_out);
nand 637gat (584gat_out,585gat_out,637gat_out);
nand 642gat (586gat_out,587gat_out,642gat_out);
nand 645gat (588gat_out,589gat_out,645gat_out);
nand 648gat (590gat_out,591gat_out,648gat_out);
nand 651gat (592gat_out,593gat_out,651gat_out);
nand 654gat (594gat_out,595gat_out,654gat_out);
nand 657gat (596gat_out,597gat_out,657gat_out);
nand 660gat (598gat_out,599gat_out,660gat_out);
nand 663gat (600gat_out,601gat_out,663gat_out);
nand 666gat (602gat_out,607gat_out,666gat_out);
nand 669gat (612gat_out,617gat_out,669gat_out);
nand 672gat (602gat_out,612gat_out,672gat_out);
nand 675gat (607gat_out,617gat_out,675gat_out);
nand 678gat (622gat_out,627gat_out,678gat_out);
nand 681gat (632gat_out,637gat_out,681gat_out);
nand 684gat (622gat_out,632gat_out,684gat_out);
nand 687gat (627gat_out,637gat_out,687gat_out);
nand 690gat (602gat_out,666gat_out,690gat_out);
nand 691gat (607gat_out,666gat_out,691gat_out);
nand 692gat (612gat_out,669gat_out,692gat_out);
nand 693gat (617gat_out,669gat_out,693gat_out);
nand 694gat (602gat_out,672gat_out,694gat_out);
nand 695gat (612gat_out,672gat_out,695gat_out);
nand 696gat (607gat_out,675gat_out,696gat_out);
nand 697gat (617gat_out,675gat_out,697gat_out);
nand 698gat (622gat_out,678gat_out,698gat_out);
nand 699gat (627gat_out,678gat_out,699gat_out);
nand 700gat (632gat_out,681gat_out,700gat_out);
nand 701gat (637gat_out,681gat_out,701gat_out);
nand 702gat (622gat_out,684gat_out,702gat_out);
nand 703gat (632gat_out,684gat_out,703gat_out);
nand 704gat (627gat_out,687gat_out,704gat_out);
nand 705gat (637gat_out,687gat_out,705gat_out);
nand 706gat (690gat_out,691gat_out,706gat_out);
nand 709gat (692gat_out,693gat_out,709gat_out);
nand 712gat (694gat_out,695gat_out,712gat_out);
nand 715gat (696gat_out,697gat_out,715gat_out);
nand 718gat (698gat_out,699gat_out,718gat_out);
nand 721gat (700gat_out,701gat_out,721gat_out);
nand 724gat (702gat_out,703gat_out,724gat_out);
nand 727gat (704gat_out,705gat_out,727gat_out);
nand 730gat (242gat_out,718gat_out,730gat_out);
nand 733gat (245gat_out,721gat_out,733gat_out);
nand 736gat (248gat_out,724gat_out,736gat_out);
nand 739gat (251gat_out,727gat_out,739gat_out);
nand 742gat (254gat_out,706gat_out,742gat_out);
nand 745gat (257gat_out,709gat_out,745gat_out);
nand 748gat (260gat_out,712gat_out,748gat_out);
nand 751gat (263gat_out,715gat_out,751gat_out);
nand 754gat (242gat_out,730gat_out,754gat_out);
nand 755gat (718gat_out,730gat_out,755gat_out);
nand 756gat (245gat_out,733gat_out,756gat_out);
nand 757gat (721gat_out,733gat_out,757gat_out);
nand 758gat (248gat_out,736gat_out,758gat_out);
nand 759gat (724gat_out,736gat_out,759gat_out);
nand 760gat (251gat_out,739gat_out,760gat_out);
nand 761gat (727gat_out,739gat_out,761gat_out);
nand 762gat (254gat_out,742gat_out,762gat_out);
nand 763gat (706gat_out,742gat_out,763gat_out);
nand 764gat (257gat_out,745gat_out,764gat_out);
nand 765gat (709gat_out,745gat_out,765gat_out);
nand 766gat (260gat_out,748gat_out,766gat_out);
nand 767gat (712gat_out,748gat_out,767gat_out);
nand 768gat (263gat_out,751gat_out,768gat_out);
nand 769gat (715gat_out,751gat_out,769gat_out);
nand 770gat (754gat_out,755gat_out,770gat_out);
nand 773gat (756gat_out,757gat_out,773gat_out);
nand 776gat (758gat_out,759gat_out,776gat_out);
nand 779gat (760gat_out,761gat_out,779gat_out);
nand 782gat (762gat_out,763gat_out,782gat_out);
nand 785gat (764gat_out,765gat_out,785gat_out);
nand 788gat (766gat_out,767gat_out,788gat_out);
nand 791gat (768gat_out,769gat_out,791gat_out);
nand 794gat (642gat_out,770gat_out,794gat_out);
nand 797gat (645gat_out,773gat_out,797gat_out);
nand 800gat (648gat_out,776gat_out,800gat_out);
nand 803gat (651gat_out,779gat_out,803gat_out);
nand 806gat (654gat_out,782gat_out,806gat_out);
nand 809gat (657gat_out,785gat_out,809gat_out);
nand 812gat (660gat_out,788gat_out,812gat_out);
nand 815gat (663gat_out,791gat_out,815gat_out);
nand 818gat (642gat_out,794gat_out,818gat_out);
nand 819gat (770gat_out,794gat_out,819gat_out);
nand 820gat (645gat_out,797gat_out,820gat_out);
nand 821gat (773gat_out,797gat_out,821gat_out);
nand 822gat (648gat_out,800gat_out,822gat_out);
nand 823gat (776gat_out,800gat_out,823gat_out);
nand 824gat (651gat_out,803gat_out,824gat_out);
nand 825gat (779gat_out,803gat_out,825gat_out);
nand 826gat (654gat_out,806gat_out,826gat_out);
nand 827gat (782gat_out,806gat_out,827gat_out);
nand 828gat (657gat_out,809gat_out,828gat_out);
nand 829gat (785gat_out,809gat_out,829gat_out);
nand 830gat (660gat_out,812gat_out,830gat_out);
nand 831gat (788gat_out,812gat_out,831gat_out);
nand 832gat (663gat_out,815gat_out,832gat_out);
nand 833gat (791gat_out,815gat_out,833gat_out);
nand 834gat (818gat_out,819gat_out,834gat_out);
nand 847gat (820gat_out,821gat_out,847gat_out);
nand 860gat (822gat_out,823gat_out,860gat_out);
nand 873gat (824gat_out,825gat_out,873gat_out);
nand 886gat (828gat_out,829gat_out,886gat_out);
nand 899gat (832gat_out,833gat_out,899gat_out);
nand 912gat (830gat_out,831gat_out,912gat_out);
nand 925gat (826gat_out,827gat_out,925gat_out);
not 938gat (834gat_out,938gat_out);
not 939gat (847gat_out,939gat_out);
not 940gat (860gat_out,940gat_out);
not 941gat (834gat_out,941gat_out);
not 942gat (847gat_out,942gat_out);
not 943gat (873gat_out,943gat_out);
not 944gat (834gat_out,944gat_out);
not 945gat (860gat_out,945gat_out);
not 946gat (873gat_out,946gat_out);
not 947gat (847gat_out,947gat_out);
not 948gat (860gat_out,948gat_out);
not 949gat (873gat_out,949gat_out);
not 950gat (886gat_out,950gat_out);
not 951gat (899gat_out,951gat_out);
not 952gat (886gat_out,952gat_out);
not 953gat (912gat_out,953gat_out);
not 954gat (925gat_out,954gat_out);
not 955gat (899gat_out,955gat_out);
not 956gat (925gat_out,956gat_out);
not 957gat (912gat_out,957gat_out);
not 958gat (925gat_out,958gat_out);
not 959gat (886gat_out,959gat_out);
not 960gat (912gat_out,960gat_out);
not 961gat (925gat_out,961gat_out);
not 962gat (886gat_out,962gat_out);
not 963gat (899gat_out,963gat_out);
not 964gat (925gat_out,964gat_out);
not 965gat (912gat_out,965gat_out);
not 966gat (899gat_out,966gat_out);
not 967gat (886gat_out,967gat_out);
not 968gat (912gat_out,968gat_out);
not 969gat (899gat_out,969gat_out);
not 970gat (847gat_out,970gat_out);
not 971gat (873gat_out,971gat_out);
not 972gat (847gat_out,972gat_out);
not 973gat (860gat_out,973gat_out);
not 974gat (834gat_out,974gat_out);
not 975gat (873gat_out,975gat_out);
not 976gat (834gat_out,976gat_out);
not 977gat (860gat_out,977gat_out);
and 978gat (938gat_out,939gat_out,940gat_out,873gat_out,978gat_out);
and 979gat (941gat_out,942gat_out,860gat_out,943gat_out,979gat_out);
and 980gat (944gat_out,847gat_out,945gat_out,946gat_out,980gat_out);
and 981gat (834gat_out,947gat_out,948gat_out,949gat_out,981gat_out);
and 982gat (958gat_out,959gat_out,960gat_out,899gat_out,982gat_out);
and 983gat (961gat_out,962gat_out,912gat_out,963gat_out,983gat_out);
and 984gat (964gat_out,886gat_out,965gat_out,966gat_out,984gat_out);
and 985gat (925gat_out,967gat_out,968gat_out,969gat_out,985gat_out);
or 986gat (978gat_out,979gat_out,980gat_out,981gat_out,986gat_out);
or 991gat (982gat_out,983gat_out,984gat_out,985gat_out,991gat_out);
and 996gat (925gat_out,950gat_out,912gat_out,951gat_out,986gat_out,996gat_out);
and 1001gat (925gat_out,952gat_out,953gat_out,899gat_out,986gat_out,1001gat_out);
and 1006gat (954gat_out,886gat_out,912gat_out,955gat_out,986gat_out,1006gat_out);
and 1011gat (956gat_out,886gat_out,957gat_out,899gat_out,986gat_out,1011gat_out);
and 1016gat (834gat_out,970gat_out,860gat_out,971gat_out,991gat_out,1016gat_out);
and 1021gat (834gat_out,972gat_out,973gat_out,873gat_out,991gat_out,1021gat_out);
and 1026gat (974gat_out,847gat_out,860gat_out,975gat_out,991gat_out,1026gat_out);
and 1031gat (976gat_out,847gat_out,977gat_out,873gat_out,991gat_out,1031gat_out);
and 1036gat (834gat_out,996gat_out,1036gat_out);
and 1039gat (847gat_out,996gat_out,1039gat_out);
and 1042gat (860gat_out,996gat_out,1042gat_out);
and 1045gat (873gat_out,996gat_out,1045gat_out);
and 1048gat (834gat_out,1001gat_out,1048gat_out);
and 1051gat (847gat_out,1001gat_out,1051gat_out);
and 1054gat (860gat_out,1001gat_out,1054gat_out);
and 1057gat (873gat_out,1001gat_out,1057gat_out);
and 1060gat (834gat_out,1006gat_out,1060gat_out);
and 1063gat (847gat_out,1006gat_out,1063gat_out);
and 1066gat (860gat_out,1006gat_out,1066gat_out);
and 1069gat (873gat_out,1006gat_out,1069gat_out);
and 1072gat (834gat_out,1011gat_out,1072gat_out);
and 1075gat (847gat_out,1011gat_out,1075gat_out);
and 1078gat (860gat_out,1011gat_out,1078gat_out);
and 1081gat (873gat_out,1011gat_out,1081gat_out);
and 1084gat (925gat_out,1016gat_out,1084gat_out);
and 1087gat (886gat_out,1016gat_out,1087gat_out);
and 1090gat (912gat_out,1016gat_out,1090gat_out);
and 1093gat (899gat_out,1016gat_out,1093gat_out);
and 1096gat (925gat_out,1021gat_out,1096gat_out);
and 1099gat (886gat_out,1021gat_out,1099gat_out);
and 1102gat (912gat_out,1021gat_out,1102gat_out);
and 1105gat (899gat_out,1021gat_out,1105gat_out);
and 1108gat (925gat_out,1026gat_out,1108gat_out);
and 1111gat (886gat_out,1026gat_out,1111gat_out);
and 1114gat (912gat_out,1026gat_out,1114gat_out);
and 1117gat (899gat_out,1026gat_out,1117gat_out);
and 1120gat (925gat_out,1031gat_out,1120gat_out);
and 1123gat (886gat_out,1031gat_out,1123gat_out);
and 1126gat (912gat_out,1031gat_out,1126gat_out);
and 1129gat (899gat_out,1031gat_out,1129gat_out);
nand 1132gat (1gat,1036gat_out,1132gat_out);
nand 1135gat (8gat,1039gat_out,1135gat_out);
nand 1138gat (15gat,1042gat_out,1138gat_out);
nand 1141gat (22gat,1045gat_out,1141gat_out);
nand 1144gat (29gat,1048gat_out,1144gat_out);
nand 1147gat (36gat,1051gat_out,1147gat_out);
nand 1150gat (43gat,1054gat_out,1150gat_out);
nand 1153gat (50gat,1057gat_out,1153gat_out);
nand 1156gat (57gat,1060gat_out,1156gat_out);
nand 1159gat (64gat,1063gat_out,1159gat_out);
nand 1162gat (71gat,1066gat_out,1162gat_out);
nand 1165gat (78gat,1069gat_out,1165gat_out);
nand 1168gat (85gat,1072gat_out,1168gat_out);
nand 1171gat (92gat,1075gat_out,1171gat_out);
nand 1174gat (99gat,1078gat_out,1174gat_out);
nand 1177gat (106gat,1081gat_out,1177gat_out);
nand 1180gat (113gat,1084gat_out,1180gat_out);
nand 1183gat (120gat,1087gat_out,1183gat_out);
nand 1186gat (127gat,1090gat_out,1186gat_out);
nand 1189gat (134gat,1093gat_out,1189gat_out);
nand 1192gat (141gat,1096gat_out,1192gat_out);
nand 1195gat (148gat,1099gat_out,1195gat_out);
nand 1198gat (155gat,1102gat_out,1198gat_out);
nand 1201gat (162gat,1105gat_out,1201gat_out);
nand 1204gat (169gat,1108gat_out,1204gat_out);
nand 1207gat (176gat,1111gat_out,1207gat_out);
nand 1210gat (183gat,1114gat_out,1210gat_out);
nand 1213gat (190gat,1117gat_out,1213gat_out);
nand 1216gat (197gat,1120gat_out,1216gat_out);
nand 1219gat (204gat,1123gat_out,1219gat_out);
nand 1222gat (211gat,1126gat_out,1222gat_out);
nand 1225gat (218gat,1129gat_out,1225gat_out);
nand 1228gat (1gat,1132gat_out,1228gat_out);
nand 1229gat (1036gat_out,1132gat_out,1229gat_out);
nand 1230gat (8gat,1135gat_out,1230gat_out);
nand 1231gat (1039gat_out,1135gat_out,1231gat_out);
nand 1232gat (15gat,1138gat_out,1232gat_out);
nand 1233gat (1042gat_out,1138gat_out,1233gat_out);
nand 1234gat (22gat,1141gat_out,1234gat_out);
nand 1235gat (1045gat_out,1141gat_out,1235gat_out);
nand 1236gat (29gat,1144gat_out,1236gat_out);
nand 1237gat (1048gat_out,1144gat_out,1237gat_out);
nand 1238gat (36gat,1147gat_out,1238gat_out);
nand 1239gat (1051gat_out,1147gat_out,1239gat_out);
nand 1240gat (43gat,1150gat_out,1240gat_out);
nand 1241gat (1054gat_out,1150gat_out,1241gat_out);
nand 1242gat (50gat,1153gat_out,1242gat_out);
nand 1243gat (1057gat_out,1153gat_out,1243gat_out);
nand 1244gat (57gat,1156gat_out,1244gat_out);
nand 1245gat (1060gat_out,1156gat_out,1245gat_out);
nand 1246gat (64gat,1159gat_out,1246gat_out);
nand 1247gat (1063gat_out,1159gat_out,1247gat_out);
nand 1248gat (71gat,1162gat_out,1248gat_out);
nand 1249gat (1066gat_out,1162gat_out,1249gat_out);
nand 1250gat (78gat,1165gat_out,1250gat_out);
nand 1251gat (1069gat_out,1165gat_out,1251gat_out);
nand 1252gat (85gat,1168gat_out,1252gat_out);
nand 1253gat (1072gat_out,1168gat_out,1253gat_out);
nand 1254gat (92gat,1171gat_out,1254gat_out);
nand 1255gat (1075gat_out,1171gat_out,1255gat_out);
nand 1256gat (99gat,1174gat_out,1256gat_out);
nand 1257gat (1078gat_out,1174gat_out,1257gat_out);
nand 1258gat (106gat,1177gat_out,1258gat_out);
nand 1259gat (1081gat_out,1177gat_out,1259gat_out);
nand 1260gat (113gat,1180gat_out,1260gat_out);
nand 1261gat (1084gat_out,1180gat_out,1261gat_out);
nand 1262gat (120gat,1183gat_out,1262gat_out);
nand 1263gat (1087gat_out,1183gat_out,1263gat_out);
nand 1264gat (127gat,1186gat_out,1264gat_out);
nand 1265gat (1090gat_out,1186gat_out,1265gat_out);
nand 1266gat (134gat,1189gat_out,1266gat_out);
nand 1267gat (1093gat_out,1189gat_out,1267gat_out);
nand 1268gat (141gat,1192gat_out,1268gat_out);
nand 1269gat (1096gat_out,1192gat_out,1269gat_out);
nand 1270gat (148gat,1195gat_out,1270gat_out);
nand 1271gat (1099gat_out,1195gat_out,1271gat_out);
nand 1272gat (155gat,1198gat_out,1272gat_out);
nand 1273gat (1102gat_out,1198gat_out,1273gat_out);
nand 1274gat (162gat,1201gat_out,1274gat_out);
nand 1275gat (1105gat_out,1201gat_out,1275gat_out);
nand 1276gat (169gat,1204gat_out,1276gat_out);
nand 1277gat (1108gat_out,1204gat_out,1277gat_out);
nand 1278gat (176gat,1207gat_out,1278gat_out);
nand 1279gat (1111gat_out,1207gat_out,1279gat_out);
nand 1280gat (183gat,1210gat_out,1280gat_out);
nand 1281gat (1114gat_out,1210gat_out,1281gat_out);
nand 1282gat (190gat,1213gat_out,1282gat_out);
nand 1283gat (1117gat_out,1213gat_out,1283gat_out);
nand 1284gat (197gat,1216gat_out,1284gat_out);
nand 1285gat (1120gat_out,1216gat_out,1285gat_out);
nand 1286gat (204gat,1219gat_out,1286gat_out);
nand 1287gat (1123gat_out,1219gat_out,1287gat_out);
nand 1288gat (211gat,1222gat_out,1288gat_out);
nand 1289gat (1126gat_out,1222gat_out,1289gat_out);
nand 1290gat (218gat,1225gat_out,1290gat_out);
nand 1291gat (1129gat_out,1225gat_out,1291gat_out);
nand 1292gat (1228gat_out,1229gat_out,1292gat_out);
nand 1293gat (1230gat_out,1231gat_out,1293gat_out);
nand 1294gat (1232gat_out,1233gat_out,1294gat_out);
nand 1295gat (1234gat_out,1235gat_out,1295gat_out);
nand 1296gat (1236gat_out,1237gat_out,1296gat_out);
nand 1297gat (1238gat_out,1239gat_out,1297gat_out);
nand 1298gat (1240gat_out,1241gat_out,1298gat_out);
nand 1299gat (1242gat_out,1243gat_out,1299gat_out);
nand 1300gat (1244gat_out,1245gat_out,1300gat_out);
nand 1301gat (1246gat_out,1247gat_out,1301gat_out);
nand 1302gat (1248gat_out,1249gat_out,1302gat_out);
nand 1303gat (1250gat_out,1251gat_out,1303gat_out);
nand 1304gat (1252gat_out,1253gat_out,1304gat_out);
nand 1305gat (1254gat_out,1255gat_out,1305gat_out);
nand 1306gat (1256gat_out,1257gat_out,1306gat_out);
nand 1307gat (1258gat_out,1259gat_out,1307gat_out);
nand 1308gat (1260gat_out,1261gat_out,1308gat_out);
nand 1309gat (1262gat_out,1263gat_out,1309gat_out);
nand 1310gat (1264gat_out,1265gat_out,1310gat_out);
nand 1311gat (1266gat_out,1267gat_out,1311gat_out);
nand 1312gat (1268gat_out,1269gat_out,1312gat_out);
nand 1313gat (1270gat_out,1271gat_out,1313gat_out);
nand 1314gat (1272gat_out,1273gat_out,1314gat_out);
nand 1315gat (1274gat_out,1275gat_out,1315gat_out);
nand 1316gat (1276gat_out,1277gat_out,1316gat_out);
nand 1317gat (1278gat_out,1279gat_out,1317gat_out);
nand 1318gat (1280gat_out,1281gat_out,1318gat_out);
nand 1319gat (1282gat_out,1283gat_out,1319gat_out);
nand 1320gat (1284gat_out,1285gat_out,1320gat_out);
nand 1321gat (1286gat_out,1287gat_out,1321gat_out);
nand 1322gat (1288gat_out,1289gat_out,1322gat_out);
nand 1323gat (1290gat_out,1291gat_out,1323gat_out);
buff 1324gat (1292gat_out,1324gat_out);
buff 1325gat (1293gat_out,1325gat_out);
buff 1326gat (1294gat_out,1326gat_out);
buff 1327gat (1295gat_out,1327gat_out);
buff 1328gat (1296gat_out,1328gat_out);
buff 1329gat (1297gat_out,1329gat_out);
buff 1330gat (1298gat_out,1330gat_out);
buff 1331gat (1299gat_out,1331gat_out);
buff 1332gat (1300gat_out,1332gat_out);
buff 1333gat (1301gat_out,1333gat_out);
buff 1334gat (1302gat_out,1334gat_out);
buff 1335gat (1303gat_out,1335gat_out);
buff 1336gat (1304gat_out,1336gat_out);
buff 1337gat (1305gat_out,1337gat_out);
buff 1338gat (1306gat_out,1338gat_out);
buff 1339gat (1307gat_out,1339gat_out);
buff 1340gat (1308gat_out,1340gat_out);
buff 1341gat (1309gat_out,1341gat_out);
buff 1342gat (1310gat_out,1342gat_out);
buff 1343gat (1311gat_out,1343gat_out);
buff 1344gat (1312gat_out,1344gat_out);
buff 1345gat (1313gat_out,1345gat_out);
buff 1346gat (1314gat_out,1346gat_out);
buff 1347gat (1315gat_out,1347gat_out);
buff 1348gat (1316gat_out,1348gat_out);
buff 1349gat (1317gat_out,1349gat_out);
buff 1350gat (1318gat_out,1350gat_out);
buff 1351gat (1319gat_out,1351gat_out);
buff 1352gat (1320gat_out,1352gat_out);
buff 1353gat (1321gat_out,1353gat_out);
buff 1354gat (1322gat_out,1354gat_out);
buff 1355gat (1323gat_out,1355gat_out);

endmodule

