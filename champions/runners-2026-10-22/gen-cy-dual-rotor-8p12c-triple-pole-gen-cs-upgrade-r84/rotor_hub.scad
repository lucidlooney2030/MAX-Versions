// Gen-CY — rotor HUB (x2, identical; 2026-10-14 nested pack): D-flat keyed bore (dflat, flat at +X = angle 0 =
// flange index notch = steel index notch = magnet pocket 0), a 58.0 mm flange that sits on the STATOR side of the steel
// inside the magnet ring (flush with the ring face, so the gap sleeve bears on it), and a hub tube that passes through the steel centre
// hole. 4 countersunk M3 at R bolt_r_inner clamp it to the steel (nyloc nuts behind the steel); the M4 brace holes (R brace_r) are
// the temporary jack-rod holes. Radial M3 heat-set insert below the steel bears on the D-flat. Print x2, flange DOWN (tube up).
include <parameters.scad>;
$fn = 72;
// D-flat keyed bore: flat faces +X (angle 0 = magnet pocket 0 = index notch)
module dflat_bore(h) {
    intersection() {
        cylinder(d=shaft_bore, h=h);
        translate([-shaft_bore, -shaft_bore, 0]) cube([shaft_bore + dflat_x, 2*shaft_bore, h]);
    }
}
module ring_holes_2d() {
    for (a = bolt_outer_angles) translate([bolt_r_outer*cos(a), bolt_r_outer*sin(a)]) circle(d=m3_clear);
    translate([carrier_od/2, 0]) circle(d=index_notch_d, $fn=24);
}
module hub_holes_2d() {
    for (a = bolt_inner_angles) translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a)]) circle(d=m3_clear);
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a)]) circle(d=brace_d);
    translate([hub_flange_od/2, 0]) circle(d=index_notch_d, $fn=24);
}
module csk(r, angles) {   // M3 countersunk (ISO 10642, 90 deg) head pocket on the STATOR face, head 0.3 mm below the face
    for (a = angles) translate([r*cos(a), r*sin(a), 0]) {
        translate([0, 0, carrier_thick - 0.3 - csk_depth - 0.2]) cylinder(d1=m3_clear - 0.4, d2=csk_d, h=csk_depth + 0.2 + 0.01, $fn=40);
        translate([0, 0, carrier_thick - 0.3]) cylinder(d=csk_d, h=0.4, $fn=40);
    }
}

difference() {
    union() {
        cylinder(d=hub_flange_od, h=carrier_thick);
        translate([0, 0, -hub_h + 0.01]) cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1]) dflat_bore(hub_h + carrier_thick + 2);
    translate([0, 0, -0.1]) linear_extrude(carrier_thick + 0.2) hub_holes_2d();
    csk(bolt_r_inner, bolt_inner_angles);
    translate([0, 0, -(steel_t + 1.0 + hub_insert_d/2)]) rotate([0, 90, 0]) cylinder(d=hub_insert_d, h=hub_od, $fn=24);
}
