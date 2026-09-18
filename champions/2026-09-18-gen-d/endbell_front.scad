// Gen-D front endbell — 608 bearing + stator alignment

od              = 180.0;
thick           = 5.0;
bearing_d       = 21.85;
bearing_h       = 7.2;
shaft_clear     = 10.0;
stator_reg_d    = 168.2;      // slip over stator OD
stator_reg_h    = 4.0;
bolt_r          = 76.0;
bolt_n          = 6;
m3_clear        = 3.5;
$fn = 96;

difference() {
    union() {
        cylinder(d=od, h=thick);
        translate([0, 0, thick - 0.01])
            difference() {
                cylinder(d=stator_reg_d + 6, h=stator_reg_h);
                translate([0, 0, -0.1])
                    cylinder(d=stator_reg_d, h=stator_reg_h + 0.2);
            }
        // bearing boss
        translate([0, 0, -bearing_h + 0.01])
            cylinder(d=30, h=bearing_h);
    }
    translate([0, 0, -bearing_h - 0.1])
        cylinder(d=shaft_clear, h=bearing_h + thick + stator_reg_h + 1);
    translate([0, 0, -bearing_h - 0.02])
        cylinder(d=bearing_d, h=bearing_h);
    for (i = [0 : bolt_n-1]) {
        a = i * 360 / bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -bearing_h - 0.1])
            cylinder(d=m3_clear, h=40);
    }
}
