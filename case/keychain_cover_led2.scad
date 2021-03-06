use <Thread_Library.scad>

difference(){
union(){
//Threaded portion
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

//Cap
difference(){
  union(){
    translate([0,0,.1])
      difference(){
      translate([0,0,-4])
        cylinder([0,0,0], r=10, h=4, $fn=60);
        translate([0,0,-4])
        cylinder([0,0,0], r=2.5, h=1, $fn=60);
      }
   }

//Finger grips
translate([0,0,-4])
  union(){
    for ( i = [0 : 19] ) {
      rotate( i * 360 / 20, [0, 0, 1])
      translate([10.1, 0, 0])
      cylinder([0,0,0], r=.8, h=4, $fn=45);
    }
  }
}//diff

}//uinon
  translate([0,0,-3])
  cylinder([0,0,0], r=5.5, h=9, $fn=60);

}//diff