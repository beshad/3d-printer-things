include <BOSL2/std.scad>
include <BOSL2/walls.scad>

$fn = 360;

// ruler(150, depth = 3, labels = true);

module add_hdd_cage()
{
    xrot(90) fwd(15) linear_extrude(height = 2) difference()
    {
        rect([ 147, 30 ], anchor = [ -1, 0, 0 ], rounding = [ 15, 0, 15, 15 ]);
        xcopies(101.6, sp = [ 0, 0, 0 ]) right(20) fwd(5) circle(r = 3);
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
    up(76) yrot(90) linear_extrude(height = 4) rect([ 9, 77 ], anchor = [ 1, -1, 0 ], rounding = [ 0, 5, 5, 0 ]);
}

module left_flap()
{
    down(83) yrot(90) linear_extrude(height = 4) rect([ 9, 90 ], anchor = [ 1, -1, 0 ], rounding = [ 8, 0, 0, 8 ]);
}

module make_pattern()
{
    for (i = [ 6, 34, 42, 50, 77, 85 ])
    {
        // back(i) cylinder(h = 180, r = 3, anchor = [ 1, 1, 0 ]);
        random = rand_int(0, 180, 1)[0];
        back(i) down(90) linear_extrude(height = 180) zrot(random) regular_ngon(n = 3, or = 4);
    }
}

difference()
{
    xrot(90)
    {
        right_flap();
        left_flap();
        zcopies(150) ycopies(43.1, sp = [ 0, 0, 0 ]) cdrom_caddy();
        ycopies(90.2, sp = [ 0, 0, 0 ]) up(1) zrot(90)
            sparse_wall(h = 152, l = 132, thick = 2, strut = 2, anchor = [ 1, 1, 0 ]);
    }
    xcopies(10, n = 12, sp = [ 0, 0, 0 ]) xrot(90) right(15) make_pattern();
    zcopies(43, sp = [ 0, 0, 0 ]) xcopies(6, n = 7, sp = [ 0, 0, 0 ]) right(40) up(27) xrot(90) yrot(90) xrot(-30)
        linear_extrude(height = 3) rect([ 180, 18 ], anchor = [ 0, 1, 0 ]);
}

difference()
{
    ycopies(101.6) add_hdd_cage();
    xcopies(6, n = 15, sp = [ 0, 0, 0 ]) right(31) down(7) xrot(90) yrot(90) xrot(20) linear_extrude(height = 3)
        rect([ 180, 20 ], anchor = [ 0, 1, 0 ]);
}

up(88.2) zrot(90) linear_extrude(height = 2) rect([ 150, 10 ], anchor = [ 0, 1, 0 ]);

up(80) back(80) right(65) linear_extrude(height = 6) shell2d(-2, ir = 0) rect([ 30, 7 ], anchor = [ 0, 1, 0 ]) fwd(3.5) left(15) zrot(90) right_triangle([7,8]);