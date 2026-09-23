// Gen-V shaft collar — print ×2–4
include <parameters.scad>;
$fn = 64;
od = 22; id = shaft_bore; h = 10; set_d = 3.5;
difference() {
    cylinder(d=od, h=h);
    translate([0, 0, -0.1]) cylinder(d=id, h=h + 0.2);
    translate([0, 0, h/2]) rotate([0, 90, 0]) cylinder(d=set_d, h=od);
}
