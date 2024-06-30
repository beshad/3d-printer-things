include <BOSL2/std.scad>
include <BOSL2/walls.scad>
$fn = 60;

// cube([ 30, 30, 5 ], anchor = BOTTOM) align(TOP, [ BACK, FWD ]) cube([ 30, 5, 20 ]);

module caddy()
{
    difference()
    {
        sparse_wall(h = 103, l = 90, thick = 3, strut = 2, maxang = 45) align([ TOP, BOTTOM ], LEFT)
            cube([ 30, 90, 3 ]);
        right(22.5) ycopies(40) cube([ 3, 35, 110 ], anchor = CENTER);
        right(9) ycopies(10, n = 8) rotate(45) cube([ 3, 13, 110 ], anchor = CENTER);
    }
}

caddy();
difference()
{
    down(74) color("red") sparse_wall(h = 39.4, l = 90, thick = 3, strut = 7, maxang = 45) align([ LEFT, RIGHT ], BOTTOM)
        cube([ 40, 90, 3 ]);
    xcopies(30) ycopies(10, n = 8) rotate(60) cube([ 3, 23, 210 ], anchor = CENTER);
}