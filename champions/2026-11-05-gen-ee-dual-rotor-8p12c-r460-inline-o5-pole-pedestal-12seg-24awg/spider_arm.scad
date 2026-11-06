// Gen-EE — TOP SPIDER ARM one-piece ASSEMBLY REFERENCE (2026-11-05). At R>=400 this exceeds the 410 mm bed —
// PRINT spider_arm_inner.stl + spider_arm_outer.stl (x3 of each) and bolt at the mid-span splice. This file is for fit checks only.
include <parameters.scad>;
$fn = 48;
arm_r0 = 13.0;
arm_r1 = flange_bolt_r + 9.0;
difference() {
    hull() {
        translate([arm_r0 + arm_w / 2, 0, 0]) cylinder(d=arm_w, h=arm_t);
        translate([arm_r1 - arm_w / 2, 0, 0]) cylinder(d=arm_w, h=arm_t);
    }
    for (r = arm_bolt_r) translate([r, 0, -0.1]) cylinder(d=m3_clear, h=arm_t + 1, $fn=24);
    translate([brace_r, 0, -0.1]) cylinder(d=brace_d, h=arm_t + 1, $fn=24);
    translate([flange_bolt_r, 0, -0.1]) cylinder(d=m3_clear, h=arm_t + 1, $fn=24);
}
