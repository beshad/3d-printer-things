include <BOSL2/rounding.scad>
include <BOSL2/std.scad>

$fn = 360;

module main()
{
	difference()
	{
		cube([ 50, 60, 5 ], CENTER);
		down(7) cylinder(h = 30, d = 16.5);
	}

	difference()
	{
		cylinder(h = 18, d = 20);
		down(7) cylinder(h = 30, d = 16.5);
	}

	difference()
	{
		cube([ 50, 60, 36 ], CENTER)
		{
			attach(BACK, BOT, align = [TOP]) cube([ 60, 5, 5 ]);
			attach(FRONT, BOT, align = [TOP]) cube([ 60, 5, 5 ]);
			attach(LEFT, BOT, align = [TOP]) cube([ 60, 5, 5 ]);
			attach(RIGHT, BOT, align = [TOP]) cube([ 60, 5, 5 ]);
		}
		cube([ 40, 50, 37 ], CENTER);
	}
}

main();
