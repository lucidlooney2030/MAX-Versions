// Gen-M dual-face sandwich rotor — print ×1
// +Z: 8×Ø20 + 24×Ø5 Halbach; −Z: 8×Ø20 + 24×Ø5 Halbach (kit complete)
include <parameters.scad>;
$fn = 72;

module large_plus_z() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n;
        translate([R_large*cos(a), R_large*sin(a), carrier_thick - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}
module large_minus_z() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + 22.5;
        translate([R_large*cos(a), R_large*sin(a), -0.05])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}
module small_face(z0, ang_off) {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + 180/large_n + ang_off;
        for (r = R_small)
            translate([r*cos(a), r*sin(a), z0])
                cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
}
difference() {
    union() {
        cylinder(d=carrier_od, h=carrier_thick);
        translate([0, 0, -hub_h + 0.01])
            cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1])
        cylinder(d=shaft_bore, h=hub_h + carrier_thick + 2);
    large_plus_z();
    large_minus_z();
    small_face(carrier_thick - pocket_h, 0);
    small_face(-0.05, 22.5);
    for (i = [0 : bolt_n_inner-1]) {
        a = i * 360 / bolt_n_inner;
        translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a), -hub_h - 0.1])
            cylinder(d=m3_clear, h=hub_h + carrier_thick + 2);
    }
    for (i = [0 : outer_bolt_n-1]) {
        a = i * 360 / outer_bolt_n;
        translate([outer_bolt_r*cos(a), outer_bolt_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=carrier_thick + 1);
    }
    translate([0, 0, -hub_h - 0.02])
        cylinder(d=bearing_d, h=bearing_h);
}
