// Gen-BD — bobbin LID (top flange + locating tab). Print x12, flange face DOWN on the bed.
// CA-glue onto the hub top BEFORE winding. Tab is the lap joint into the stator tab pocket; 1.75 mm
// filament pin through pin hole + stator ledge, trim flush. Lead slots carry both leads flush.
include <parameters.scad>;
$fn = 48;
module sector_2d(r_in, r_out, ang) {
    polygon([
        for (a = [-ang/2 : ang/24 : ang/2]) [r_in*cos(a), r_in*sin(a)],
        for (a = [ang/2 : -ang/24 : -ang/2]) [r_out*cos(a), r_out*sin(a)]
    ]);
}
module footprint_2d() { offset(r=wall) sector_2d(coil_id_r, coil_od_r, span_deg); }
module hub_2d()       { offset(delta=-coil_core_inset) sector_2d(coil_id_r, coil_od_r, span_deg); }

difference() {
    union() {
        linear_extrude(flange_t) footprint_2d();
        // tab block (outside the copper, r > coil_od_r) reaches down to former mid-height
        translate([coil_od_r + 0.2, -tab_w/2, 0]) cube([tab_len, tab_w, tab_h]);
    }
    translate([coil_mount_r, 0, -0.1]) cylinder(d=pin_d, h=tab_h + 1);
    // two lead grooves on the outer (rotor-facing) side, depth lead_groove_d
    for (y = [lead_y, -lead_y])
        translate([coil_od_r - coil_core_inset - 0.5, y - lead_slot_w/2, -0.1])
            cube([coil_core_inset + tab_len + 2, lead_slot_w, lead_groove_d + 0.1]);
}
