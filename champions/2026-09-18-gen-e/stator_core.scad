// Gen-E nested-ring stator — 9 coil stations (3φ × 3), spanning outer ring primarily
// Dual air-gap AFPM between two nested rotors

coils           = 9;
stator_od       = 152.0;
stator_id       = 40.0;
core_t          = 4.0;
former_seat_w   = 28.0;
former_seat_d   = 22.0;
seat_depth      = 1.2;
bolt_r          = 72.0;
bolt_n          = 6;
m3_clear        = 3.5;
R_coil          = 58.0;       // align with outer magnet ring
$fn = 96;

module coil_seats() {
    for (i = [0 : coils-1]) {
        a = i * 360 / coils;
        translate([R_coil*cos(a), R_coil*sin(a), core_t - seat_depth])
            rotate([0, 0, a])
                cube([former_seat_d, former_seat_w, seat_depth + 0.2], center=true);
    }
}

difference() {
    cylinder(d=stator_od, h=core_t);
    translate([0, 0, -0.1])
        cylinder(d=stator_id, h=core_t + 0.2);
    coil_seats();
    for (i = [0 : bolt_n-1]) {
        a = i * 360 / bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=core_t + 0.2);
    }
    // mid ring clearance for inner magnets flux / wiring
    for (i = [0 : 5]) {
        a = i * 60 + 30;
        translate([42*cos(a), 42*sin(a), -0.1])
            cylinder(d=10, h=core_t + 0.2);
    }
}
