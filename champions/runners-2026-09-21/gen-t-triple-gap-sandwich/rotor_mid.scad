// Gen-T mid dual-face rotor — 4+4 Ø20 + 12+12 Ø5; print ×1
include <parameters.scad>;
$fn = 72;
module large_plus_z() {
    for (i = [0 : mid_large_n_face-1]) {
        a = i * 360 / mid_large_n_face + 45;
        translate([R_large*cos(a), R_large*sin(a), mid_carrier_thick - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}
module large_minus_z() {
    for (i = [0 : mid_large_n_face-1]) {
        a = i * 360 / mid_large_n_face + 45 + 45;
        translate([R_large*cos(a), R_large*sin(a), -0.05])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}
module small_face(z0, ang_off) {
    for (i = [0 : mid_large_n_face-1]) {
        a = i * 360 / mid_large_n_face + 180/mid_large_n_face + ang_off;
        for (r = [R_small_inner, R_small_mid, R_small_outer])
            translate([r*cos(a), r*sin(a), z0])
                cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
}
difference() {
    union() {
        cylinder(d=carrier_od, h=mid_carrier_thick);
        translate([0, 0, mid_carrier_thick/2 - hub_h/2])
            cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -0.1])
        cylinder(d=shaft_bore, h=mid_carrier_thick + 2);
    large_plus_z();
    large_minus_z();
    small_face(mid_carrier_thick - pocket_h, 45);
    small_face(-0.05, 90);
    for (i = [0 : bolt_n_inner-1]) {
        a = i * 360 / bolt_n_inner;
        translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a), -0.1])
            cylinder(d=m3_clear, h=mid_carrier_thick + 2);
    }
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=mid_carrier_thick + 1);
    }
    for (i = [0 : brace_n-1]) {
        a = i * 360 / brace_n + 15;
        translate([brace_r*cos(a), brace_r*sin(a), -0.1])
            cylinder(d=brace_d, h=mid_carrier_thick + 1);
    }
}
