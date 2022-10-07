
Point(1) = {0,0,0,10};
Point(2) = {10,10,0,1};
Point(3) = {10,0,0,1};
Point(4) = {0,10,0,1};
Line(1) = {1,4};
Line(2) = {4,2};
Line(3) = {2,3};
Line(4) = {3,1};
Line Loop(5) = {4,1,2,3};
Plane Surface(6) = {5};
Extrude {0,0,1}{ Surface{6}; }
Coherence;

Point(111) = {5,5,-.1,.2};
Point(15) = {4,4,-.1,.2};
Point(16) = {4,6,-.1,.2};
Point(17) = {6,4,-.1,.2};
Point(18) = {6,6,-.1,.2};
Circle(29) = {15,111,16};
Circle(30) = {16,111,18};
Circle(31) = {18,111,17};
Circle(32) = {17,111,15};
Line Loop(33) = {30,31,32,29};
Plane Surface(34) = {33};
Extrude {0,0,-1} { Surface {34}; }
Coherence;
