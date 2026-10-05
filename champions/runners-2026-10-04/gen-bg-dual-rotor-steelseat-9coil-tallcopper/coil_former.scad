// Gen-BG — bobbin BASE (bottom flange + hub). Print x9, flange down. Wind 26 AWG x 364 t around
// the hub with the LID glued on (coil_lid.stl). Copper lives ONLY between the flanges (no proud winds).
include <parameters.scad>;
$fn = 48;
module sector_2d(r_in, r_out, ang) {
    polygon([
        for (a = [-ang/2 : ang/24 : ang/2]) [r_in*cos(a), r_in*sin(a)],
        for (a = [ang/2 : -ang/24 : -ang/2]) [r_out*cos(a), r_out*sin(a)]
    ]);
}
module footprint_2d() { offset(r=wall) sector_2d(coil_id_r, coil_od_r, span_deg); }
module hub_2d()       { offset(delta=-coil_core_inset) sector_2d(coil_id_r, coil_od_r, span_deg); }

union() {
    linear_extrude(flange_t) footprint_2d();
    translate([0, 0, flange_t - 0.01]) linear_extrude(former_web + 0.01) hub_2d();
}
