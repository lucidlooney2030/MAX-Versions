// Gen-Y rear endbell — Gen-E 6× M3 @ R=72
include <parameters.scad>;
$fn = 64;
difference() {
    union() {
        cylinder(d=endbell_od, h=endbell_thick);
        translate([0, 0, -bearing_h + 0.01]) cylinder(d=30, h=bearing_h);
        for (s = [-1, 1])
            translate([s*(endbell_od/2 - 10) - 12, -endbell_od/2 - 1, 0])
                cube([24, 12, 14]);
    }
    translate([0, 0, -bearing_h - 0.1]) cylinder(d=endbell_shaft_clear, h=50);
    translate([0, 0, -bearing_h - 0.02]) cylinder(d=bearing_d, h=bearing_h);
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -20])
            cylinder(d=m3_clear, h=50);
    }
    for (i = [0 : brace_n-1]) {
        a = i * 360 / brace_n + 15;
        translate([brace_r*cos(a), brace_r*sin(a), -20])
            cylinder(d=brace_d, h=50);
    }
}
