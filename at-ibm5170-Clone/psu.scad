include <BOSL2/rounding.scad>
include <BOSL2/std.scad>

$fn = 360;

module psu_opening()
{
	cube([ 110, 80, 7 ], anchor = CENTER)
	    align([ LEFT, LEFT + BACK, RIGHT, RIGHT + BACK, LEFT + FRONT, FRONT, RIGHT + FRONT, BACK ], shiftout = 3)
	        color("red") cylinder(h = 100, d = 4);
}

module psu()
{
	difference()
	{
		cube([ 130, 105, 5 ], anchor = CENTER);
		diff() cube([ 96, 56, 7 ], anchor = CENTER)
		{
			align(BACK, [ LEFT, RIGHT ], inset = 3, shiftout = 4) cylinder(h = 7, d = 4);
			align([RIGHT + FWD], inside = true, shiftout = 0.01) cube([ 5, 15, 7 ]);
		}
	}
}

module main()
{
	difference()
	{
		up(30) psu();
		psu_opening();
	}
}

main();
