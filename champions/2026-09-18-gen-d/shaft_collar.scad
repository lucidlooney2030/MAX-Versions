// Gen-D shaft collar — M3 set-screw style clamp for Ø8 shaft

od      = 22.0;
id      = 8.35;
h       = 10.0;
set_d   = 3.5;    // M3 clearance → heat-set insert preferred on OD
$fn = 64;

difference() {
    cylinder(d=od, h=h);
    translate([0, 0, -0.1])
        cylinder(d=id, h=h + 0.2);
    translate([0, 0, h/2])
        rotate([0, 90, 0])
            cylinder(d=set_d, h=od);
}
