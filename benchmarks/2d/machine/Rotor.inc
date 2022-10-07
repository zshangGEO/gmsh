

NbrSect_ = NbrSect; NbrLine_ = NbrLine; L_[]=L[];

Printf("Copy lines");
Call CopyLines;

LineLoop_[] = LineLoop3[] ; NbrLines_ = NbrLines3; PhysNum_ = RotorSlotOpening; dPhysNum_ = 1; 
Printf("Rotor slot openings");
Call CopySlot;

geuz1[{0:NbrSect_-1}] = geuz[{0:NbrSect_-1}];


LineLoop_[] = LineLoop2[] ; NbrLines_ = NbrLines2; PhysNum_ = RotorConductor; dPhysNum_ = 1; 
Printf("Rotor conductors : physical surfaces %g to %g", PhysNum_, PhysNum_+(NbrSect-1)*dPhysNum_);
Call CopySlot;


Printf("Inner airgap : line loop %g", newreg);
LineLoop_[] = LineLoop1[] ; NbrLines_ = NbrLines1; InnerAirgap = newreg; Call ConnectLine; 

Printf("Inner moving band : line loop %g", newreg);
LineLoop_[] = LineLoop4[] ; NbrLines_ = NbrLines4; InnerMB_ = newreg; Call ConnectLine; 
Physical Line(InnerMB) = {KK_[{0:NbrLines_*NbrSect_-1}]};


Printf("OuterShaft : line loop %g / physical line %g", newreg, OuterShaft);
LineLoop_[] = LineLoop5[] ; NbrLines_ = NbrLines5; OuterShaft_ = newreg; Call ConnectLine; 
Physical Line(OuterShaft) = {KK_[{0:NbrLines_*NbrSect_-1}]};


Printf("Shaft : physical surface %g", Shaft);
mmm = newreg; Plane Surface(mmm) = {OuterShaft_};
Physical Surface(Shaft) = {mmm};


Printf("Inner rotor iron : line loop %g", newreg);
LineLoop_[] = LineLoop6[] ; NbrLines_ = NbrLines6; InnerRotor = newreg; Call ConnectLine; 

Printf("Rotor airgap layer : physical surface %g", RotorAirgapLayer);
mmm1 = newreg; Plane Surface(mmm1) = {InnerMB_,InnerAirgap};
Physical Surface(RotorAirgapLayer) = {mmm1};


Printf("RotorIron : physical surface %g", RotorIron);
mmm = newreg; Plane Surface(mmm) = {InnerRotor,OuterShaft_};
Physical Surface(RotorIron) = {mmm};

Rotate{ {0,0,1},{0,0,0}, 0*Pi/180 }{
  Surface{ mmm1, mmm };
  Surface{ geuz1[{0:NbrSect_-1}] };
  Surface{ geuz[{0:NbrSect_-1}] };
}

