// Gen-U claw flux pad — optional spacer under steel washer; print ×8
include <parameters.scad>;
$fn = 48;
difference() {
    cylinder(d=claw_pad_od, h=claw_pad_h);
    translate([0, 0, -0.1]) cylinder(d=m3_clear, h=claw_pad_h + 0.2);
    translate([0, 0, claw_pad_h - steel_washer_pocket])
        cylinder(d=steel_washer_d + 0.3, h=steel_washer_pocket + 0.1);
}
