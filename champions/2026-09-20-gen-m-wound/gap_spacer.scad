// Gen-M gap spacer PAD — print ×12 (6 per side)
// Height = run_clear + wind_build_axial so magnet→WOUND = run_clear after wind.
// DO NOT size from bare former.
include <parameters.scad>;
$fn = 48;
h = gap_spacer_h; // 1.795 mm
difference() {
    cylinder(d=spacer_pad_od, h=h);
    translate([0, 0, -0.1]) cylinder(d=spacer_pad_id, h=h + 0.2);
}
