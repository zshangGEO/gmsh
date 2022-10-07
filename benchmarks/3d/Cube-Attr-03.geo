lc = 0.1;
Point(1) = {0.0,0.0,0.0,lc};
Point(2) = {1,0.0,0.0,lc};
Point(3) = {1,1,0.0,lc};
Point(4) = {0,1,0.0,lc};
Line(1) = {4,3};
Line(2) = {3,2};
Line(3) = {2,1};
Line(4) = {1,4};
Line Loop(5) = {2,3,4,1};
Plane Surface(6) = {5};
Extrude {0,0.0,1}{ Surface {6}; }

Field[1] = Box;
Field[1].VIn = 0.01;
Field[1].VOut = 0.1;
Field[1].XMax = 0.3;
Field[1].YMax = 0.3;
Field[1].ZMax = 0.3;
Background Field = 1;
