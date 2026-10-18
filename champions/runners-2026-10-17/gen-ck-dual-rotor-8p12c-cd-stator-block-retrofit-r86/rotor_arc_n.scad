// Gen-CK — rotor MAGNET-CARRIER ARC — variant "N" (2026-10-16). Print x8 (4 per rotor; rotor A and rotor B use the same prints).
// Each arc covers seg_deg = 360/n_seg and holds ONE pole: 1x O20x5 N52 through-pocket at R_large + 1x N42 20x10x5 BLOCK pocket (10 radial x 20 tangential) at R block_R_list, same polarity as the disc + a radial column of 3 DIAMETRIC O5x5 through-pockets
// (R_small_inner/mid/outer) on the inter-pole angle on the arc CW side. O5 rule (physics_scorer Halbach sign, both rotors):
// every O5 N-side points TANGENTIALLY toward the neighbouring O20 whose STATOR-facing side is S.
//   "N" arc (its O20 shows N to the stator): O5 arrows point AWAY from its O20 (CW).  "S" arc: arrows point TOWARD its O20 (CCW).
// Through-pockets: every magnet sits directly on the 4.76 mm mild-steel disc (the structural rotor); epoxy them to it.
// CLOCKING: pockets at i*360/large_n + rotor_b_offset_deg (= 0). The clamp-bolt map (bolt_outer_angles, R bolt_r_outer) has the
// same 45-deg symmetry as the pole map, so an arc can only bolt down with its pole on a pole angle; pocket 0 = the pocket over the
// STEEL index notch (clocked to the hub D-flat). Rotor B arcs are the same prints turned over to face rotor A.
// Print stator face UP (countersinks + engraving up), flat, no supports. Rectangular block pockets have corner reliefs.
include <parameters.scad>;
$fn = 96;
module ring_holes_2d() {
    for (a = bolt_outer_angles) translate([bolt_r_outer*cos(a), bolt_r_outer*sin(a)]) circle(d=m3_clear);
    translate([carrier_od/2, 0]) circle(d=index_notch_d, $fn=24);
}
module hub_holes_2d() {
    for (a = bolt_inner_angles) translate([bolt_r_inner*cos(a), bolt_r_inner*sin(a)]) circle(d=m3_clear);
    for (a = brace_angles) translate([brace_r*cos(a), brace_r*sin(a)]) circle(d=brace_d);
    translate([hub_flange_od/2, 0]) circle(d=index_notch_d, $fn=24);
}
module csk(r, angles) {   // M3 countersunk (ISO 10642, 90 deg) head pocket on the STATOR face, head 0.3 mm below the face
    for (a = angles) translate([r*cos(a), r*sin(a), 0]) {
        translate([0, 0, carrier_thick - 0.3 - csk_depth - 0.2]) cylinder(d1=m3_clear - 0.4, d2=csk_d, h=csk_depth + 0.2 + 0.01, $fn=40);
        translate([0, 0, carrier_thick - 0.3]) cylinder(d=csk_d, h=0.4, $fn=40);
    }
}

arrow_dir = -1;   // O5 arrow: +1 = CCW (toward this arc's O20), -1 = CW (away from it), viewed on the stator face
carrier_web = 2.4;   // 2026-10-16 LOBED carrier: >= 2.4 mm PLA (6 perimeters) around every pocket / bolt, nothing else
spine_half  = 4.0;   // 8 mm wide spine along R_large ties pole lobe, O5 column and clamp bolts together
module sector_2d_arc() {
    a0 = seg_start + seg_kerf_deg / 2; a1 = seg_start + seg_deg - seg_kerf_deg / 2;
    polygon(concat(
        [for (k = [0 : 48]) let(t = a0 + (a1 - a0) * k / 48) [(carrier_od/2) * cos(t), (carrier_od/2) * sin(t)]],
        [for (k = [48 : -1 : 0]) let(t = a0 + (a1 - a0) * k / 48) [ring_ir * cos(t), ring_ir * sin(t)]]));
}
module lobes_2d() {
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + rotor_b_offset_deg;
        hull() {   // pole lobe: O20 (+ its N42 block)
            translate([R_large*cos(a), R_large*sin(a)]) circle(r=large_pocket_d/2 + carrier_web);
            for (k = [0 : len(block_R_list) - 1]) if (len(block_R_list) > 0)
                rotate([0, 0, a + block_angle_list[k]]) translate([block_R_list[k], 0])
                    square([block_radial + block_pocket_clear + 2*carrier_web, block_tangential + block_pocket_clear + 2*carrier_web], center=true);
        }
        if (len(small_r_list) > 0) hull() for (r = small_r_list)
            translate([r*cos(a + 180/large_n), r*sin(a + 180/large_n)]) circle(r=small_pocket_d/2 + carrier_web, $fn=32);
    }
    for (a = bolt_outer_angles) translate([bolt_r_outer*cos(a), bolt_r_outer*sin(a)]) circle(r=csk_d/2 + 1.7, $fn=40);
    difference() { circle(r=R_large + spine_half); circle(r=R_large - spine_half); }
}
module arc_2d() {
    intersection() { sector_2d_arc(); lobes_2d(); }
}
module arrow_2d(L) {   // along +Y (tangential CCW at angle 0), centred
    translate([-0.6, -L/2]) square([1.2, L - 3]);
    translate([0, L/2]) polygon([[-2.0, -3.2], [2.0, -3.2], [0, 0]]);
}
module block_pocket(r, a) {
    bw = block_radial + block_pocket_clear; bt = block_tangential + block_pocket_clear;
    rotate([0, 0, a]) translate([r, 0, carrier_thick / 2]) {
        cube([bw, bt, carrier_thick + 0.2], center=true);
        for (sx = [-1, 1], sy = [-1, 1]) translate([sx * (bw/2 - 0.2), sy * (bt/2 - 0.2), 0]) cylinder(d=1.2, h=carrier_thick + 0.2, center=true, $fn=16);
    }
}
difference() {
    linear_extrude(carrier_thick) arc_2d();
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + rotor_b_offset_deg;
        translate([R_large*cos(a), R_large*sin(a), -0.1]) cylinder(d=large_pocket_d, h=carrier_thick + 0.2);
        for (k = [0 : len(block_R_list) - 1]) if (len(block_R_list) > 0) block_pocket(block_R_list[k], a + block_angle_list[k]);
        for (r = small_r_list) translate([r*cos(a + 180/large_n), r*sin(a + 180/large_n), -0.1]) cylinder(d=small_pocket_d, h=carrier_thick + 0.2, $fn=32);
    }
    for (a = bolt_outer_angles) translate([bolt_r_outer*cos(a), bolt_r_outer*sin(a), -0.1]) cylinder(d=m3_clear, h=carrier_thick + 0.2);
    csk(bolt_r_outer, bolt_outer_angles);
    // engraving on the stator face: pole letter (+ O5 magnetisation arrows in Halbach kits)
    ga = -180 / large_n;   // this arc's O5 column (CW side of its pole)
    translate([0, 0, carrier_thick - 0.4]) linear_extrude(0.5)
        rotate([0, 0, ga - 5]) translate([R_large, 0]) scale([1, arrow_dir]) arrow_2d(6.5);
    translate([0, 0, carrier_thick - 0.4]) linear_extrude(0.5)
        rotate([0, 0, (ga - 13) / 2]) translate([R_large, 0]) rotate([0, 0, -90])
            text("N", size=3.2, halign="center", valign="center", font="Liberation Sans:style=Bold");
}
