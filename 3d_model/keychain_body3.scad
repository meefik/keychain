use <Thread_Library.scad>

translate([0,0,6]) {
  difference(){
    cylinder([0,0,0], r=10, h=16, $fn=45);
    union() {
      translate([0,0,1])
        cylinder([0,0,0], r=8.5, h=15, $fn=45);
      translate([0,0,0])
        cylinder([0,0,0], r=1, h=1, $fn=45);
      translate([5.5,0,0])
        cylinder([0,0,0], r=0.5, h=1, $fn=45);
    }//union
  }//diff
}//trans

translate([0,0,0]) {
  difference(){
    trapezoidThread( 
      length=6, 				// axial length of the threaded rod
      pitch=1.8,				 // axial distance from crest to crest
      pitchRadius=7, 			// radial distance from center to mid-profile
      threadHeightToPitch=0.5, 	// ratio between the height of the profile and the pitch
                                                // std value for Acme or metric lead screw is 0.5
      profileRatio=0.5,			 // ratio between the lengths of the raised part of the profile and the pitch
                                                // std value for Acme or metric lead screw is 0.5
      threadAngle=35, 			// angle between the two faces of the thread
                                                // std value for Acme is 29 or for metric lead screw is 30
      RH=true, 				// true/false the thread winds clockwise looking along shaft, i.e.follows the Right Hand Rule
      clearance=0.1, 			// radial clearance, normalized to thread height
      backlash=0.1, 			// axial clearance, normalized to pitch
      stepsPerTurn=24 			// number of slices to create per turn
      );
    cylinder([0,0,0], r=6, h=6, $fn=45);
  }//diff
}//trans

translate([0,0,16]) {
  trapezoidNut(
	length=6, 				// axial length of the threaded rod 
	radius=9.8, 				// outer radius of the nut	
	pitch=1.8, 				// axial distance from crest to crest
	pitchRadius=7, 			// radial distance from center to mid-profile
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

/*
// battery
translate([0,0,0]) {
  cylinder([0,0,0], r=5.8, h=5.4, $fn=45);
}
*/
