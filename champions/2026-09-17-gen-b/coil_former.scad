// Gen-B pancake coil former — print ×12
// Narrower span for 12-coil 3φ; 30 AWG ~250 t OR 26 AWG ~120 t

/* ===== named parameters ===== */
coil_id_r       = 20.0;
coil_od_r       = 44.0;
span_deg        = 26.0;   // < 30° station
flange_t        = 1.0;
core_t          = 3.6;
wall            = 1.0;
slot_w          = 2.4;
mount_hole      = 3.5;
tab_len         = 7.0;
$fn = 64;

module sector_2d(r_in, r_out, ang) {
    polygon([
        for (a = [-ang/2 : ang/16 : ang/2]) [r_in*cos(a), r_in*sin(a)],
        for (a = [ang/2 : -ang/16 : -ang/2]) [r_out*cos(a), r_out*sin(a)]
    ]);
}

module flange() {
    linear_extrude(flange_t)
        offset(r=wall) sector_2d(coil_id_r, coil_od_r, span_deg);
}

difference() {
    union() {
        flange();
        translate([0, 0, flange_t])
            linear_extrude(core_t)
                difference() {
                    offset(r=wall) sector_2d(coil_id_r, coil_od_r, span_deg);
                    sector_2d(coil_id_r + 0.01, coil_od_r - 0.01, span_deg - 1.5);
                }
        translate([0, 0, flange_t + core_t]) flange();
        translate([coil_id_r - tab_len - 2, -3.5, 0])
            cube([tab_len + 2, 7, flange_t*2 + core_t]);
    }
    translate([coil_od_r - 2, -slot_w/2, flange_t])
        cube([wall + 4, slot_w, core_t + 0.1]);
    translate([coil_id_r - tab_len/2 - 1, 0, -0.1])
        cylinder(d=mount_hole, h=flange_t*2 + core_t + 1);
}
