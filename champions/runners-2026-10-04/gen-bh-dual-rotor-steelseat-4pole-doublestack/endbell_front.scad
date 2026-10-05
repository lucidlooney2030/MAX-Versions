// Gen-BH — front endbell: frame bolts (flange_bolt_n x M3 @ R=flange_bolt_r, between coil stations),
// 608 seat in the boss. Assemble with the FLAT face toward the rotor and the bearing boss OUTWARD.
include <parameters.scad>;
$fn = 64;
module frame_holes(h) {
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n + flange_bolt_offset;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1]) cylinder(d=m3_clear, h=h + 0.2);
    }
}

difference() {
    union() {
        cylinder(d=endbell_od, h=endbell_thick);
        translate([0, 0, -bearing_h + 0.01]) cylinder(d=30, h=bearing_h);
        for (s = [-1, 1])
            translate([s*endbell_od*0.28 - 12, -endbell_od/2 - 1, 0]) cube([24, 30, 14]);
    }
    translate([0, 0, -bearing_h - 0.1]) cylinder(d=endbell_shaft_clear, h=50);
    translate([0, 0, -bearing_h - 0.02]) cylinder(d=bearing_d, h=bearing_h);
    translate([0, 0, -20]) frame_holes(60);
    // window so you can see / reach the rotor rim index notch
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a), -20]) cylinder(d=brace_d, h=50);
}
