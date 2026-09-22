// Gen-U 16-pole vernier rotor + claw Ø5 assists; print ×1
// Optional steel washers in back-face registers (BOM)
include <parameters.scad>;
$fn = 80;
module large_poles() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n;
        translate([R_large*cos(a), R_large*sin(a), carrier_thick - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}
module claw_smalls() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n;
        for (r = [R_claw_inner, R_claw_mid, R_claw_outer])
            translate([r*cos(a), r*sin(a), carrier_thick - pocket_h])
                cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
}
module steel_registers() {
    // 8 washer pockets on back face for mild-steel return
    for (i = [0 : 7]) {
        a = i * 45 + 11.25;
        translate([steel_register_r*cos(a), steel_register_r*sin(a), -0.05])
            cylinder(d=steel_washer_d + 0.4, h=steel_washer_pocket + 0.1);
    }
}
difference() {
    union() {
        cylinder(d=carrier_od, h=carrier_thick);
        translate([0, 0, -hub_h + 0.01]) cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1])
        cylinder(d=shaft_bore, h=hub_h + carrier_thick + 2);
    large_poles();
    claw_smalls();
    steel_registers();
    for (i = [0 : bolt_n_inner-1]) {
        a = i * 360 / bolt_n_inner;
        translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a), -hub_h - 0.1])
            cylinder(d=m3_clear, h=hub_h + carrier_thick + 2);
    }
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=carrier_thick + 1);
    }
    translate([0, 0, -hub_h - 0.02]) cylinder(d=bearing_d, h=bearing_h);
}
