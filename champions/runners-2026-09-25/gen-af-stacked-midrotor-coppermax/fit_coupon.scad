// Gen-AF fit coupon — magnet pockets + 608 + spacer height
include <parameters.scad>;
$fn = 48;
block_w = 40; block_d = 28; block_h = 14;
difference() {
    cube([block_w, block_d, block_h]);
    translate([12, block_d/2, block_h - pocket_h])
        cylinder(d=large_pocket_d, h=pocket_h + 0.2);
    translate([28, block_d/2, block_h - pocket_h])
        cylinder(d=small_pocket_d, h=pocket_h + 0.2);
    translate([12, block_d/2, -0.02])
        cylinder(d=bearing_d, h=bearing_h);
    translate([12, block_d/2, -0.1])
        cylinder(d=shaft_bore, h=block_h + 1);
}
translate([block_w + 2, 4, 0])
    difference() {
        cylinder(d=spacer_pad_od, h=gap_spacer_h);
        translate([0, 0, -0.1]) cylinder(d=spacer_pad_id, h=gap_spacer_h + 0.2);
    }
