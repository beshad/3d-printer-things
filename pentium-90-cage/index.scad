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
        rect([ 132, 43.1 ], anchor = [ -1, -1, 0 ]);
        ycopies(11.4, sp = [ 0, 0, 0 ]) xcopies(78.8, sp = [ 0, 0, 0 ]) back(11.4) right(13.3) zrot(90) yflip()
            rect([ 4, 22 ], rounding = 1.5, anchor = [ -1, -1, 0 ]);
    }
}

cdrom_caddy();
back(43.1) cdrom_caddy();

hdd_caddy();