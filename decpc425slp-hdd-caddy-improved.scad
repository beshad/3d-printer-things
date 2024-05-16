include <BOSL2/std.scad>
include <BOSL2/walls.scad>

$fn = 360;

module top_bracket()
{
    anchor = [ 0, -1, 0 ];
    xflip() up(28) rot(90) linear_extrude(height = 2) difference()
    {
        trapezoid(h = 10, w1 = 150, w2 = 130, rounding = [ 30, 30, 0, 0 ], anchor = anchor);
        back(3.5) rect([ 100, 3 ], rounding = 1.5, anchor = anchor);
    }
}

module make_wall()
{
    difference()
    {
        back(75) up(15) thinning_wall(h = 30, l = 150, thick = 3, wall = 2);
        left(10)
        {
            zrot(90) right(75) up(17) line_copies(13, n = 10) xrot(90) cylinder(h = 20, r = 3);
            rotate([ 90, 0, 90 ]) right(75) back(8) linear_extrude(height = 20) rect([ 110, 3 ], rounding = 1.5);
        }
    }
}

module add_label()
{
    up(1.5)
    {
        yrot(90) thinning_wall(h = 60, l = 20, thick = 5, wall = 3);
        up(3) text3d("Behshad", h = 1, size = 10, center = true);
    }
}

xcopies(102) fwd(75) make_wall();

xflip_copy(51) top_bracket();

add_label();

linear_extrude(height = 3) round2d(ir = 3) sparse_wall2d(size = [ 102, 150 ], strut = 5, maxang = 45);