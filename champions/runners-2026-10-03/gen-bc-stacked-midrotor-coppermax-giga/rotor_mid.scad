// Gen-BC — mid dual-face rotor: 8xO20 + 24xO5 per face; print x1.
// CLOCKING: both faces' pockets at the SAME angles (rotor_b_offset_deg = 0) so each O20 pair is a
// back-to-back stack (1.6 mm PLA web) magnetised THROUGH the rotor: the +Z magnet's N faces stator A and
// the -Z magnet's S faces stator B (they attract each other — correct). KEY: D-flat bore, flat at angle 0
// = pocket 0 = rim index notch.
include <parameters.scad>;
$fn = 72;
// D-flat keyed bore: flat faces +X (angle 0 = magnet pocket 0 = index notch)
module dflat_bore(h) {
    intersection() {
        cylinder(d=shaft_bore, h=h);
        translate([-shaft_bore, -shaft_bore, 0]) cube([shaft_bore + dflat_x, 2*shaft_bore, h]);
    }
}

module face(z0, off) {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + off;
        translate([R_large*cos(a), R_large*sin(a), z0]) cylinder(d=large_pocket_d, h=pocket_h + 0.15);
        b = a + 180 / large_n;
        for (r = [R_small_inner, R_small_mid, R_small_outer])
            translate([r*cos(b), r*sin(b), z0]) cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
}
difference() {
    union() {
        cylinder(d=carrier_od, h=mid_carrier_thick);
        translate([0, 0, mid_carrier_thick/2 - hub_h/2]) cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -0.1]) dflat_bore(mid_carrier_thick + 2);
    face(mid_carrier_thick - pocket_h, 0);
    face(-0.15, rotor_b_offset_deg);
    translate([carrier_od/2, 0, -0.1]) cylinder(d=index_notch_d, h=mid_carrier_thick + 1, $fn=24);
    for (a = bolt_inner_angles) translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a), -0.1]) cylinder(d=m3_clear, h=mid_carrier_thick + 1);
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1]) cylinder(d=m3_clear, h=mid_carrier_thick + 1);
    }
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a), -0.1]) cylinder(d=brace_d, h=mid_carrier_thick + 1);
}
