translate([0,4,0]) {
  difference(){
    // main small cylinder
    cylinder([0,0,0], r=2, h=20, $fn=45);
    union() {
      // perforation
      translate([0,0,3]) {
        rotate ([90,0,0]) 
        for (j=[0:15]){
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

translate([0,-4,0]) {
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

translate([0,0,10]) {
  difference(){
    translate([0,0,0])
    cube(size = [8,16,20], center=true);
    union() {
      cube(size = [7,16,19], center=true);
      translate([0,4,9])
      cylinder([0,0,0], r=0.5, h=1, $fn=45);
      translate([0,-4,9])
      cylinder([0,0,0], r=0.5, h=1, $fn=45);
      translate([0,4,-10])
      cylinder([0,0,0], r=2, h=1, $fn=45);
      translate([0,-4,-10])
      cylinder([0,0,0], r=2, h=1, $fn=45);
    }//union
  }//diff
}//trans
