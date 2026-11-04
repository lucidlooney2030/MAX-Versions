// Gen-DZ — POST SHIM washer (2026-11-02): 0.4 mm levelling shim under the stator at a post (stack as needed). Print x12.
include <parameters.scad>;
$fn = 48;
difference() {
    cylinder(d=14, h=post_shim_t);
    translate([0, 0, -0.1]) cylinder(d=m3_clear, h=post_shim_t + 0.2);
}
