use <Thread_Library.scad>

translate([0,0,0]) {
//Threaded portion
  trapezoidNut(
	length=6.5, 				// axial length of the threaded rod 
	radius=9.5, 				// outer radius of the nut	
	pitch=1.8, 				// axial distance from crest to crest
	pitchRadius=7.5, 			// radial distance from center to mid-profile
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

  //Cap
  difference(){
    union(){
      difference(){
        cylinder([0,0,0], r=10, h=7, $fn=60);
        cylinder([0,0,0], r=8, h=6.5, $fn=60);
      }//diff
      translate([0, 0, 7])
      cylinder([0,0,0], r1=8, r2=2.5, h=1, $fn=60);
     }//union
    //Finger grips
    union(){
      for ( i = [0 : 19] ) {
        rotate( i * 360 / 20, [0, 0, 1])
        translate([10.3, 0, 0])
        cylinder([0,0,0], r=.8, h=8, $fn=45);
      }//for
      translate([0, 0, 6])
      cylinder([0,0,0], r=2, h=2, $fn=45);
    }//union
  }//diff

}//trans