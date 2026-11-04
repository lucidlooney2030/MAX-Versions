// Gen-DZ — 608 INNER-RACE SPACER (2026-11-02). Print x2 (one under the lower collar on the pedestal bearing, one between the
// upper collar and the top bearing). Touches ONLY the inner race (Ø < 12 mm), so the collar never rubs the seal / outer race.
include <parameters.scad>;
$fn = 64;
difference() {
    cylinder(d=race_spacer_od, h=race_spacer_h);
    translate([0, 0, -0.1]) cylinder(d=race_spacer_id, h=race_spacer_h + 0.2);
}
