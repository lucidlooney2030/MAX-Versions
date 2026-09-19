// Gen-G outer Halbach drum — 12× Ø20 radial INWARD + 24× Ø5 Halbach on OD
// Magnets face inward toward annular stator. Print ×1.

large_pocket_d  = 20.3;
pocket_h        = 5.2;
large_n         = 12;
R_large         = 52.0;       // radial center of Ø20×5 (thickness along R, face IN)

small_pocket_d  = 5.3;
small_n         = 24;         // 2 per large-gap on OD
R_small         = 58.5;       // OD Halbach assists

drum_od         = 124.0;
drum_id         = 96.0;       // ID clear of inward magnet faces (~R_large - 2.6 - wall)
drum_h          = 28.0;

hub_od          = 30.0;
hub_h           = 10.0;
shaft_bore      = 8.35;
bolt_r          = 20.0;
bolt_n          = 6;
m3_clear        = 3.5;
bearing_d       = 21.85;
bearing_h       = 7.2;
spoke_n         = 6;
$fn = 64;

module large_inward() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n;
        rotate([0, 0, a])
            translate([R_large, 0, drum_h/2])
                rotate([0, -90, 0])  // pocket opens inward (-R)
                    cylinder(d=large_pocket_d, h=pocket_h + 0.15, center=true);
    }
}

module small_od_halbach() {
    for (i = [0 : small_n-1]) {
        a = i * 360 / small_n + 7.5; // offset into gaps / pole edges
        rotate([0, 0, a])
            translate([R_small, 0, drum_h/2])
                rotate([0, 90, 0])
                    cylinder(d=small_pocket_d, h=5.35, center=true);
    }
}

difference() {
    union() {
        difference() {
            cylinder(d=drum_od, h=drum_h);
            translate([0, 0, -0.1])
                cylinder(d=drum_id, h=drum_h + 0.2);
        }
        // spokes to hub
        for (i = [0 : spoke_n-1]) {
            a = i * 360 / spoke_n;
            rotate([0, 0, a])
                translate([drum_id/4 + 4, 0, drum_h/2])
                    cube([drum_id/2 - 6, 5.5, drum_h], center=true);
        }
        cylinder(d=hub_od, h=drum_h);
        translate([0, 0, -hub_h + 0.01])
            cylinder(d=hub_od, h=hub_h);
    }
    translate([0, 0, -hub_h - 0.1])
        cylinder(d=shaft_bore, h=hub_h + drum_h + 2);
    large_inward();
    small_od_halbach();
    for (i = [0 : bolt_n-1]) {
        a = i * 360 / bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -hub_h - 0.1])
            cylinder(d=m3_clear, h=hub_h + drum_h + 2);
    }
    translate([0, 0, -hub_h - 0.02])
        cylinder(d=bearing_d, h=bearing_h);
}
