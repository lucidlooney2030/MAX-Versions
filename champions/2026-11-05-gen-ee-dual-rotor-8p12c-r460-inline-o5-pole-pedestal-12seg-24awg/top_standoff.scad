// Gen-EE — TOP STANDOFF (2026-11-02 pedestal frame): stator top face -> spider arm, on the 3 arm frame rods. Print x3.
// Same Ø as the old frame standoffs (standoff_od) because the rotor-B rim spins right beside it.
include <parameters.scad>;
$fn = 48;
difference() {
    cylinder(d=standoff_od, h=top_standoff_h);
    translate([0, 0, -0.1]) cylinder(d=m3_clear, h=top_standoff_h + 0.2);
}
