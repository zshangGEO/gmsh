/*
Mesh.CharacteristicLengthFactor = 0.3;
Mesh.Algorithm = 6;
Mesh.OldRefinement=0;
Mesh.Algorithm3D = 2;
*/
/*****************************
cube meshed
non uniformly
*****************************/
k = .3;
Point(1) = {0.0,0.0,0.0,.04*k};
Point(2) = {1,0.0,0.0,.2*k};
Point(3) = {1,1,0.0,.1*k};
Point(4) = {0,1,0.0,.2*k};
Line(1) = {4,3};
Line(2) = {3,2};
Line(3) = {2,1};
Line(4) = {1,4};
Line Loop(5) = {2,3,4,1};
Plane Surface(6) = {5};
Extrude {0,0.0,1}{ Surface {6}; }
