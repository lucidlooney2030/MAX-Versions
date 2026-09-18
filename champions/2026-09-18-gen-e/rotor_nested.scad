// Gen-E nested-ring AFPM rotor — print ×2 (front/rear, facing magnets)
// Per rotor: 6× Ø20 outer @ R=58 + 2× Ø20 inner @ R=26  (8 large × 2 rotors = 16)
// Per rotor: 24× Ø5×5 — outer-gap Halbach triplets (3×6=18) + inter-ring concentrators (6)
// NOT Gen-A single-pitch 8+8; nested two radii with inter-ring flux assist

large_d         = 20.0;
large_pocket_d  = 20.3;
pocket_h        = 5.2;

outer_n         = 6;
R_outer         = 58.0;
inner_n         = 2;
R_inner         = 26.0;

small_pocket_d  = 5.3;
// outer gap Halbach: 3 radial positions on each of 6 bisectors
R_halbach       = [48.0, 58.0, 68.0];
// inter-ring concentrators: 6 smalls at mid-radius on outer-pole rays
R_inter         = 42.0;

carrier_od      = 148.0;
carrier_thick   = 7.2;
hub_h           = 10.0;
hub_od          = 30.0;
shaft_bore      = 8.35;

steel_od        = 140.0;
steel_recess_h  = 2.5;
steel_id_clear  = 28.0;

bolt_r          = 36.0;
bolt_n          = 6;
outer_bolt_r    = 70.0;
outer_bolt_n    = 6;
m3_clear        = 3.5;
$fn = 96;

module large_pockets() {
    for (i = [0 : outer_n-1]) {
        a = i * 360 / outer_n;
        translate([R_outer*cos(a), R_outer*sin(a), carrier_thick - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
    for (i = [0 : inner_n-1]) {
        a = i * 360 / inner_n + 90; // offset vs outer for flux path variety
        translate([R_inner*cos(a), R_inner*sin(a), carrier_thick - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}

module small_pockets() {
    // Halbach triplets on outer inter-pole bisectors
    for (i = [0 : outer_n-1]) {
        a = i * 360 / outer_n + 180 / outer_n;
        for (r = R_halbach)
            translate([r*cos(a), r*sin(a), carrier_thick - pocket_h])
                cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
    // inter-ring concentrators on outer pole rays (between inner & outer rings)
    for (i = [0 : outer_n-1]) {
        a = i * 360 / outer_n;
        translate([R_inter*cos(a), R_inter*sin(a), carrier_thick - pocket_h])
            cylinder(d=small_pocket_d, h=pocket_h + 0.15);
    }
}

module bolts(r, n) {
    for (i = [0 : n-1]) {
        a = i * 360 / n;
        translate([r*cos(a), r*sin(a), -hub_h - 0.1])
            cylinder(d=m3_clear, h=hub_h + carrier_thick + 1);
    }
}

difference() {
    union() {
        cylinder(d=carrier_od, h=carrier_thick);
        translate([0, 0, -hub_h + 0.01])
            cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1])
        cylinder(d=shaft_bore, h=hub_h + carrier_thick + 1);
    large_pockets();
    small_pockets();
    translate([0, 0, -0.02])
        difference() {
            cylinder(d=steel_od, h=steel_recess_h);
            cylinder(d=steel_id_clear, h=steel_recess_h + 0.2);
        }
    bolts(bolt_r, bolt_n);
    bolts(outer_bolt_r, outer_bolt_n);
}

// echo inventory check: outer 6 + inner 2 = 8 large; halb 18 + inter 6 = 24 small
