size_pend = 30;
width = 203+102;
face = 203;
depth = 100;
arch = 100;

tx = -10;
ty = 300;
tz = 0;


// Define the pendulum

Point(3) = {tx+0,ty+0,tz+0,size_pend};
Point(4) = {tx-4.80346,ty+0,tz+54.9038,size_pend};
Point(5) = {tx-7.79204,ty+0,tz+54.6423,size_pend};
Point(6) = {tx-7.0156,ty+0,tz+57.5401,size_pend};
Point(7) = {tx-76,ty+0,tz+76.0244,size_pend};
Point(8) = {tx-76,ty+0,tz+400,2*size_pend};

Point(9) = {tx-4.80346,ty+0,tz-54.9038,size_pend};
Point(10) = {tx-7.79204,ty+0,tz-54.6423,size_pend};
Point(11) = {tx-7.0156,ty+0,tz-57.5401,size_pend};
Point(12) = {tx-76,ty+0,tz-76.0244,size_pend};
Point(13) = {tx-76,ty+0,tz-200,2*size_pend};

Line(2) = {3,4};
Circle(3) = {4,5,6};
Line(4) = {6,7};
Line(5) = {7,8};

Line(6) = {9,3};
Circle(7) = {11,10,9};
Line(8) = {12,11};
Line(9) = {13,12};

Point(103) = {tx-102,ty+width,tz+0,size_pend};
Point(104) =
{tx-102,ty+width-4.80346,tz+54.9038,size_pend};
Point(105) =
{tx-102,ty+width-7.79204,tz+54.6423,size_pend};
Point(106) =
{tx-102,ty+width-7.0156,tz+57.5401,size_pend};
Point(107) =
{tx-102,ty+width-76,tz+76.0244,size_pend};
Point(108) = {tx-102,ty+width-76,tz+400,2*size_pend};

Point(109) =
{tx-102,ty+width-4.80346,tz-54.9038,size_pend};
Point(110) =
{tx-102,ty+width-7.79204,tz-54.6423,size_pend};
Point(111) =
{tx-102,ty+width-7.0156,tz-57.5401,size_pend};
Point(112) =
{tx-102,ty+width-76,tz-76.0244,size_pend};
Point(113) = {tx-102,ty+width-76,tz-200,2*size_pend};

Line(102) = {103,104};
Circle(103) = {104,105,106};
Line(104) = {106,107};
Line(105) = {107,108};

Line(106) = {109,103};
Circle(107) = {111,110,109};
Line(108) = {112,111};
Line(109) = {113,112};


Point(203) = {tx-102,ty-width,tz+0,size_pend};
Point(204) =
{tx-102,ty-width+4.80346,tz+54.9038,size_pend};
Point(205) =
{tx-102,ty-width+7.79204,tz+54.6423,size_pend};
Point(206) =
{tx-102,ty-width+7.0156,tz+57.5401,size_pend};
Point(207) =
{tx-102,ty-width+76,tz+76.0244,size_pend};
Point(208) = {tx-102,ty-width+76,tz+400,2*size_pend};

Point(209) =
{tx-102,ty-width+4.80346,tz-54.9038,size_pend};
Point(210) =
{tx-102,ty-width+7.79204,tz-54.6423,size_pend};
Point(211) =
{tx-102,ty-width+7.0156,tz-57.5401,size_pend};
Point(212) =
{tx-102,ty-width+76,tz-76.0244,size_pend};
Point(213) = {tx-102,ty-width+76,tz-200,2*size_pend};

Line(202) = {203,204};
Circle(203) = {204,205,206};
Line(204) = {206,207};
Line(205) = {207,208};

Line(206) = {209,203};
Circle(207) = {211,210,209};
Line(208) = {212,211};
Line(209) = {213,212};

// Define the bumperbeam

size_beam = 10;
btx = 0;
bty = 0;
btz = 0;
fface = 60;
rface = 50;
bdepth = 60;
frac = 0.4;
cx = 4000;
angle = Pi/16;
barch = cx*angle;



Point(301) = {btx+0,bty+0,btz-fface,size_beam};
Point(302) = {btx+0,bty+0,btz+fface,size_beam};
Point(303) = {btx+bdepth,bty+0,btz+rface,size_beam};
Point(304) = {btx+bdepth,bty+0,btz-rface,size_beam};
Point(305) = {btx+0,bty+0,btz-frac*fface,size_beam};
Point(306) = {btx+0,bty+0,btz+frac*fface,size_beam};

Line(301) = {301,305};
Line(302) = {305,306};
Line(303) = {306,302};
Line(304) = {302,303};
Line(305) = {303,304};
Line(306) = {304,301};
Line(307) = {303,306};
Line(308) = {304,305};

// Now begin creating the model

For i In {2:9}
  Extrude {0,face,0} {
    Line {i};
    Layers {face/size_pend};
    Recombine;
  }
  Extrude {0,-face,0} {
    Line {i};
    Layers {face/size_pend};
    Recombine;
  }
EndFor

For i In {102:109}
  Extrude {{0,0,1}, {-102+tx,203+ty,0+tz}, -Pi/2} {
    Line {i};
    Layers {arch/size_pend};
    Recombine;
  }
  Extrude {-depth,0,0} {
    Line {i};
    Layers {depth/size_pend};
    Recombine;
  }
EndFor

For i In {202:209}
  Extrude {{0,0,1}, {-102+tx,-203+ty,0+tz}, Pi/2} {
    Line {i};
    Layers {arch/size_pend};
    Recombine;
  }
  Extrude {-depth,0,0} {
    Line {i};
    Layers {depth/size_pend};
    Recombine;
  }
EndFor

// Build beam

For i In {301:308}
  Extrude {{0,0,1}, {cx+btx,bty,btz}, angle} {
    Line {i};
    Layers {barch/size_beam};
    Recombine;
  }
  Extrude {{0,0,1}, {cx+btx,bty,btz}, -angle} {
    Line {i};
    Layers {barch/size_beam};
    Recombine;
  }
EndFor
