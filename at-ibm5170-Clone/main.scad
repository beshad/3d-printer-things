include <BOSL2/rounding.scad>
include <BOSL2/std.scad>

$fn = 360;

module psu()
{
    back(20) right(10) cube([ 110, 80, 7 ], anchor = CENTER)
        align([ LEFT, LEFT + BACK, RIGHT, RIGHT + BACK, LEFT + FRONT, FRONT, RIGHT + FRONT, BACK ], shiftout = 3)
            cylinder(h = 7, d = 4);
}

module vent()
{
    fwd(50) xcopies(spacing = 10, n = 10) cube([ 3, 40, 7 ], anchor = CENTER);
}

module main()
{
    difference()
    {
        cube([ 170, 150, 5 ], anchor = CENTER);
        psu();
        vent();
    }
}

main();