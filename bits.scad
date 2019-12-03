module Volume()
{
	hull() {
		translate([10,0,0])cylinder(d=5, h=5);
		translate([-10,0,0])cylinder(d=5, h=5);
	}
}

module Power()
{
	hull() {
		translate([5,0,0])cylinder(d=5, h=5);
		translate([-5,0,0])cylinder(d=5, h=5);
	}
}

module Camera()
{
	hull() {
		translate([0,10,0])cylinder(d=10, h=5);
		translate([0,-10,0])cylinder(d=10, h=5);
	}
}

module Speaker()
{
	hull() {
		translate([0,5,0])cylinder(d=5, h=5);
		translate([0,25,0])cylinder(d=5, h=5);
	}
	hull() {
		translate([0,-5,0])cylinder(d=5, h=5);
		translate([0,-25,0])cylinder(d=5, h=5);
	}
}

module Usb()
{
	hull() {
		translate([0,5,0])cylinder(d=5, h=5);
		translate([0,-5,0])cylinder(d=5, h=5);
	}
}

module Microphone()
{
	cylinder(d=3, h=5);
}
