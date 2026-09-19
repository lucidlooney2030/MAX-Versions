// Gen-G inner magnet hub — 4× Ø20 radial OUTWARD + 24× Ø5 Halbach on hub OD
// Magnets face outward toward annular stator. Print ×1.

large_pocket_d  = 20.3;
pocket_h        = 5.2;
large_n         = 4;
R_large         = 22.0;       // radial center; face OUT at ~24.6

small_pocket_d  = 5.3;
small_n         = 24;
R_small         = 28.5;       // Halbach assists on OD of hub rim

hub_rim_od      = 34.0;
hub_rim_id      = 12.0;
drum_h          = 28.0;

hub_od          = 30.0;
hub_h           = 10.0;
shaft_bore      = 8.35;
bolt_r          = 12.0;
bolt_n          = 4;
m3_clear        = 3.5;
bearing_d       = 21.85;
bearing_h       = 7.2;
$fn = 64;

module large_outward() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n;
        rotate([0, 0, a])
            translate([R_large, 0, drum_h/2])
                rotate([0, 90, 0])  // pocket opens outward (+R)
                    cylinder(d=large_pocket_d, h=pocket_h + 0.15, center=true);
    }
}

module small_od() {
    for (i = [0 : small_n-1]) {
        a = i * 360 / small_n;
        rotate([0, 0, a])
            translate([R_small, 0, drum_h/2])
                rotate([0, 90, 0])
                    cylinder(d=small_pocket_d, h=5.35, center=true);
    }
}

difference() {
    union() {
        cylinder(d=hub_rim_od, h=drum_h);
        // slight outer lip for small magnet wall
        cylinder(d=R_small*2 + 4, h=drum_h);
        translate([0, 0, -hub_h + 0.01])
            cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1])
        cylinder(d=shaft_bore, h=hub_h + drum_h + 2);
    // lighten core (keep solid enough for pockets)
    translate([0, 0, 3])
        cylinder(d=hub_rim_id, h=drum_h - 6);
    large_outward();
    small_od();
    for (i = [0 : bolt_n-1]) {
        a = i * 360 / bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -hub_h - 0.1])
            cylinder(d=m3_clear, h=hub_h + drum_h + 2);
    }
    translate([0, 0, -hub_h - 0.02])
        cylinder(d=bearing_d, h=bearing_h);
}
