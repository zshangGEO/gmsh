Merge "aorta2.stl";
CreateGeometry;

Merge "aortaRADIUS2.bgm";

// create a boundary layer, whose tickness is given in View[0]
//out1[] = Extrude{Surface{-1}; Layers{4, 0.5}; Using Index[0]; Using View[0]; };

// we could create a second boundary layer inside...
//out2[] = Extrude{Surface{1}; Layers{4, -0.5}; Using Index[1]; Using View[0]; };
/*
Line Loop(60) = {1}; Plane Surface(61) = {60};
Line Loop(62) = {2}; Plane Surface(63) = {62};
Line Loop(64) = {3}; Plane Surface(65) = {64};
Line Loop(66) = {4}; Plane Surface(67) = {66};
Line Loop(68) = {5}; Plane Surface(69) = {68};

Mesh.Algorithm3D = 4;

Surface Loop(100) = {1, 61:69:2};
Volume(100) = 100;
*/
