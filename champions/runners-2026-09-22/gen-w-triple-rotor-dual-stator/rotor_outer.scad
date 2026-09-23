// Gen-W outer rotor — 5×Ø20 + 16×Ø5; print ×2 (A and B; clock B +36°)
// MULTI-ROTOR CLAP: brace before seating mid / second outer
include <parameters.scad>;
$fn = 72;
module large_pockets() {
    for (i = [0 : outer_large_n-1]) {
        a = i * 360 / outer_large_n;
        translate([R_large*cos(a), R_large*sin(a), outer_carrier_thick - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}
module small_halbach() {
    // 16 smalls: inner 5 + mid 5 + outer 6 distributed around poles
    for (i = [0 : outer_large_n-1]) {
        a = i * 360 / outer_large_n + 180/outer_large_n;
        for (r = [R_small_inner, R_small_mid, R_small_outer])
            translate([r*cos(a), r*sin(a), outer_carrier_thick - pocket_h])
                cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
    // +1 extra on outer ring to reach 16 (5×3=15 +1)
    translate([R_small_outer*cos(0), R_small_outer*sin(0), outer_carrier_thick - pocket_h])
        cylinder(d=small_pocket_d, h=pocket_h + 0.15);
}
difference() {
    union() {
        cylinder(d=carrier_od, h=outer_carrier_thick);
        translate([0, 0, -hub_h + 0.01]) cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1])
        cylinder(d=shaft_bore, h=hub_h + outer_carrier_thick + 2);
    large_pockets();
    small_halbach();
    for (i = [0 : bolt_n_inner-1]) {
        a = i * 360 / bolt_n_inner;
        translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a), -hub_h - 0.1])
            cylinder(d=m3_clear, h=hub_h + outer_carrier_thick + 2);
    }
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=outer_carrier_thick + 1);
    }
    for (i = [0 : brace_n-1]) {
        a = i * 360 / brace_n + 15;
        translate([brace_r*cos(a), brace_r*sin(a), -0.1])
            cylinder(d=brace_d, h=outer_carrier_thick + 1);
    }
    translate([0, 0, -hub_h - 0.02]) cylinder(d=bearing_d, h=bearing_h);
}
