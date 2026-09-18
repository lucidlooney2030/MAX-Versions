// Gen-B: IDENTICAL rotor to Gen-A (8 large + 24 small Halbach-assist per rotor). Print ×2.
// Gen-A/B dual-rotor magnet carrier — print ×2 identical
// 8× Ø20×5 large + 24× Ø5×5 Halbach-assist per rotor (48 total across pair)
// Small magnets: radial triplet on each inter-pole bisector (flux concentration)

/* ===== named parameters ===== */
large_d         = 20.0;
large_pocket_d  = 20.3;
large_h         = 5.0;
pocket_h        = 5.2;
large_count     = 8;
R_large         = 50.0;

small_d         = 5.0;
small_pocket_d  = 5.3;
small_per_gap   = 3;          // radial Halbach triplet
R_small         = [38.0, 48.0, 58.0];  // inner / mid / outer on bisector

carrier_od      = 128.0;
carrier_thick   = 7.2;
pocket_floor    = 1.6;
hub_h           = 10.0;
hub_od          = 30.0;
shaft_bore      = 8.35;

steel_od        = 118.0;
steel_recess_h  = 2.5;
steel_id_clear  = 28.0;

bolt_r          = 32.0;
bolt_n          = 6;
outer_bolt_r    = 58.0;
outer_bolt_n    = 6;
m3_clear        = 3.5;

$fn = 72;

module large_pockets() {
    for (i = [0 : large_count-1]) {
        a = i * 360 / large_count;
        translate([R_large*cos(a), R_large*sin(a), carrier_thick - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}

module small_pockets() {
    // bisector of each large-magnet gap
    for (i = [0 : large_count-1]) {
        a = i * 360 / large_count + 180 / large_count;
        for (r = R_small)
            translate([r*cos(a), r*sin(a), carrier_thick - pocket_h])
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
    // steel plate recess (−Z, opposite magnet face)
    translate([0, 0, -0.02])
        difference() {
            cylinder(d=steel_od, h=steel_recess_h);
            cylinder(d=steel_id_clear, h=steel_recess_h + 0.2);
        }
    bolts(bolt_r, bolt_n);
    bolts(outer_bolt_r, outer_bolt_n);
}

// N-marker pips on even large pockets (north face toward gap)
for (i = [0 : large_count-1]) if (i % 2 == 0) {
    a = i * 360 / large_count;
    translate([(R_large + 13)*cos(a), (R_large + 13)*sin(a), carrier_thick - 0.35])
        rotate([0, 0, a]) linear_extrude(0.4)
            polygon([[0, 0], [2.5, -1.2], [2.5, 1.2]]);
}
