// Gen-EB — TOP SPIDER HUB (2026-11-02 pedestal frame). Print x1. As modelled (= assembled) the bearing seat opens DOWNWARD toward
// rotor B; the print packs FLIP it (seat opening UP) so the seat needs no bridge. The upper 608 is pressed in from below,
// against the 2.8 mm floor. 3 spider arms bolt on top (2x M3x16 + nyloc each). Carries only lateral loads (the weight goes into the pedestal).
include <parameters.scad>;
$fn = 96;
difference() {
    cylinder(d=spider_hub_od, h=spider_hub_t);
    translate([0, 0, -0.1]) cylinder(d=bearing_d, h=bearing_h + 0.1);
    translate([0, 0, -0.1]) cylinder(d=endbell_shaft_clear, h=spider_hub_t + 1);
    for (a = arm_angles) for (r = arm_bolt_r) rotate([0, 0, a]) translate([r, 0, -0.1]) cylinder(d=m3_clear, h=spider_hub_t + 1, $fn=24);
    for (a = brace_angles) translate([brace_r * cos(a), brace_r * sin(a), -0.1]) cylinder(d=brace_d, h=spider_hub_t + 1, $fn=24);
    translate([spider_hub_od / 2, 0, -0.1]) cylinder(d=index_notch_d, h=spider_hub_t + 1, $fn=24);
}
