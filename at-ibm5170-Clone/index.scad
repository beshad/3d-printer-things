include <BOSL2/rounding.scad>
include <BOSL2/std.scad>
include <BOSL2/walls.scad>

$fn = 360;

module empty_center()
{
	back(8) right(10) cube([ 120, 90, 15 ], anchor = CENTER);
}

module main()
{
	difference()
	{

<<<<<<< Updated upstream
		cube([ 170, 155, 4 ], anchor = CENTER) align(TOP, [ LEFT + BACK, RIGHT + BACK, LEFT + FRONT, RIGHT + FRONT ])
		    empty_center();
	}
}

main();

difference()
{
	back(8) right(10) up(2) cube([ 140, 110, 8 ], anchor = CENTER);
	empty_center();
}
