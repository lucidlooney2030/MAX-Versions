// Gen-BD — front endbell, Gen-E 6x M3 @ R=flange_bolt_r, 608 seat; braces flip-symmetric
include <parameters.scad>;
$fn = 64;
difference() {
    union() {
        cylinder(d=endbell_od, h=endbell_thick);
        translate([0, 0, -bearing_h + 0.01]) cylinder(d=30, h=bearing_h);
        for (s = [-1, 1])
            // stand feet (original feet floated 1 mm outside the disc = separate bodies); now bonded
            translate([s*endbell_od*0.28 - 12, -endbell_od/2 - 1, 0]) cube([24, 30, 14]);
    }
    translate([0, 0, -bearing_h - 0.1]) cylinder(d=endbell_shaft_clear, h=50);
    translate([0, 0, -bearing_h - 0.02]) cylinder(d=bearing_d, h=bearing_h);
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -20]) cylinder(d=m3_clear, h=50);
    }
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a), -20]) cylinder(d=brace_d, h=50);
}
