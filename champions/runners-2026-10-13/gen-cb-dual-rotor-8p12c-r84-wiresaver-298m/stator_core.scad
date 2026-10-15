// Gen-CB — ANNULAR stator (2026-10-13 nested pack): 12 through-bays sized to the bobbin footprint (+bay_clear),
// tab ledges, lead grooves on the +Z face, and an OPEN CENTRE (r < stator_ir). The stator is static and held only by the
// frame rods outside the rotor OD, so the old solid centre carried nothing; opening it lets small parts print INSIDE it on
// the one plate, which is what lets this bigger machine fit the 410 mm bed. The temporary M4 brace rods pass through the
// open centre. Print x1, brim on (thin 4.0 mm inner rim + 1.2 mm webs).
include <parameters.scad>;
$fn = 96;
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
    translate([0, 0, -0.1]) cylinder(r=stator_ir, h=stator_thick + 1);
    for (i = [0 : coil_stations-1]) rotate([0, 0, i*360/coil_stations]) {
        translate([0, 0, -0.1]) linear_extrude(stator_thick + 0.2) offset(r=bay_clear) footprint_2d();
        translate([coil_od_r, -tab_w/2 - bay_clear, stator_thick - tab_h])
            cube([tab_len + 0.2 + bay_clear, tab_w + 2*bay_clear, tab_h + 0.1]);
        translate([coil_mount_r, 0, -0.1]) cylinder(d=pin_d, h=stator_thick + 1);
        for (y = [lead_y, -lead_y])
            translate([coil_od_r + tab_len, y - lead_slot_w/2, stator_thick - lead_groove_d])
                cube([stator_od, lead_slot_w, lead_groove_d + 0.1]);
    }
    frame_holes(stator_thick);
}
