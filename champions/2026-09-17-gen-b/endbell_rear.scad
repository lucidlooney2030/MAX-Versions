// Gen-A rear endbell — mirror of front + longer hub for collar

/* ===== named parameters ===== */
od              = 130.0;
thick           = 12.0;
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
hub_extra       = 8.0;
$fn = 72;

difference() {
    union() {
        cylinder(d=od, h=thick);
        translate([0, 0, thick - 0.01])
            cylinder(d=28, h=hub_extra);
        for (s = [-1, 1])
            translate([s*(od/2 - 8) - foot_w/2, -od/2 - 2, 0])
                cube([foot_w, foot_h, foot_z]);
    }
    translate([0, 0, -0.05])
        cylinder(d=bearing_od, h=bearing_h + 0.1);
    translate([0, 0, -0.1])
        cylinder(d=shaft_clear, h=thick + hub_extra + 1);
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
    for (s = [-1, 1])
        translate([s*(od/2 - 8), -od/2 + 5, foot_z/2])
            rotate([90, 0, 0]) cylinder(d=4.3, h=20);
}
