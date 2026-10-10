// Gen-BR — stator, 6 through-bays sized to the bobbin footprint (+bay_clear), tab ledges, lead grooves
// on the +Z face. Print x1. Coil station i at i*360/coil_stations (station 0 on +X). Frame bolts sit
// BETWEEN stations (flange_bolt_offset) outside the rotor OD; brace holes are the temporary M4 jack rods.
include <parameters.scad>;
$fn = 72;
module sector_2d(r_in, r_out, ang) {
    polygon([
        for (a = [-ang/2 : ang/24 : ang/2]) [r_in*cos(a), r_in*sin(a)],
        for (a = [ang/2 : -ang/24 : -ang/2]) [r_out*cos(a), r_out*sin(a)]
    ]);
}
module footprint_2d() { offset(r=wall) sector_2d(coil_id_r, coil_od_r, span_deg); }
module hub_2d()       { offset(delta=-coil_core_inset) sector_2d(coil_id_r, coil_od_r, span_deg); }
module frame_holes(h) {
    for (i = [0 : flange_bolt_n-1]) {
        a = i * 360 / flange_bolt_n + flange_bolt_offset;
        translate([flange_bolt_r*cos(a), flange_bolt_r*sin(a), -0.1]) cylinder(d=m3_clear, h=h + 0.2);
    }
}

difference() {
    cylinder(d=stator_od, h=stator_thick);
    translate([0, 0, -0.1]) cylinder(d=shaft_clear_stator, h=stator_thick + 1);
    for (i = [0 : coil_stations-1]) rotate([0, 0, i*360/coil_stations]) {
        translate([0, 0, -0.1]) linear_extrude(stator_thick + 0.2) offset(r=bay_clear) footprint_2d();
        translate([coil_od_r, -tab_w/2 - bay_clear, stator_thick - tab_h])
            cube([tab_len + 0.2 + bay_clear, tab_w + 2*bay_clear, tab_h + 0.1]);
        translate([coil_mount_r, 0, -0.1]) cylinder(d=pin_d, h=stator_thick + 1);
        for (y = [lead_y, -lead_y])
            translate([coil_od_r + tab_len, y - lead_slot_w/2, stator_thick - lead_groove_d])
                cube([stator_od, lead_slot_w, lead_groove_d + 0.1]);
    }
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a), -0.1]) cylinder(d=brace_d, h=stator_thick + 1);
    frame_holes(stator_thick);
}
