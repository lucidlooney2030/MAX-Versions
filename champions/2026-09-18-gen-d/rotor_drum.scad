// Gen-D radial-flux inner rotor — 12 OD poles + 4 end-face assists + 48 Halbach fillers
// Magnets on rotor OD face outward toward outer stator. Print ×1.

large_d         = 20.0;
large_pocket_d  = 20.3;
large_h         = 5.0;
pocket_h        = 5.2;
large_main      = 12;
R_large_center  = 50.0;       // radial center of Ø20×5 (thickness along R)

small_d         = 5.0;
small_pocket_d  = 5.3;
small_per_gap   = 4;
R_small_center  = 54.0;

drum_od         = 116.0;      // OD beyond small magnets + wall
drum_h          = 26.0;
core_id         = 28.0;       // lightening ID (leaves rim wall for pockets)

hub_od          = 34.0;
hub_h           = 12.0;
shaft_bore      = 8.35;

end_assist_n    = 4;
R_end_assist    = 30.0;

bolt_r          = 20.0;
bolt_n          = 6;
m3_clear        = 3.5;
bearing_pocket_d = 21.85;
bearing_pocket_h = 7.2;

rim_inner_r     = 42.0;       // keep solid rim from here out for magnet pockets
$fn = 96;

module large_radial_pockets() {
    for (i = [0 : large_main-1]) {
        a = i * 360 / large_main;
        rotate([0, 0, a])
            translate([R_large_center, 0, drum_h/2])
                rotate([0, 90, 0])
                    cylinder(d=large_pocket_d, h=pocket_h + 0.15, center=true);
    }
}

module small_halbach_pockets() {
    gap_span = 13.0;
    for (i = [0 : large_main-1]) {
        a0 = i * 360 / large_main + 180 / large_main;
        for (k = [0 : small_per_gap-1]) {
            pitch = gap_span / (small_per_gap - 1);
            off = (k - (small_per_gap-1)/2) * pitch;
            ang_off = off / R_small_center * 180 / PI;
            a = a0 + ang_off;
            rotate([0, 0, a])
                translate([R_small_center, 0, drum_h/2])
                    rotate([0, 90, 0])
                        cylinder(d=small_pocket_d, h=small_d + 0.35, center=true);
        }
    }
}

module end_assist_pockets() {
    for (i = [0 : end_assist_n-1]) {
        a = i * 360 / end_assist_n + 45;
        translate([R_end_assist*cos(a), R_end_assist*sin(a), drum_h - pocket_h])
            cylinder(d=large_pocket_d, h=pocket_h + 0.15);
    }
}

module bolts() {
    for (i = [0 : bolt_n-1]) {
        a = i * 360 / bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -hub_h - 0.1])
            cylinder(d=m3_clear, h=hub_h + drum_h + 2);
    }
}

difference() {
    union() {
        // rim ring (magnet carrier)
        difference() {
            cylinder(d=drum_od, h=drum_h);
            translate([0, 0, -0.1])
                cylinder(r=rim_inner_r, h=drum_h + 0.2);
        }
        // spokes connecting hub to rim
        for (i = [0 : 5]) {
            a = i * 60;
            rotate([0, 0, a])
                translate([rim_inner_r/2 + 4, 0, drum_h/2])
                    cube([rim_inner_r - 4, 6.0, drum_h], center=true);
        }
        // hub
        cylinder(d=hub_od, h=drum_h);
        translate([0, 0, -hub_h + 0.01])
            cylinder(d=hub_od, h=hub_h);
        // end plate for axial assists (partial disk)
        cylinder(d=72, h=3.2);
    }

    translate([0, 0, -hub_h - 0.1])
        cylinder(d=shaft_bore, h=hub_h + drum_h + 2);

    large_radial_pockets();
    small_halbach_pockets();
    end_assist_pockets();
    bolts();

    translate([0, 0, -hub_h - 0.02])
        cylinder(d=bearing_pocket_d, h=bearing_pocket_h);
}
