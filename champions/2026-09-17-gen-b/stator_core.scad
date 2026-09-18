// Gen-B stator — 12 coil stations, denser 3φ

/* ===== named parameters ===== */
stator_od       = 128.0;
stator_thick    = 7.5;
coil_stations   = 12;
coil_pocket_depth = 5.8;
shaft_clear     = 18.0;
bearing_od_pocket = 21.85;
bearing_seat_h  = 7.0;
m3_clear        = 3.5;
brace_r         = 56.0;
brace_d         = 4.3;
brace_n         = 4;
coil_mount_r    = 30.0;
former_span     = 26;
$fn = 72;

module coil_bay(i) {
    a = i * 360 / coil_stations;
    rotate([0, 0, a])
        translate([0, 0, stator_thick - coil_pocket_depth])
            linear_extrude(coil_pocket_depth + 0.2)
                offset(r=0.8)
                    polygon([
                        for (t = [-former_span/2 : 3 : former_span/2])
                            [24*cos(t), 24*sin(t)],
                        for (t = [former_span/2 : -3 : -former_span/2])
                            [46*cos(t), 46*sin(t)]
                    ]);
}

difference() {
    cylinder(d=stator_od, h=stator_thick);
    translate([0, 0, -0.1]) cylinder(d=shaft_clear, h=stator_thick + 1);
    translate([0, 0, -0.05]) cylinder(d=bearing_od_pocket, h=min(bearing_seat_h, stator_thick));
    for (i = [0 : coil_stations-1]) coil_bay(i);
    for (i = [0 : coil_stations-1]) {
        a = i * 360 / coil_stations;
        translate([coil_mount_r*cos(a), coil_mount_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=stator_thick + 1);
    }
    for (i = [0 : brace_n-1]) {
        a = i * 360 / brace_n + 15;
        translate([brace_r*cos(a), brace_r*sin(a), -0.1])
            cylinder(d=brace_d, h=stator_thick + 1);
    }
    for (i = [0 : 2]) {
        a = i * 120 + 8;
        translate([(stator_od/2 - 3)*cos(a), (stator_od/2 - 3)*sin(a), stator_thick/2])
            rotate([0, 0, a]) cube([8, 3.5, 4.5], center=true);
    }
}
