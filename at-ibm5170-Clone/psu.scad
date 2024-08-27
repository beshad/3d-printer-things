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
        color("green") cube([ 130, 105, 1 ], anchor = CENTER);
        diff() cube([ 105, 72, 2 ], anchor = CENTER)
        {
            align([ LEFT + BACK, RIGHT + BACK ], inside = true, shiftout = 0.01) cube([ 30, 10, 7 ]);
            align([RIGHT + FWD], inside = true, shiftout = 0.01) cube([ 10, 25, 7 ]);
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