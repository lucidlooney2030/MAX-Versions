// Gen-H stator — 12 pancake coil stations (3φ × 4) on outer ring
// Denser copper than Gen-E’s 9. Endbell family: Gen-E scale 6× @ R=72

coils           = 12;
stator_od       = 148.0;
stator_id       = 40.0;
core_t          = 4.0;
former_seat_w   = 24.0;
former_seat_d   = 20.0;
seat_depth      = 1.2;
bolt_r          = 72.0;
bolt_n          = 6;
m3_clear        = 3.5;
R_coil          = 56.0;       // align with outer magnet ring R=56
brace_r         = 55.0;
brace_d         = 4.3;
$fn = 64;

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
    // M4 brace holes
    for (i = [0 : 3]) {
        a = i * 90 + 45;
        translate([brace_r*cos(a), brace_r*sin(a), -0.1])
            cylinder(d=brace_d, h=core_t + 0.2);
    }
    // wiring / inner flux relief
    for (i = [0 : 5]) {
        a = i * 60 + 30;
        translate([40*cos(a), 40*sin(a), -0.1])
            cylinder(d=8, h=core_t + 0.2);
    }
}
