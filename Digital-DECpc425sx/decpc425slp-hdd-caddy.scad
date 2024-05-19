include <BOSL2/std.scad>
include <BOSL2/walls.scad>

$fn = 100;

back(50) up(1.5) right(52)
{
    // cube([60,20,3],center=true);
    yrot(90) thinning_wall(h = 60, l = 20, thick = 5, wall = 3);
    up(3) text3d("Behshad", h = 1, size = 10, center = true);
}

linear_extrude(height = 3) round2d(ir = 3)
    sparse_wall2d(size = [ 102, 150 ], strut = 5, maxang = 45, anchor = [ -1, -1, 0 ]);

difference()
{
    right(1.5) back(75) up(15) thinning_wall(h = 30, l = 150, thick = 3, wall = 2);
    zrot(90) right(75) up(17) line_copies(13, n = 10) xrot(90) cylinder(h = 4, r = 3, anchor = [ -1, -1, -1 ]);
    rotate([ 90, 0, 90 ]) right(22) back(8) linear_extrude(height = 105)
        rect([ 110, 3 ], rounding = 1.5, anchor = [ -1, 0, -1 ]);
}

difference()
{
    right(103.5) back(75) up(15) thinning_wall(h = 30, l = 150, thick = 3, wall = 2);
    zrot(90) right(75) up(17) fwd(102) line_copies(13, n = 10) xrot(90) cylinder(h = 4, r = 3, anchor = [ -1, -1, -1 ]);
    rotate([ 90, 0, 90 ]) right(22) back(8) linear_extrude(height = 105)
        rect([ 110, 3 ], rounding = 1.5, anchor = [ -1, 0, -1 ]);
}

up(28) rot(90) linear_extrude(height = 2) difference()
{
    trapezoid(h = 10, w1 = 150, w2 = 130, rounding = [ 30, 30, 0, 0 ], anchor = [ -1, 0, -1 ]);
    right(25) back(3.5) rect([ 100, 3 ], rounding = 1.5, anchor = [ -1, 0, -1 ]);
}
right(105) xflip() up(28) rot(90) linear_extrude(height = 2) difference()
{
    trapezoid(h = 10, w1 = 150, w2 = 130, rounding = [ 30, 30, 0, 0 ], anchor = [ -1, 0, -1 ]);
    right(25) back(3.5) rect([ 100, 3 ], rounding = 1.5, anchor = [ -1, 0, -1 ]);
}