// Gen-BT — shaft collar with D-flat bore (set screw bears on the flat); print x4
include <parameters.scad>;
$fn = 64;
// D-flat keyed bore: flat faces +X (angle 0 = magnet pocket 0 = index notch)
module dflat_bore(h) {
    intersection() {
        cylinder(d=shaft_bore, h=h);
        translate([-shaft_bore, -shaft_bore, 0]) cube([shaft_bore + dflat_x, 2*shaft_bore, h]);
    }
}

od = 22; h = collar_h; set_d = 3.0;
difference() {
    cylinder(d=od, h=h);
    translate([0, 0, -0.1]) dflat_bore(h + 0.2);
    translate([0, 0, h/2]) rotate([0, 90, 0]) cylinder(d=set_d, h=od);
}
