
lc = 0.5;
Point(1) = {0, 0, 0, lc};
Point(2) = {1, 0,  0, lc} ;
Point(3) = {1, 1, 0, lc} ;
Point(4) = {0, 1, 0, lc} ;
Line(1) = {1,2} ;
Line(2) = {3,2} ;
Line(3) = {3,4} ;
Line(4) = {4,1} ;
Line Loop(5) = {4,1,-2,3} ;
Plane Surface(6) = {5} ;
Extrude {0,0,1} { Surface{6}; }

Field[1] = MathEval;
Field[1].F = "Cos(2*3.14*x)/5 + 0.21";
Background Field = 1;
