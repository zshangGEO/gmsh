lc = 0.01;
dext = .05;
dint = .055;

Point(1) = {0,0,0,lc};  
Point(2) = {dint,0,0,lc};
Point(3) = {0,dint,0,lc};
Point(4) = {0,0,dint,lc};
Point(5) = {dext,0,0,lc};
Point(6) = {0,dext,0,lc};
Point(7) = {0,0,dext,lc};

Circle(1) = {7,1,5};
Circle(2) = {4,1,2};
Circle(3) = {5,1,6};
Circle(4) = {2,1,3};
Circle(5) = {7,1,6};
Circle(6) = {4,1,3};
//Line(7) = {1,5};
Line(8) = {5,2};
//Line(9) = {1,6};
Line(10) = {6,3};
//Line(11) = {1,7};
Line(12) = {7,4};

Line Loop(17) = {2,-8,-1,12};
Plane Surface(18) = {17};
Line Loop(19) = {-4,-8,3,10};
Plane Surface(20) = {19};
Line Loop(21) = {-6,-12,5,10};
Plane Surface(22) = {21};

Line Loop(23) = {-6,2,4};
Surface(24) = {23};
Line Loop(25) = {-5,1,3};
Surface(26) = {25};

Surface Loop(27) = {24,-22,-18,20,-26};
Volume(28) = {27};

Transfinite Line {1,2,3,4,5,6} = 10 ;
Transfinite Line {-8,-10,-12} = 5 Using Power 1.6 ;

Transfinite Surface {22} = {4,7,6,3} Right;
Transfinite Surface {20} = {3,2,5,6};
Transfinite Surface {18} = {4,2,5,7};

Transfinite Surface {24} = {3,4,2};
Transfinite Surface {26} = {6,7,5};

Recombine Surface {18,20,22};
//Recombine Surface {24,26};

Transfinite Volume {28} = {3,4,2,6,7,5};
