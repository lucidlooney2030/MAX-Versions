// Gen-CQ — fit coupon: O20/O5 THROUGH pockets at carrier thickness (test on a steel offcut), 608 seat,
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
// KEYHOLE pole pocket test (2026-10-18): O20 disc pocket + N42 20x10x5 block pocket merged (hull), as on the arcs.
// Drop a disc and a block in: they must push each other onto the two far walls and sit flat. Block pocket has corner reliefs.
translate([0, block_d + 3 + 26 + 3 + block_radial + block_pocket_clear + 6 + 3 + max(block_tangential, large_pocket_d) / 2 + 4, 0]) difference() {
    translate([-14.5, -(max(block_tangential, large_pocket_d) / 2 + 4), 0]) cube([14.5 + abs(block_R_list[0] - R_large) + block_radial / 2 + 4, max(block_tangential, large_pocket_d) + 8, carrier_thick]);
    translate([0, 0, -0.1]) {
        translate([disc_pocket_shift * sign(block_R_list[0] - R_large), 0, 0]) cylinder(d=large_pocket_d, h=carrier_thick + 0.2);
        translate([disc_pocket_shift * sign(block_R_list[0] - R_large), -(block_tangential + block_pocket_clear)/2, 0])
            cube([abs(block_R_list[0] - R_large) - abs(block_pocket_shift) + (block_radial + block_pocket_clear)/2 - disc_pocket_shift * sign(block_R_list[0] - R_large), block_tangential + block_pocket_clear, carrier_thick + 0.2]);
    }
}
// N42 20x10x5 BLOCK through-pocket test (block + block_pocket_clear, 1.2 mm corner reliefs), 2026-10-16
translate([0, block_d + 3 + 26 + 3, 0]) difference() {
    cube([block_tangential + block_pocket_clear + 6, block_radial + block_pocket_clear + 6, carrier_thick]);
    translate([3, 3, -0.1]) cube([block_tangential + block_pocket_clear, block_radial + block_pocket_clear, carrier_thick + 0.2]);
    for (x = [3.2, 3 + block_tangential + block_pocket_clear - 0.2], y = [3.2, 3 + block_radial + block_pocket_clear - 0.2])
        translate([x, y, -0.1]) cylinder(d=1.2, h=carrier_thick + 0.2, $fn=16);
}
