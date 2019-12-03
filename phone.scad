include <dimensions.scad>
use <bits.scad>

$fn=50;

module phone (Pad=0, Bits=0)
{
	minkowski() {
		cube([Length-Height+0.2, Width-Height+0.2, 0.2], true);
		sphere(d=(Height-0.2)+Pad);
	}
	if(Bits != 0) {
		// add holes for buttons and other things
		translate([-50,Width/2+4,0]) rotate([90,0,0]) Volume();
		translate([-25,Width/2+4,0]) rotate([90,0,0]) Power();
		translate([-70,-17,-Height/2-4]) Camera();
		translate([70,0,-Height/2-4]) Speaker();
		translate([Length/2,0,0]) rotate([0,90,0]) Usb();
		translate([Length/2,20,0]) rotate([0,90,0]) Microphone();
	}
}

//%cube([Length, Width, Height], true);
phone(Bits=1);
%phone(4);

