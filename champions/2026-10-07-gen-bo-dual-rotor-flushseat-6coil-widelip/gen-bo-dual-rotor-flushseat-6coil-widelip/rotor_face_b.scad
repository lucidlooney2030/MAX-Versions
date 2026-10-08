// Gen-BO — rotor face B: 8xO20 (x1 high) @ R_large + 24xO5 assist pockets, all THROUGH the
// carrier so the magnets sit directly on the steel back-iron disc (steel_backiron_disc.dxf, 4.76 mm).
// Print x1, flat face on the bed, hub up. CLOCKING: pockets at i*360/large_n + rotor_b_offset_deg (= 0):
// rotor B's magnets sit DIRECTLY opposite rotor A's. KEY: D-flat bore, flat at angle 0 = pocket 0 = rim
// index notch. B is the same print, flipped to face A: A pocket 0 shows N to the stator, B pocket 0 S.
// Hole map (inner/outer M3, M4 brace holes, notch) is flip-symmetric and identical to the steel disc.
include <parameters.scad>;
$fn = 72;
// D-flat keyed bore: flat faces +X (angle 0 = magnet pocket 0 = index notch)
module dflat_bore(h) {
    intersection() {
        cylinder(d=shaft_bore, h=h);
        translate([-shaft_bore, -shaft_bore, 0]) cube([shaft_bore + dflat_x, 2*shaft_bore, h]);
    }
}
module rotor_holes_2d() {
    for (a = bolt_inner_angles) translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a)]) circle(d=m3_clear);
    for (a = bolt_outer_angles) translate([bolt_r_outer*cos(a), bolt_r_outer*sin(a)]) circle(d=m3_clear);
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a)]) circle(d=brace_d);
    translate([carrier_od/2, 0]) circle(d=index_notch_d, $fn=24);
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
        translate([R_large*cos(a), R_large*sin(a), -0.1]) cylinder(d=large_pocket_d, h=carrier_thick + 0.2);
        b = a + 180 / large_n;
        for (r = small_r_list)
            translate([r*cos(b), r*sin(b), -0.1]) cylinder(d=small_pocket_d, h=carrier_thick + 0.2);
    }
    translate([0, 0, -0.1]) linear_extrude(carrier_thick + 0.2) rotor_holes_2d();
    translate([0, 0, -(steel_t + 1.0 + hub_insert_d/2)]) rotate([0, 90, 0]) cylinder(d=hub_insert_d, h=hub_od, $fn=24);
}
