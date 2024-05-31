include <BOSL2/std.scad>
include <BOSL2/walls.scad>

$fn = 360;

// ruler(150, depth = 3, labels = true);

module hdd_caddy()
{
    linear_extrude(height = 2) difference()
    {
        rect([ 100, 70 ], anchor = [ -1, 0, 1 ]);
        xcopies(41.3, sp = [ 0, 0, 0 ]) fwd(40) right(30) circle(r = 3);
    }
}

module cdrom_caddy()
{
    linear_extrude(height = 2) difference()
    {
        rect([ 132, 45.1 ], anchor = [ -1, -1, 0 ]);
        ycopies(11.4, sp = [ 0, 0, 0 ]) xcopies(78.8, sp = [ 0, 0, 0 ]) back(11.4) right(13.3) zrot(90) yflip()
            rect([ 4, 22 ], rounding = 1.5, anchor = [ -1, -1, 0 ]);
    }
}

module right_flap()
{
    up(76) yrot(90) linear_extrude(height = 2) rect([ 9, 77 ], anchor = [ 1, -1, 0 ], rounding = [ 0, 5, 5, 0 ]);
}

module left_flap()
{
    down(83) yrot(90) linear_extrude(height = 2) rect([ 9, 90 ], anchor = [ 1, -1, 0 ], rounding = [ 8, 0, 0, 8 ]);
}

xrot(90)
{
    right_flap();
    left_flap();
    zcopies(148) ycopies(43.1, sp = [ 0, 0, 0 ]) cdrom_caddy();
    ycopies(90.2, sp = [ 0, 0, 0 ]) up(1) zrot(90)
        sparse_wall(h = 150, l = 132, thick = 2, strut = 2, anchor = [ 1, 1, 0 ]);
}