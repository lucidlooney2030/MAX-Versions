// Gen-BT — assembly gap shim, h = run_clear (rotor face -> flange); copper is inside the flanges
include <parameters.scad>;
$fn = 48;
difference() {
    cylinder(d=spacer_pad_od, h=gap_spacer_h);
    translate([0, 0, -0.1]) cylinder(d=spacer_pad_id, h=gap_spacer_h + 0.2);
}
