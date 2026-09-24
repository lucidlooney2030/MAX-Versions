// Gen-Y mid stator — wound-sized bays; print ×1
include <parameters.scad>;
$fn = 72;

module coil_bay(i) {
    a = i * 360 / coil_stations;
    rotate([0, 0, a])
        translate([0, 0, -0.1])
            linear_extrude(stator_thick + 0.2)
                offset(r=bay_offset)
                    polygon([
                        for (t = [-bay_span/2 : 3 : bay_span/2])
                            [bay_r_in*cos(t), bay_r_in*sin(t)],
                        for (t = [bay_span/2 : -3 : -bay_span/2])
                            [bay_r_out*cos(t), bay_r_out*sin(t)]
                    ]);
}
difference() {
    cylinder(d=stator_od, h=stator_thick);
    translate([0, 0, -0.1]) cylinder(d=shaft_clear_stator, h=stator_thick + 1);
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
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1])
            cylinder(d=m3_clear, h=stator_thick + 1);
    }
}
