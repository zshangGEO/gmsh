Point(1) = {0.0,0.0,0.0,.08};
Point(2) = {-.5,0.0,0.0,.08};
Point(3) = {.5,0.0,0.0,.08};
Point(4) = {.5,-.5,0.0,.08};
Point(5) = {-.5,-.5,0.0,.08};
Circle(1) = {3,1,2} Plane {0,0,1};
Line(2) = {3,4};
Line(3) = {4,5};
Line(4) = {5,2};
Line Loop(5) = {3,4,-1,2};
Plane Surface(6) = {5};
Extrude {0,0,.5}{ Surface {6}; }
Coherence;
