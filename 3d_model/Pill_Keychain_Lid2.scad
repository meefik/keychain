use <Thread_Library.scad>

//Set one at a time to true and the other to false to generate each piece. Glue together with abs glue / acetone

$print_lid = true;
$print_hook = true;

if ($print_lid) {
//Threaded portion
  trapezoidThread( 
	length=8, 				// axial length of the threaded rod
	pitch=1.8,				 // axial distance from crest to crest
	pitchRadius=5, 			// radial distance from center to mid-profile
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
      translate([0,0,-6])
        cylinder([0,0,0], r=7.7, h=6, $fn=60);
      translate([0,0,-5])
        cube(size=[3.52,3.25,3.25],center=true);
      }
   }

//Finger grips
translate([0,0,-6])
  union(){
    for ( i = [0 : 19] ) {
      rotate( i * 360 / 20, [0, 0, 1])
      translate([7.8, 0, 0])
      cylinder([0,0,0], r=.8, h=6, $fn=45);
    }
  }
}//diff
}//if


if ($print_hook){
  translate([0,0,-13])
    rotate([0,90,0]){
      difference(){
        union(){
          translate([-5,0,0])
            cube(size=[3,3,3],center=true);
          translate([-2,0,0])
            cube(size=[4,8,3],center=true);
          cylinder([0,0,0], r=4, h=3, center=true, $fn=60);
        }//union
        cylinder([0,0,0], r=1.8, h=3, center=true, $fn=60);
      }//diff
  }//rotate
}//if