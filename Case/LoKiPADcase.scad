use <rounded_box.scad>

$fn=50;

w=60;
d=100;
h=1.6;
r=4;

o=.3;
t=0.45*3;
th=7;
i=2.54;

screwHoles = false;
difference() {
	
	union () {
		
		rd = 2.5;
		if (screwHoles) {
			translate([-w/2+i,d/2-i,h]) cylinder(th-h-h+t, rd, rd);	
			translate([+w/2-i,d/2-i,h]) cylinder(th-h-h+t, rd, rd);
		}

		difference() {
		
		
			rounded_box(o+o+w+t+t,o+o+d+t+t,th-h+t,r+o+t);
			

			// first stage pcb rim
			translate([0,0,-1])
			rounded_box(w+o+o,d+o+o,h+1,r+o);
			
			// second stage holding corner
			translate([0,0,-1])
			rounded_box(w-t-t,d-t-t,th-h+1,r-o);

		 // color("black") rounded_box(w,d,h,r);
		
		}
	}
	
	if(screwHoles) {
		translate([-w/2+i,d/2-i,0]) cylinder(th-t, 1, 1);
		translate([+w/2-i,d/2-i,0]) cylinder(th-t, 1, 1);
	}
	
	usbSocket();



}

if($preview) {
	color("black", 0.5)
	rounded_box(w,d,h,r);
}

if($preview) usbSocket();

module usbSocket() {
	usb = 9;
	color("red", 0.2)
	translate([-usb/2,d/2-usb/2,-usb+th-h])
	cube(usb);
	
	usb2 = 32;
	color("red", 0.2)
	translate([-usb2/2,d/2-usb2+o,-usb2+th-h])
	cube(usb2);
	
}