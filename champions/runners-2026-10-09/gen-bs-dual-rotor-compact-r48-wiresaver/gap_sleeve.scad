// Gen-BS — gap sleeve: rigid spacer on the shaft BETWEEN the two rotor carriers (passes through the stator
// hole). Length = m2m, so it sets the magnet gap and carries the full magnet pull. Print x1, upright.
include <parameters.scad>;
$fn = 64;
// D-flat keyed bore: flat faces +X (angle 0 = magnet pocket 0 = index notch)
module dflat_bore(h) {
    intersection() {
        cylinder(d=shaft_bore, h=h);
        translate([-shaft_bore, -shaft_bore, 0]) cube([shaft_bore + dflat_x, 2*shaft_bore, h]);
    }
}

difference() {
    cylinder(d=sleeve_od, h=m2m);
    translate([0, 0, -0.1]) dflat_bore(m2m + 0.2);
}
