Include "Poutre.geo" ;
//la ligne suivante est � enlever si y'a le include
//Point(0) = {0,0,0,lc} ;




//Creation du maillage coque1


Point(1300) = {-10.475E-3*Sin(0.56*Pi/180),-0.31532+10.475E-3*Cos(0.56*Pi/180),8.916436,lc} ;
Point(1301) = {-10.475E-3*Sin(24*Pi/180),-0.31532+10.475E-3*Cos(24*Pi/180),8.916436,lc} ;
Point(1302) = {-10.475E-3*Sin(90.56*Pi/180),-0.31532+10.475E-3*Cos(90.56*Pi/180),8.916436,lc} ;
Point(1303) = {-10.475E-3*Sin(114*Pi/180),-0.31532+10.475E-3*Cos(114*Pi/180),8.916436,lc} ;
Point(1304) = {-10.475E-3*Sin(180.56*Pi/180),-0.31532+10.475E-3*Cos(180.56*Pi/180),8.916436,lc} ;
Point(1305) = {-10.475E-3*Sin(204*Pi/180),-0.31532+10.475E-3*Cos(204*Pi/180),8.916436,lc} ;
Point(1306) = {-10.475E-3*Sin(270.56*Pi/180),-0.31532+10.475E-3*Cos(270.56*Pi/180),8.916436,lc} ;
Point(1307) = {-10.475E-3*Sin(294*Pi/180),-0.31532+10.475E-3*Cos(294*Pi/180),8.916436,lc} ;


Circle (1308) = {1300,53,1301} ;
Circle (1309) = {1301,53,1302} ;
Circle (1310) = {1302,53,1303} ;
Circle (1311) = {1303,53,1304} ;
Circle (1312) = {1304,53,1305} ;
Circle (1313) = {1305,53,1306} ;
Circle (1314) = {1306,53,1307} ;
Circle (1315) = {1307,53,1300} ;
Transfinite Line {1308,1310,1312,1314} = 8 ;
Transfinite Line {1309,1311,1313,1315} = 16 ;
h = 0.139564 ;
a=8.976-8.916436 ;
b=(9.006-8.976) ;
c = 0.139564 -a-b ;

Extrude {0,0,a}{ Curve {1308}; Recombine;Layers{{3},{1}};}

Extrude {0,0,h}{ Curve {1309}; Recombine;Layers{{3,4,4},{a/h,(a+b)/h,1}};}

Extrude {0,0,a}{ Curve {1310}; Recombine;Layers{{3},{1}};}

Extrude {0,0,h}{ Curve {1311}; Recombine;Layers{{3,4,4},{a/h,(a+b)/h,1}};}

Extrude {0,0,a}{ Curve {1312}; Recombine;Layers{{3},{1}};}

Extrude {0,0,h}{ Curve {1313}; Recombine;Layers{{3,4,4},{a/h,(a+b)/h,1}};}

Extrude {0,0,a}{ Curve {1314}; Recombine;Layers{{3},{1}};}

Extrude {0,0,h}{ Curve {1315}; Recombine;Layers{{3,4,4},{a/h,(a+b)/h,1}};}


Extrude {0,0,b}{ Curve {1316}; Recombine;Layers{{4},{1}};}
Extrude {0,0,b}{ Curve {1324}; Recombine;Layers{{4},{1}};}
Extrude {0,0,b}{ Curve {1332}; Recombine;Layers{{4},{1}};}
Extrude {0,0,b}{ Curve {1340}; Recombine;Layers{{4},{1}};}

Extrude {0,0,c}{ Curve {1348}; Recombine;Layers{{4},{1}};}
Extrude {0,0,c}{ Curve {1352}; Recombine;Layers{{4},{1}};}
Extrude {0,0,c}{ Curve {1356}; Recombine;Layers{{4},{1}};}
Extrude {0,0,c}{ Curve {1360}; Recombine;Layers{{4},{1}};}




//Creation du maillage coque2

Point(1400) = {-10.475E-3*Sin(0.56*Pi/180),0.31532+10.475E-3*Cos(0.56*Pi/180),9.056,lc} ;
Point(1401) = {-10.475E-3*Sin(24*Pi/180),0.31532+10.475E-3*Cos(24*Pi/180),9.056,lc} ;
Point(1402) = {-10.475E-3*Sin(90.56*Pi/180),0.31532+10.475E-3*Cos(90.56*Pi/180),9.056,lc} ;
Point(1403) = {-10.475E-3*Sin(114*Pi/180),0.31532+10.475E-3*Cos(114*Pi/180),9.056,lc} ;
Point(1404) = {-10.475E-3*Sin(180.56*Pi/180),0.31532+10.475E-3*Cos(180.56*Pi/180),9.056,lc} ;
Point(1405) = {-10.475E-3*Sin(204*Pi/180),0.31532+10.475E-3*Cos(204*Pi/180),9.056,lc} ;
Point(1406) = {-10.475E-3*Sin(270.56*Pi/180),0.31532+10.475E-3*Cos(270.56*Pi/180),9.056,lc} ;
Point(1407) = {-10.475E-3*Sin(294*Pi/180),0.31532+10.475E-3*Cos(294*Pi/180),9.056,lc} ;


