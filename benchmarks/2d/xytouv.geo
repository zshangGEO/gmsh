lc = 0.3;
Point(1)={0,0,0,lc};
Point(2)={1,0,0,lc};
Point(3)={0,1,0,lc};
Circle(1) = {2,1,3};
Extrude { {0,1,0}, {-5,0,0}, -Pi/2} { Line {1}; }
