// Gen-EE — LOWER BEARING PEDESTAL (2026-11-02 pedestal frame). Print x1, foot DOWN, no supports.
// Screw it to the base board under the shaft axis (4x 4 mm wood screws). The lower 608 sits in the top seat flush with the top face;
// race spacer + shaft collar + rotor-A hub stand on its INNER race, so the whole rotor weight goes board -> pedestal -> bearing in compression.
include <parameters.scad>;
$fn = 96;
difference() {
    union() {
        cylinder(d=pedestal_foot_od, h=pedestal_foot_t);
        cylinder(d=pedestal_od, h=pedestal_h);
        // 45-degree fillet cone foot -> tube (printable, no overhang > 45)
        translate([0, 0, pedestal_foot_t - 0.01]) cylinder(d1=pedestal_od + 20, d2=pedestal_od, h=10);
    }
    translate([0, 0, pedestal_h - bearing_h]) cylinder(d=bearing_d, h=bearing_h + 0.1);
    translate([0, 0, -0.1]) cylinder(d=endbell_shaft_clear, h=pedestal_h + 1);
    for (a = [0 : 90 : 270]) rotate([0, 0, a + 45]) translate([pedestal_foot_od / 2 - 9, 0, -0.1]) {
        cylinder(d=wood_screw_d, h=pedestal_foot_t + 1, $fn=24);
        translate([0, 0, pedestal_foot_t - 2]) cylinder(d=8.5, h=3, $fn=32);
    }
}
