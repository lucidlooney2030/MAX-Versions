// Gen-V pancake former — print ×12
// WOUND: wind_build_axial=0.63, coil_envelope_h=4.76, magnet↔wound=0.7
include <parameters.scad>;
$fn = 48;

module sector_2d(r_in, r_out, ang) {
    polygon([
        for (a = [-ang/2 : ang/16 : ang/2]) [r_in*cos(a), r_in*sin(a)],
        for (a = [ang/2 : -ang/16 : -ang/2]) [r_out*cos(a), r_out*sin(a)]
    ]);
}
module flange() {
    linear_extrude(flange_t) offset(r=wall) sector_2d(coil_id_r, coil_od_r, span_deg);
}
difference() {
    union() {
        flange();
        translate([0, 0, flange_t])
            linear_extrude(former_web)
                difference() {
                    offset(r=wall) sector_2d(coil_id_r, coil_od_r, span_deg);
                    sector_2d(coil_id_r + 0.01, coil_od_r - 0.01, span_deg - 1.5);
                }
        translate([0, 0, flange_t + former_web]) flange();
        translate([coil_id_r - tab_len - 2, -3.5, 0])
            cube([tab_len + 2, 7, former_bare_h]);
    }
    translate([coil_od_r - 2, -slot_w/2, flange_t])
        cube([wall + 4, slot_w, former_web + 0.1]);
    translate([coil_id_r - tab_len/2 - 1, 0, -0.1])
        cylinder(d=mount_hole, h=former_bare_h + 1);
}
