l = 1;
r1 = 0.5;
n = 10;
Point(1) = {0,0,0,l};
Point(2) = {r1,r1,-r1,l};
Point(3) = {-r1,r1,-r1,l};
Point(4) = {-r1,-r1,-r1,l};
Point(5) = {r1,-r1,-r1,l};
Line(1) = {2,3};
Line(2) = {3,4};
Line(3) = {4,5};
Line(4) = {5,2};
Transfinite Line{1:4} = n;
Line Loop(5) = {4,1,2,3};
Plane Surface(6) = {5};
Transfinite Surface{6} = {2,3,4,5} Alternate;
Extrude {0.0,0.0,r1/10} { Surface {6}; Layers{1,1};  }
