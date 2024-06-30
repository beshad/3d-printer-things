include <BOSL2/screws.scad>
include <BOSL2/std.scad>
include <BOSL2/threading.scad>
// $slop = 0.2;

include <BOSL2/screws.scad>
include <BOSL2/std.scad>
include <BOSL2/threading.scad>
$fn = 60;

// ydistribute(spacing = 20)
// {
//     // ycopies(50) xcopies(50) cuboid([ 30, 30, 3 ]) align(TOP, RIGHT) cuboid([ 5, 30, 20 ]);
//     ycopies(50) xcopies(50) union()
//     {
//         translate([ 0, 2, -4 ]) cube([ 30, 4, 20 ], anchor = BOTTOM);
//         translate([ 0, -10, -4 ]) cube([ 30, 20, 4 ], anchor = BOTTOM);
//         fillet(l = 30, r = 10, spin = 180, orient = RIGHT);
//     }
// }

// cube(40, anchor = BOTTOM) attach(TOP) cylinder(h = 20, r = 5);
// cube(40, anchor = BOTTOM) align(TOP, [ BACK, RIGHT, FWD, LEFT ]) cylinder(h = 20, r = 5);

cube([ 30, 30, 5 ], anchor = BOTTOM) align(TOP, [ BACK, FWD ]) cube([ 30, 5, 20 ]);