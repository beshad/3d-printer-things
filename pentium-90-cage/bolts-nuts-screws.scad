include <BOSL2/screws.scad>
include <BOSL2/std.scad>
include <BOSL2/threading.scad>
// $slop = 0.2;

include <BOSL2/screws.scad>
include <BOSL2/std.scad>
include <BOSL2/threading.scad>
$fn = 60;

ydistribute(spacing = 20)
{
    screw("M6x1,20", head = "socket", drive = "hex", anchor = [ 0, 0, 1 ], drive_size = 7, thread_len = 15,
          orient = DOWN);
    screw("M6x1,20", head = "hex", anchor = [ 0, 0, 1 ], orient = DOWN);
    screw("#6", thread = "fine", head = "fillister", length = 20, drive = "phillips");
    nut("M6", $slop = 0.1); // matching bolt
}