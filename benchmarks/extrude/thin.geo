Point(1) = {16.0,0.0,0.0,1.0};
Point(2) = {-16.0,0.0,0.0,1.0};
Point(3) = {0.0,4.0,0.0,1.0};
Point(4) = {0.0,-4.0,0.0,1.0};
Point(5) = {0.0,0.0,0.0,1.0};
Ellipse(1) = {2,5,1,3};
Ellipse(2) = {1,5,2,3};
Ellipse(3) = {1,5,2,4};
Ellipse(4) = {2,5,1,4};
Line Loop(5) = {-2,1,-4,3};
Plane Surface(6) = {5};
Extrude {0.0,0.0,0.008}{ Surface {6}; Layers{1,1};}