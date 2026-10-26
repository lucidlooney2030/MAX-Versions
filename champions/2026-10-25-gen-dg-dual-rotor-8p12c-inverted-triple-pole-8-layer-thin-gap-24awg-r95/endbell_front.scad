// Gen-DG — front BEARING BRIDGE (bar endbell, 2026-10-10): a 608 boss on a 20 mm wide bar that spans the
// two frame rods at 45 deg and 45+180 deg (R = flange_bolt_r). The front bridge uses the rods at 45/225 deg, the rear
// bridge the rods at 135/315 deg, so the two bridges cross at 90 deg and the stator is held at 4 points.
// A bar instead of a full disc is what lets this big-ring kit fit ONE 410 mm plate. Print flat face DOWN (boss up, no supports).
// Brace holes (temporary M4 jack rods, R = brace_r) sit on the bar axis.
include <parameters.scad>;
$fn = 64;
bar_w = 20;
bar_len = 2 * (flange_bolt_r + 9);
module bar_2d() { offset(r=8) offset(delta=-8) square([bar_len, bar_w], center=true); }
difference() {
    rotate([0, 0, 45]) union() {
        linear_extrude(endbell_thick) bar_2d();
        translate([0, 0, -bearing_h + 0.01]) cylinder(d=30, h=bearing_h);
    }
    translate([0, 0, -bearing_h - 0.1]) cylinder(d=endbell_shaft_clear, h=50);
    translate([0, 0, -bearing_h - 0.02]) cylinder(d=bearing_d, h=bearing_h);
    for (s = [0, 180]) rotate([0, 0, 45 + s]) translate([flange_bolt_r, 0, -20]) cylinder(d=m3_clear, h=60);
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a), -20]) cylinder(d=brace_d, h=50);
}
