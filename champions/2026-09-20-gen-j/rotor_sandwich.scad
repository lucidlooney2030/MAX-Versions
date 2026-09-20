// Gen-J dual-face sandwich rotor — print ×1
// +Z face: 8× Ø20 + 24× Ø5 Halbach; −Z face: 8× Ø20 + 24× Ø5 Halbach
// Gen-E endbell family (hub / shaft / 608)

large_pocket_d  = 20.3;
pocket_h        = 5.2;
large_n         = 8;
R_large         = 52.0;

small_pocket_d  = 5.3;
R_small         = [40.0, 52.0, 64.0]; // Halbach triplet per gap ×8 = 24/face

carrier_od      = 148.0;
carrier_thick   = 12.0;   // 5.2 + 1.6 web + 5.2
hub_h           = 10.0;
hub_od          = 30.0;
shaft_bore      = 8.35;

bolt_r          = 36.0;
bolt_n          = 6;
outer_bolt_r    = 70.0;
outer_bolt_n    = 6;
m3_clear        = 3.5;
bearing_d       = 21.85;
bearing_h       = 7.2;
$fn = 72;

module large_plus_z() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n;
        translate([R_large*cos(a), R_large*sin(a), carrier_thick - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}
module large_minus_z() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + 22.5; // offset vs +Z for independent stator harvest
        translate([R_large*cos(a), R_large*sin(a), -0.05])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}
module small_face(z0, ang_off) {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + 180/large_n + ang_off;
        for (r = R_small)
            translate([r*cos(a), r*sin(a), z0])
                cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
}

difference() {
    union() {
        cylinder(d=carrier_od, h=carrier_thick);
        translate([0, 0, -hub_h + 0.01])
            cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1])
        cylinder(d=shaft_bore, h=hub_h + carrier_thick + 2);
    large_plus_z();
    large_minus_z();
    small_face(carrier_thick - pocket_h, 0);
    small_face(-0.05, 22.5);
    for (i = [0 : bolt_n-1]) {
        a = i * 360 / bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -hub_h - 0.1])
            cylinder(d=m3_clear, h=hub_h + carrier_thick + 2);
    }
    for (i = [0 : outer_bolt_n-1]) {
        a = i * 360 / outer_bolt_n;
        translate([outer_bolt_r*cos(a), outer_bolt_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=carrier_thick + 1);
    }
    translate([0, 0, -hub_h - 0.02])
        cylinder(d=bearing_d, h=bearing_h);
}
