include <dimensions.scad>

$fn=50;

	minkowski() {
		difference() {
			cube([Length+0.2, Width+0.2, 0.2], true);
			cube([Length, Width, 4], true);
		}
		sphere(d=3);
	}
