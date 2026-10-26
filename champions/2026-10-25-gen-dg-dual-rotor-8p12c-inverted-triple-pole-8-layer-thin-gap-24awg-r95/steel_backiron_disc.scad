// Gen-DG — STEEL back-iron disc (structural rotor), 2D outline for laser / waterjet cutting (export DXF). Qty 2.
// Mild steel (S235 / A36 / 1008-1018 CRS) 4.76 mm, OD = carrier_od, centre hole slips over the hub tube. Holes:
// hub clamp M3 at R bolt_r_inner, M4 brace holes at R brace_r, magnet-ring clamp M3 at R bolt_r_outer (inter-pole), index notch at +X.
// Magnets drop through the ring pockets onto this disc; epoxy them to it.
include <parameters.scad>;
$fn = 96;
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
    circle(d=carrier_od);
    circle(d=steel_center_hole);
    for (a = bolt_inner_angles) translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a)]) circle(d=m3_clear);
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a)]) circle(d=brace_d);
    ring_holes_2d();
}
