// Gen-BH — fit coupon: O20/O5 THROUGH pockets at carrier thickness (test on a steel offcut), 608 seat,
// D-flat bore, gap shim, and one bobbin-bay slice (bobbin footprint + bay_clear) to test former fit.
include <parameters.scad>;
$fn = 48;
// D-flat keyed bore: flat faces +X (angle 0 = magnet pocket 0 = index notch)
module dflat_bore(h) {
    intersection() {
        cylinder(d=shaft_bore, h=h);
        translate([-shaft_bore, -shaft_bore, 0]) cube([shaft_bore + dflat_x, 2*shaft_bore, h]);
    }
}
module sector_2d(r_in, r_out, ang) {
    polygon([
        for (a = [-ang/2 : ang/24 : ang/2]) [r_in*cos(a), r_in*sin(a)],
        for (a = [ang/2 : -ang/24 : -ang/2]) [r_out*cos(a), r_out*sin(a)]
    ]);
}
module footprint_2d() { offset(r=wall) sector_2d(coil_id_r, coil_od_r, span_deg); }
module hub_2d()       { offset(delta=-coil_core_inset) sector_2d(coil_id_r, coil_od_r, span_deg); }

block_w = 40; block_d = 28; block_h = 14;
difference() {
    cube([block_w, block_d, block_h]);
    translate([12, block_d/2, -0.02]) cylinder(d=bearing_d, h=bearing_h);
    translate([12, block_d/2, -0.1]) dflat_bore(block_h + 1);
}
translate([0, block_d + 3, 0]) difference() {
    cube([40, 26, carrier_thick]);
    translate([13, 13, -0.1]) cylinder(d=large_pocket_d, h=carrier_thick + 0.2);
    translate([32, 13, -0.1]) cylinder(d=small_pocket_d, h=carrier_thick + 0.2);
}
translate([block_w + 4, 4, 0])
    difference() {
        cylinder(d=spacer_pad_od, h=gap_spacer_h);
        translate([0, 0, -0.1]) cylinder(d=spacer_pad_id, h=gap_spacer_h + 0.2);
    }
// bay slice: 3 mm tall ring section of the stator bay around one footprint (tests bobbin drop-in fit)
translate([-coil_id_r + 70, 0, 0]) difference() {
    linear_extrude(3) offset(r=bay_clear + 2) footprint_2d();
    translate([0, 0, -0.1]) linear_extrude(3.2) offset(r=bay_clear) footprint_2d();
}
