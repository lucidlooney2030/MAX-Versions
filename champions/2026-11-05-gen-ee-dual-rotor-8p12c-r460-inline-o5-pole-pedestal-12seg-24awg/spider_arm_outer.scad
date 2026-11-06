// Gen-EE — TOP SPIDER ARM OUTER HALF (2026-11-05). Print x3, flat. Mid-span splice -> frame-rod end on top_standoff.
include <parameters.scad>;
$fn = 48;
arm_r0 = 13.0;
arm_r1 = flange_bolt_r + 9.0;
arm_mid = (arm_r0 + arm_r1) / 2;
splice_lap = 20.0;
arm_ro0 = arm_mid - splice_lap / 2;
difference() {
    hull() {
        translate([arm_ro0 + arm_w / 2, 0, 0]) cylinder(d=arm_w, h=arm_t);
        translate([arm_r1 - arm_w / 2, 0, 0]) cylinder(d=arm_w, h=arm_t);
    }
    translate([flange_bolt_r, 0, -0.1]) cylinder(d=m3_clear, h=arm_t + 1, $fn=24);
    translate([arm_mid - 5, 0, -0.1]) cylinder(d=m3_clear, h=arm_t + 1, $fn=24);
    translate([arm_mid + 5, 0, -0.1]) cylinder(d=m3_clear, h=arm_t + 1, $fn=24);
}
