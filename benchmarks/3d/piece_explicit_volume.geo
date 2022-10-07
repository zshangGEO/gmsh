
r1 = .1;
l1 = 1.;
l2 = .8;
l3 = .1;
r2 = 1.1;
lc = .1;
lc2 = .05;
rint = .2;
rext = .3;

Point(1) = {0.0,0.0,0.0,lc};
Point(2) = {l1,0.0,0.0,lc2};
Point(3) = {l1-r1,0.0,0.0,lc2};
Point(4) = {l1,r1,0.0,lc2};
Point(5) = {l1,-r1,0.0,lc2};
Point(6) = {l1+l2,r1,0.0,lc};
Point(7) = {l1+l2,-r1,0.0,lc};
Point(8) = {l1+l2,-r1-l3,0.0,lc};
Point(9) = {l1+l2,r1+l3,0.0,lc};

Line(1) = {4,6};
Line(2) = {6,9};
Line(3) = {7,8};
Line(4) = {5,7};
Circle(5) = {4,2,3};
Circle(6) = {3,2,5};

r = 2*3.14159/5;
Point(10) = { (l1 + r2) * Cos(r/2) , (l1 + r2) * Sin(r/2), 0.0, lc};

// Remember, all rotations are specified by the axis direction
// ({0,0,1}), an axis point ({0,0,0}) and a rotation angle (r)

i = 0 ;

For(1:4)

  i+=1 ;

  Rotate {{0.0,0.0,1.0},{0.0,0.0,0.0}, i*r} {
    Duplicata {
      Line{1}; Line{2}; Line{3};
      Line{4}; Line{5}; Line{6};
      Point{10};
    }
  }

EndFor

Point(newp) = {rint,0,0,lc};
Point(newp) = {rext,0,0,lc};
Point(newp) = {-rint,0,0,lc};
Point(newp) = {-rext,0,0,lc};
Point(newp) = {0,rint,0,lc};
Point(newp) = {0,rext,0,lc};
Point(newp) = {0,-rint,0,lc};
Point(newp) = {0,-rext,0,lc};

Circle(31) = {8,118,97};
Circle(32) = {20,10,9};
Circle(33) = {47,37,16};
Circle(34) = {74,64,43};
Circle(35) = {101,91,70};
Circle(36) = {119,1,123};
Circle(37) = {123,1,121};
Circle(38) = {121,1,125};
Circle(39) = {125,1,119};
Circle(40) = {124,1,122};
Circle(41) = {122,1,126};
Circle(42) = {126,1,120};
Circle(43) = {120,1,124};

Line Loop(44) = {37,38,39,36};
Line Loop(46) = {40,41,42,43};
Plane Surface(47) = {46,44};

Line Loop(48) = -{-2,-1,5,6,4,3,31,-26,-25,29,30,28,27,35,-20,-19,
  23,24,22,21,34,-14,-13,17,18,16,15,33,-8,-7,11,12,10,9,32};
Plane Surface(49) = {48,46};

Extrude {0,0,0.2}{ Surface {47}; }
Extrude {0,0,0.2}{ Surface {49}; }
Extrude {0,0,0.2}{ Surface {91}; }
Extrude {0,0,-0.2}{ Surface {47}; }

Delete { Volume{1:4}; }

Surface Loop(373) = {288,135,49,139,143,147,151,155,159,163,167,171,175,179,183,187,191,195,199,203,207,211,215,219,223,227,231,235,239,243,247,251,255,259,263,267,271,313,301,305,309,330,317,321,325,329,351,355,343,347,372,359,363,367,371,86,90,78,82};
Volume(374) = {373};
