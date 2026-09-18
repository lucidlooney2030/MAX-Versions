// Gen-D outer stator shell — 12 bobbin slots for radial coils facing inward
// Air gap target ~1.0–1.5 mm over rotor OD magnets

slots           = 12;
stator_id       = 120.0;      // ID facing rotor (rotor OD 116 + ~2 mm airgap*2)
stator_od       = 168.0;
stator_h        = 28.0;
slot_depth      = 16.0;       // radial depth of coil window
slot_width      = 14.0;       // circumferential opening
yoke_thick      = 6.0;        // outer yoke
tooth_tip_w     = 8.0;

bolt_r          = 76.0;
bolt_n          = 6;
m3_clear        = 3.5;
mount_flange_t  = 4.0;

$fn = 96;

module slot_cut() {
    for (i = [0 : slots-1]) {
        a = i * 360 / slots;
        rotate([0, 0, a])
            translate([stator_id/2 + slot_depth/2 - 0.5, 0, stator_h/2])
                cube([slot_depth + 1, slot_width, stator_h + 0.2], center=true);
    }
}

difference() {
    union() {
        cylinder(d=stator_od, h=stator_h);
        // mounting flange
        translate([0, 0, -mount_flange_t + 0.01])
            cylinder(d=stator_od + 12, h=mount_flange_t);
    }
    translate([0, 0, -0.1])
        cylinder(d=stator_id, h=stator_h + 0.2);
    slot_cut();
    // flange ID
    translate([0, 0, -mount_flange_t - 0.1])
        cylinder(d=stator_id, h=mount_flange_t + 0.2);
    // flange bolts
    for (i = [0 : bolt_n-1]) {
        a = i * 360 / bolt_n;
        translate([(bolt_r)*cos(a), (bolt_r)*sin(a), -mount_flange_t - 0.1])
            cylinder(d=m3_clear, h=mount_flange_t + stator_h + 1);
    }
}
