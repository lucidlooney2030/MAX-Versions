// Gen-BD — rotor face B: 8xO20 @ R_large + 24xO5 assist; print x1 (magnet face DOWN on bed).
// CLOCKING: pockets at i*360/large_n + rotor_b_offset_deg (= 0): rotor B's magnets sit DIRECTLY opposite
// rotor A's. KEY: D-flat bore, flat at angle 0 = pocket 0 = rim index notch. Assembled rotors face each
// other (B is a flipped print): pocket 0 of A must carry N toward the stator, pocket 0 of B S toward the
// stator, alternating around (=> N faces S across the gap). Braces/bolts are flip-symmetric.
include <parameters.scad>;
$fn = 72;
// D-flat keyed bore: flat faces +X (angle 0 = magnet pocket 0 = index notch)
module dflat_bore(h) {
    intersection() {
        cylinder(d=shaft_bore, h=h);
        translate([-shaft_bore, -shaft_bore, 0]) cube([shaft_bore + dflat_x, 2*shaft_bore, h]);
    }
}

off = rotor_b_offset_deg;
difference() {
    union() {
        cylinder(d=carrier_od, h=carrier_thick);
        translate([0, 0, -hub_h + 0.01]) cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1]) dflat_bore(hub_h + carrier_thick + 2);
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + off;
        translate([R_large*cos(a), R_large*sin(a), carrier_thick - pocket_h]) cylinder(d=large_pocket_d, h=pocket_h + 0.15);
        b = a + 180 / large_n;
        for (r = [R_small_inner, R_small_mid, R_small_outer])
            translate([r*cos(b), r*sin(b), carrier_thick - pocket_h]) cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
    // index notch at angle 0 (pocket 0 / D-flat)
    translate([carrier_od/2, 0, -0.1]) cylinder(d=index_notch_d, h=carrier_thick + 1, $fn=24);
    for (a = bolt_inner_angles) translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a), -0.1]) cylinder(d=m3_clear, h=carrier_thick + 1);
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1]) cylinder(d=m3_clear, h=carrier_thick + 1);
    }
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a), -0.1]) cylinder(d=brace_d, h=carrier_thick + 1);
}
