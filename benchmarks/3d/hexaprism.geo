Point(1) = {0.0,0.0,0.0,1.0};
Point(2) = {1,0.0,0.0,1.0};
Point(3) = {1,1,0.0,1.0};
Point(4) = {0,1,0.0,1.0};
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};
Line Loop(5) = {2,3,4,1};
Plane Surface(6) = {5};
Transfinite Surface{6} = {1,2,3,4};
Recombine Surface{6};
Extrude {0.0,0.0,1.0}{ Surface {6}; Layers{1};Recombine;}
Point(15) = {2,0.0,0.0,1.0};
Line(29) = {15,2};
Line(30) = {3,15};
Line Loop(31) = {30,29,2};
Plane Surface(32) = {31};
Extrude {0.0,0.0,1.0}{ Surface {32}; Layers{1};Recombine; }
