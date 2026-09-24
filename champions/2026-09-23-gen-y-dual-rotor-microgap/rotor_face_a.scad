// Gen-Y rotor face A — 8×Ø20 + 24×Ø5 Halbach; print ×1
// DUAL-ROTOR CLAP: brace before seating face B
include <parameters.scad>;
$fn = 72;

module large_pockets() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n;
        translate([R_large*cos(a), R_large*sin(a), carrier_thick - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}
module small_halbach() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + 180/large_n;
        for (r = [R_small_inner, R_small_mid, R_small_outer])
            translate([r*cos(a), r*sin(a), carrier_thick - pocket_h])
                cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
}
difference() {
    union() {
        cylinder(d=carrier_od, h=carrier_thick);
        translate([0, 0, -hub_h + 0.01]) cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1])
        cylinder(d=shaft_bore, h=hub_h + carrier_thick + 2);
    large_pockets();
    small_halbach();
    for (i = [0 : bolt_n_inner-1]) {
        a = i * 360 / bolt_n_inner;
        translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a), -hub_h - 0.1])
            cylinder(d=m3_clear, h=hub_h + carrier_thick + 2);
    }
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=carrier_thick + 1);
    }
    for (i = [0 : brace_n-1]) {
        a = i * 360 / brace_n + 15;
        translate([brace_r*cos(a), brace_r*sin(a), -0.1])
            cylinder(d=brace_d, h=carrier_thick + 1);
    }
    translate([0, 0, -hub_h - 0.02]) cylinder(d=bearing_d, h=bearing_h);
}
