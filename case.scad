include <dimensions.scad>
use <phone.scad>

$fn=50;

module plate(Margin, Thick=Height)
{
	translate([0,0,2]) hull() {
		translate([(Length-Height-Margin)/2,(Width-Height-Margin)/2,0]) cylinder(d=Height, h=Thick);
		translate([-(Length-Height-Margin)/2,(Width-Height-Margin)/2,0]) cylinder(d=Height, h=Thick);
		translate([(Length-Height-Margin)/2,-(Width-Height-Margin)/2,0]) cylinder(d=Height, h=Thick);
		translate([-(Length-Height-Margin)/2,-(Width-Height-Margin)/2,0]) cylinder(d=Height, h=Thick);
	}
}

difference() {
	union() {
		difference() {
			phone(4);
			plate(2);
		}
		translate([0,0,Height/2-4]) {
			minkowski() {
				difference() {
					plate(3,1);
					translate([0,0,-1])plate(3.1,4);
				}
				sphere(2);
			}
		}
	}
	phone(Bits=1);
	//translate([0,-50,-50])cube([100,100,100]);
}

/*
translate([0,0,Height/2-4]) {
	minkowski() {
		difference() {
			plate(3,1);
			translate([0,0,-1])plate(3.1,4);
		}
		sphere(2);
	}
}

	minkowski() {
		difference() {
			cube([Length+0.2, Width+0.2, 0.2], true);
			cube([Length, Width, 4], true);
		}
		sphere(d=3);
	}
*/
