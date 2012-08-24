use <Thread_Library.scad>

translate([0,0,0]) {
  difference(){
    union() {
      // main small cylinder
      cylinder([0,0,0], r=5, h=29, $fn=60);
      // support
      translate([0,0,0.8]) {
        rotate ([90,0,0]) {
          for (j=[0:3]){
            rotate ([0,j*90,0]) 
              cylinder(r=0.6,h=7,$fn=6);
          }//for
        }//rotate
      }//trans
    }//union
    union() {
      // perforation
      translate([0,0,2]) {
        rotate ([90,0,0]) 
        for (j=[0:25]){
          rotate ([0,j*10,0]) 
          for (i=[0:20]){
            translate([0,j,0])
            rotate ([0,i*20,0]) 
            cylinder(r=0.6,h=5,$fn=6);
          }//for
        }//for
      }//trans
      // small cylinder to diff
      cylinder([0,0,0], r=4.5, h=29, $fn=60);
    }//union
  }//diff

  translate([0,0,0]) {
    difference(){
      cylinder([0,0,0], r=7, h=38, $fn=60);
      cylinder([0,0,0], r=6.5, h=38, $fn=60);
    }//diff
  }//trans

  translate([0,0,28]) {
    difference(){
      cylinder([0,0,0], r=7, h=1, $fn=60);
      union() {
        translate([0,0,0])
          cylinder([0,0,0], r=1, h=1, $fn=60);
        translate([4,4,0])
          cylinder([0,0,0], r=0.5, h=1, $fn=60);
      }//union
    }//diff
  }//trans

  translate([0,0,6]) {
    difference(){
      cylinder([0,0,0], r=10, h=26, $fn=60);
      cylinder([0,0,0], r=6.5, h=26, $fn=60);
    }//diff
  }//trans

  translate([0,0,0]) {
    difference(){
      trapezoidThread( 
        length=6, 				// axial length of the threaded rod
        pitch=1.8,				 // axial distance from crest to crest
        pitchRadius=7.5, 			// radial distance from center to mid-profile
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
      cylinder([0,0,0], r=6.5, h=6, $fn=60);
    }//diff
  }//trans

  translate([0,0,32]) {
    difference(){
      trapezoidThread( 
        length=6, 				// axial length of the threaded rod
        pitch=1.8,				 // axial distance from crest to crest
        pitchRadius=7.5, 			// radial distance from center to mid-profile
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
      cylinder([0,0,0], r=6.5, h=6, $fn=60);
    }//diff
  }//trans

}//trans
