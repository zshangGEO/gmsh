lc = .1;
Point(1) = {0.0,0.0,0,lc};
Point(2) = {1,0.0,0,lc};
Point(3) = {1,1,0,lc};
Point(4) = {0,1,0,lc};
Line(1) = {3,2};
Line(2) = {2,1};
Line(3) = {1,4};
Line(4) = {4,3};
Point(55) = {0.2,.5,0,lc};
Line Loop(5) = {1,2,3,4};
Plane Surface(6) = {5};

Field[1] = Distance;
Field[1].NodesList = {55};
Field[2] = MathEval;
Field[2].F = "(F1+0.025)^2";
Background Field = 2;
