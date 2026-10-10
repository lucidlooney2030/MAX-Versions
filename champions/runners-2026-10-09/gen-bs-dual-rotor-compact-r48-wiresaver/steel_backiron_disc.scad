// Gen-BS — STEEL back-iron disc, 2D outline for laser / waterjet cutting (export DXF). Qty 2.
// Mild steel (S235 / A36 / 1008-1018 CRS) 4.76 mm thick, OD = carrier_od, centre hole slips over the
// rotor hub. Hole map identical to rotor_face_*.scad (M3 inner + outer, M4 brace, index notch at +X).
// Magnets (through-pockets) sit directly on this disc; epoxy them to it.
include <parameters.scad>;
$fn = 96;
module rotor_holes_2d() {
    for (a = bolt_inner_angles) translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a)]) circle(d=m3_clear);
    for (a = bolt_outer_angles) translate([bolt_r_outer*cos(a), bolt_r_outer*sin(a)]) circle(d=m3_clear);
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a)]) circle(d=brace_d);
    translate([carrier_od/2, 0]) circle(d=index_notch_d, $fn=24);
}

difference() {
    circle(d=carrier_od);
    circle(d=steel_center_hole);
    rotor_holes_2d();
}
