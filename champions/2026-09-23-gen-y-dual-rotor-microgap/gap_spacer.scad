// Gen-Y gap spacer — h = run_clear + wind_build_axial; print ×12
include <parameters.scad>;
$fn = 48;
difference() {
    cylinder(d=spacer_pad_od, h=gap_spacer_h);
    translate([0, 0, -0.1]) cylinder(d=spacer_pad_id, h=gap_spacer_h + 0.2);
}
