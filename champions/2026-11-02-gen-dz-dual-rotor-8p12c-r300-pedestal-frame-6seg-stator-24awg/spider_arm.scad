// Gen-DZ — TOP SPIDER ARM (2026-11-02 pedestal frame). Print x3, flat. One arm per frame rod at arm_angles;
// inner end bolts on top of the spider hub (2x M3), outer end sits on a top standoff over the stator and is clamped by the frame-rod nut.
include <parameters.scad>;
$fn = 48;
arm_r0 = 13.0;   // inner end (clears the shaft + a drive coupling)
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
