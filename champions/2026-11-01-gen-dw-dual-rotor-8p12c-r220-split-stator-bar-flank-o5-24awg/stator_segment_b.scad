// Gen-DW — SPLIT annular stator SEGMENT type B (2026-11-01). Print x2: segments A and B alternate around the ring (A, B, A, B).
// The full ring (stator_core.scad = assembled reference, NOT printable on a 410 mm bed) is cut at the coil-station MID angles
// stator_seg_j0 + k*360/stator_n_seg into stator_n_seg segments of 3 bays each. Each joint is a HALF-LAP stator_lap_deg either side of the
// joint line (inside the wide web between two bays): type A carries the BOTTOM half (z 0..stator_thick/2) at both ends, type B the TOP half.
// Join: epoxy the full lap faces + 2 x 1.75 mm filament pins (pin holes at R stator_lap_pin_r) + 1 x M3x16 + nyloc at R flange_bolt_r (outside the rotor OD).
// PRINT: type B FLIPPED (lead-groove / tab-ledge face DOWN on the bed) so its TOP-half lap tongues print on the bed; the 7 mm tab recesses and 0.9 mm lead grooves bridge. Brim on (thin inner rim + 0.8 mm flanges of the in-place bobbin bases).
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

seg_a = 360 / stator_n_seg;
module ring_body() {
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
}
module wedge(a0, a1, z0, h) {
    translate([0, 0, z0]) linear_extrude(h)
        polygon(concat([[0, 0]], [for (k = [0 : 40]) let(t = a0 + (a1 - a0) * k / 40) [stator_od * cos(t), stator_od * sin(t)]]));
}
module joint_holes(j) {
    for (r = stator_lap_pin_r) rotate([0, 0, j]) translate([r, 0, -0.1]) cylinder(d=pin_d, h=stator_thick + 1, $fn=24);
    rotate([0, 0, j]) translate([flange_bolt_r, 0, -0.1]) cylinder(d=m3_clear, h=stator_thick + 1, $fn=32);
}
typ = "B";
j0 = stator_seg_j0; j1 = j0 + seg_a; L = stator_lap_deg; th = stator_thick;
difference() {
    intersection() {
        ring_body();
        union() {
            wedge(j0 + L, j1 - L, -1, th + 2);
            if (typ == "A") { wedge(j0 - L, j0 + L + 0.01, -1, th / 2 + 1); wedge(j1 - L - 0.01, j1 + L, -1, th / 2 + 1); }
            else            { wedge(j0 - L, j0 + L + 0.01, th / 2, th / 2 + 1); wedge(j1 - L - 0.01, j1 + L, th / 2, th / 2 + 1); }
        }
    }
    joint_holes(j0); joint_holes(j1);
}
