lc = .1;
Point(1) = {0,0,0,lc};
Point(2) = {1,0,0,lc/200};
Point(3) = {1,1,0,lc};
Point(4) = {0,1,0,lc};
Line(1) = {3,2};
Line(2) = {2,1};
Line(3) = {1,4};
Line(4) = {4,3};
Line Loop(5) = {1,2,3,4};
Plane Surface(6) = {5};
Point(11) = {0.1, 0.1, 0, lc};
Point(22) = {0.9, 0.9 ,0, lc};
Line(5) = {11,22};

Field[1] = Distance;
Field[1].CurvesList = {3,5};
Field[1].Sampling = 100;

Field[2] = Threshold;
Field[2].InField = 1;
Field[2].SizeMin = lc/10;
Field[2].SizeMax = lc;
Field[2].DistMin = 0.15/2;
Field[2].DistMax = 0.3/2;

Background Field = 2;
