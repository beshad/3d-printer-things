include <BOSL2/std.scad>
include <BOSL2/walls.scad>

$fn = 100;

module left_bracket()
{
    zflip() down(4) back(26.7) xrot(90) right(15) xcopies(spacing = 147 - 30, n = 2, sp = [ 0, 10, 0 ])
        linear_extrude(height = 3) trapezoid(h = 12, w1 = 30, w2 = 20, rounding = [ 5, 5, 0, 0 ]);
}

module right_bracket()
{
    difference()
    {
        up(2) back(26.7) xrot(90) linear_extrude(height = 3)
            trapezoid(h = 12, w1 = 147, w2 = 137, rounding = [ 5, 5, 0, 0 ], anchor = [ -1, -1, 0 ]);

        xcopies(spacing = 5, n = 5) up(7) back(26.8) right(33) xrot(90)
            cylinder(h = 5, d = 3);
        xcopies(spacing = 5, n = 5)up(7) back(26.8) right(33 + 79.6) xrot(90) cylinder(h = 5, d = 3);
    }
}

module init()
{
    left_bracket();

    // right_bracket();

    difference()
    {
        cube([ 147, 26.7, 2 ]);
        xcopies(spacing = 5, n = 28, sp = [ 0, 10, 0 ]) down(1) back(2) right(4) cube([ 3, 10, 4 ]);
        down(1) back(6.35)
        {
            right(28.5) cylinder(h = 4, d = 3);
            right(28.5 + 101.6) cylinder(h = 4, d = 3);
        }
    }
}

init();