Circle (1408) = {1400,403,1401} ;
Circle (1409) = {1401,403,1402} ;
Circle (1410) = {1402,403,1403} ;
Circle (1411) = {1403,403,1404} ;
Circle (1412) = {1404,403,1405} ;
Circle (1413) = {1405,403,1406} ;
Circle (1414) = {1406,403,1407} ;
Circle (1415) = {1407,403,1400} ;
Transfinite Line {1408,1410,1412,1414} = 8 ;
Transfinite Line {1409,1411,1413,1415} = 16 ;

h = 0.139564 ;
a=9.006-9.056 ;
b=(8.976-9.006) ;
c = -0.139564 -a-b ;

Extrude {0,0,a} {Curve {1408}; Recombine;Layers{{3},{1}};}

Extrude {0,0,-h}{Curve {1409}; Recombine;Layers{{3,4,4},{-a/h,-(a+b)/h,1}};}

Extrude {0,0,a} {Curve {1410}; Recombine;Layers{{3},{1}};}

Extrude {0,0,-h}{Curve {1411}; Recombine;Layers{{3,4,4},{-a/h,-(a+b)/h,1}};}

Extrude {0,0,a} {Curve {1412}; Recombine;Layers{{3},{1}};}

Extrude {0,0,-h}{Curve {1413}; Recombine;Layers{{3,4,4},{-a/h,-(a+b)/h,1}};}

Extrude {0,0,a} {Curve {1414}; Recombine;Layers{{3},{1}};}

Extrude {0,0,-h}{Curve {1415}; Recombine;Layers{{3,4,4},{-a/h,-(a+b)/h,1}};}


Extrude {0,0,b} {Curve {1416}; Recombine;Layers{{4},{1}};}
Extrude {0,0,b} {Curve {1424}; Recombine;Layers{{4},{1}};}
Extrude {0,0,b} {Curve {1432}; Recombine;Layers{{4},{1}};}
Extrude {0,0,b} {Curve {1440}; Recombine;Layers{{4},{1}};}

Extrude {0,0,c} {Curve {1448}; Recombine;Layers{{4},{1}};}
Extrude {0,0,c} {Curve {1452}; Recombine;Layers{{4},{1}};}
Extrude {0,0,c} {Curve {1456}; Recombine;Layers{{4},{1}};}
Extrude {0,0,c} {Curve {1460}; Recombine;Layers{{4},{1}};}




//D�finition des Physical coque1

//d�finition du groupe pour tout le maillage coque (surface 2D)
Physical Surface (1900) = {1319,1323,1327,1331,1335,1339,1343,1347,1351,1355,1359,1363,1367,1371,1375,1379} ;
//d�finition du groupe pour bord inf�rieur de la coque
Physical Line (1901) = {1308:1315} ;
//d�finition du groupe pour bord sup�rieur de la coque
Physical Line( 1902) = {1364,1320,1368,1328,1372,1336,1376,1344} ;
//d�finition surface1 de contact avec PE
Physical Surface (1903) = {1351} ;
//d�finition surface2 de contact avec PE
Physical Surface (1904) = {1355} ;
//d�finition surface3 de contact avec PE
Physical Surface (1905) = {1359} ;
//d�finition surface4 de contact avec PE
Physical Surface (1906) = {1363} ;


//D�finition des Physical coque2

//d�finition du groupe pour tout le maillage coque (surface 2D)
Physical Surface (1907) = {1419,1423,1427,1431,1435,1439,1443,1447,1451,1455,1459,1463,1467,1471,1475,1479} ;
//d�finition du groupe pour bord inf�rieur de la coque
Physical Line (1908) = {1408:1415} ;
//d�finition du groupe pour bord sup�rieur de la coque
Physical Line( 1909) = {1464,1420,1468,1428,1472,1436,1476,1444} ;
//d�finition surface1 de contact avec PE
Physical Surface (1910) = {1451} ;
//d�finition surface2 de contact avec PE
Physical Surface (1911) = {1455} ;
//d�finition surface3 de contact avec PE
Physical Surface (1912) = {1459} ;
//d�finition surface4 de contact avec PE
Physical Surface (1913) = {1463} ;
