use <Thread_Library.scad>

translate([0,2.5,0]) {
  difference(){
    // main small cylinder
    cylinder([0,0,0], r=2, h=20, $fn=45);
    union() {
      // perforation
      translate([0,0,2]) {
        rotate ([90,0,0]) 
        for (j=[0:16]){
          rotate ([0,j*10,0]) 
          for (i=[0:11]){
            translate([0,j,0])
            rotate ([0,i*30,0]) 
            cylinder(r=0.4,h=2,$fn=6);
          }//for
        }//for
      }//trans
      // small cylinder to diff
      cylinder([0,0,0], r=1.5, h=20, $fn=45);
    }//union
  }//diff
}//trans

translate([0,-2.5,0]) {
  difference(){
    // main small cylinder
    cylinder([0,0,0], r=2, h=20, $fn=45);
    union() {
      // perforation
      translate([0,0,2]) {
        rotate ([90,0,0]) 
        for (j=[0:16]){
          rotate ([0,j*10,0]) 
          for (i=[0:11]){
            translate([0,j,0])
            rotate ([0,i*30,0]) 
            cylinder(r=0.4,h=2,$fn=6);
          }//for
        }//for
      }//trans
      // small cylinder to diff
      cylinder([0,0,0], r=1.5, h=20, $fn=45);
    }//union
  }//diff
}//trans

translate([0,0,19.5]) {
  difference(){
    cylinder([0,0,0], r=6.5, h=0.5, $fn=45);
    union() {
      translate([0,2.5,0])
      cylinder([0,0,0], r=0.5, h=0.5, $fn=45);
      translate([0,-2.5,0])
      cylinder([0,0,0], r=0.5, h=0.5, $fn=45);
    }//union
  }//diff
}//trans

translate([0,0,0]) {
  difference(){
    cylinder([0,0,0], r=6.5, h=0.5, $fn=45);
    union() {
      translate([0,2.5,0])
      cylinder([0,0,0], r=2, h=0.5, $fn=45);
      translate([0,-2.5,0])
      cylinder([0,0,0], r=2, h=0.5, $fn=45);
    }//union
  }//diff
}//trans

translate([0,0,-6]) {
  difference(){
    cylinder([0,0,0], r=7, h=38, $fn=60);
    cylinder([0,0,0], r=6, h=38, $fn=60);
  }//diff
}//trans

translate([0,0,-6]) {
  trapezoidNut(
	length=6, 				// axial length of the threaded rod 
	radius=7, 				// outer radius of the nut	
	pitch=1.8, 				// axial distance from crest to crest
	pitchRadius=5, 			// radial distance from center to mid-profile
	threadHeightToPitch=0.5,	// ratio between the height of the profile and the pitch
						// std value for Acme or metric lead screw is 0.5
	profileRatio=0.5, 			// ratio between the lengths of the raised part of the profile and the pitch
						// std value for Acme or metric lead screw is 0.5
	threadAngle=35, 			// angle between the two faces of the thread 
						// std value for Acme is 29 or for metric lead screw is 30
	RH=true, 				// true/false the thread winds clockwise looking along shaft, i.e.follows the Right Hand Rule
	countersunk=0.5, 		// depth of 45 degree chamfered entries, normalized to pitch
	clearance=0.1, 			// radial clearance, normalized to thread height
	backlash=0.1, 			// axial clearance, normalized to pitch
	stepsPerTurn=24 			// number of slices to create per turn
	);
}//trans

translate([0,0,26]) {
  trapezoidNut(
	length=6, 				// axial length of the threaded rod 
	radius=7, 				// outer radius of the nut	
	pitch=1.8, 				// axial distance from crest to crest
	pitchRadius=5, 			// radial distance from center to mid-profile
	threadHeightToPitch=0.5,	// ratio between the height of the profile and the pitch
						// std value for Acme or metric lead screw is 0.5
	profileRatio=0.5, 			// ratio between the lengths of the raised part of the profile and the pitch
						// std value for Acme or metric lead screw is 0.5
	threadAngle=35, 			// angle between the two faces of the thread 
						// std value for Acme is 29 or for metric lead screw is 30
	RH=true, 				// true/false the thread winds clockwise looking along shaft, i.e.follows the Right Hand Rule
	countersunk=0.5, 		// depth of 45 degree chamfered entries, normalized to pitch
	clearance=0.1, 			// radial clearance, normalized to thread height
	backlash=0.1, 			// axial clearance, normalized to pitch
	stepsPerTurn=24 			// number of slices to create per turn
	);
}//trans
