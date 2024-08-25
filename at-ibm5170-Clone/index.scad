include <BOSL2/rounding.scad>
include <BOSL2/std.scad>
include <BOSL2/walls.scad>

$fn = 360;

module empty_center()
{
    back(8) right(10) cube([ 120, 90, 12 ], anchor = CENTER);
}

module main()
{
    difference()
    {

        cube([ 170, 160, 3 ], anchor = CENTER) align(TOP, [ LEFT + BACK, RIGHT + BACK, LEFT + FRONT, RIGHT + FRONT ])
            prismoid([ 20, 20 ], [ 17, 17 ], height = 2);

        empty_center();
    }
}

main();

difference()
{
    back(8) right(10) up(2) cube([ 140, 110, 3 ], anchor = CENTER);
    empty_center();
}