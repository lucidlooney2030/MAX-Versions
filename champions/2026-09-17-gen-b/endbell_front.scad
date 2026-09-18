// Gen-A front endbell — 608ZZ seat + brace + foot

/* ===== named parameters ===== */
od              = 130.0;
thick           = 10.0;
bearing_od      = 21.85;
bearing_h       = 7.5;
shaft_clear     = 10.0;
brace_r         = 55.0;
brace_d         = 4.3;
brace_n         = 4;
m3_clear        = 3.5;
flange_bolt_r   = 60.0;
flange_bolt_n   = 6;
foot_w          = 28.0;
foot_h          = 14.0;
foot_z          = 18.0;
$fn = 72;

difference() {
    union() {
        cylinder(d=od, h=thick);
        // mounting feet
        for (s = [-1, 1])
            translate([s*(od/2 - 8) - foot_w/2, -od/2 - 2, 0])
                cube([foot_w, foot_h, foot_z]);
    }
    translate([0, 0, thick - bearing_h])
        cylinder(d=bearing_od, h=bearing_h + 0.2);
    translate([0, 0, -0.1])
        cylinder(d=shaft_clear, h=thick + 1);
    for (i = [0 : brace_n-1]) {
        a = i * 360 / brace_n + 20;
        translate([brace_r*cos(a), brace_r*sin(a), -0.1])
            cylinder(d=brace_d, h=thick + 1);
    }
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=thick + 1);
    }
    // foot holes
    for (s = [-1, 1])
        translate([s*(od/2 - 8), -od/2 + 5, foot_z/2])
            rotate([90, 0, 0]) cylinder(d=4.3, h=20);
}
