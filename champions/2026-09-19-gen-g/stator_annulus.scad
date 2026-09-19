// Gen-G annular stator — 12 radial bobbin seats between inner hub & outer drum
// Air gap target 1.0–1.5 mm each side of coil pack

slots           = 12;
stator_id       = 36.0;       // clear of inner magnet OD (~29–31) + airgap margin
stator_od       = 92.0;       // clear of outer magnet ID (~46–49) - airgap
stator_h        = 30.0;
slot_depth      = 18.0;       // radial coil window
slot_width      = 12.0;
yoke_inner_t    = 4.0;
yoke_outer_t    = 5.0;

bolt_r          = 48.0;
bolt_n          = 6;
m3_clear        = 3.5;
flange_t        = 4.0;
flange_od       = 110.0;
$fn = 64;

module slots() {
    for (i = [0 : slots-1]) {
        a = i * 360 / slots;
        rotate([0, 0, a])
            translate([stator_id/2 + yoke_inner_t + slot_depth/2, 0, stator_h/2])
                cube([slot_depth + 0.5, slot_width, stator_h + 0.2], center=true);
    }
}

difference() {
    union() {
        cylinder(d=stator_od, h=stator_h);
        translate([0, 0, -flange_t + 0.01])
            cylinder(d=flange_od, h=flange_t);
    }
    translate([0, 0, -0.1])
        cylinder(d=stator_id, h=stator_h + 0.2);
    translate([0, 0, -flange_t - 0.1])
        cylinder(d=stator_id, h=flange_t + 0.2);
    slots();
    for (i = [0 : bolt_n-1]) {
        a = i * 360 / bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -flange_t - 0.1])
            cylinder(d=m3_clear, h=flange_t + stator_h + 1);
    }
}
