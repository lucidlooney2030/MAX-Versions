// Gen-CB — rotor B MAGNET-CARRIER ARC (2026-10-13 segmented nested pack). Print x8 per rotor (16 total
// for A+B; A and B arcs are the same print). Each arc covers seg_deg = 360/n_seg of the R_large ring and holds 1 O20 through-pockets
// + 1 countersunk M3 clamp holes (inter-pole, R bolt_r_outer) to the steel disc. The 4.76 mm mild-steel disc is the structural
// rotor; the separate rotor_hub (D-flat) bolts to it at R bolt_r_inner. Arcs pack around/inside the other parts on ONE plate,
// and any arc can be swapped/re-printed on its own (modular magnet carrier).
// CLOCKING: arc j spans [j*seg_deg + seg_start, (j+1)*seg_deg + seg_start - kerf]; pockets at i*360/large_n + rotor_b_offset_deg (= 0).
// The arc's bolt holes sit on the same 8-fold map as the pockets, so every arc position puts pockets on the same steel angles;
// pocket 0 = the pocket over the STEEL index notch (clocked to the hub D-flat). Rotor B arcs = same print, flipped to face A.
// Print countersinks UP (stator face up); the arc lies flat (5 mm), no supports.
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

off = rotor_b_offset_deg;
module arc_2d() {
    a0 = seg_start + seg_kerf_deg / 2; a1 = seg_start + seg_deg - seg_kerf_deg / 2;
    polygon(concat(
        [for (k = [0 : 48]) let(t = a0 + (a1 - a0) * k / 48) [(carrier_od/2) * cos(t), (carrier_od/2) * sin(t)]],
        [for (k = [48 : -1 : 0]) let(t = a0 + (a1 - a0) * k / 48) [ring_ir * cos(t), ring_ir * sin(t)]]));
}
difference() {
    linear_extrude(carrier_thick) arc_2d();
    for (i = [0 : large_n-1]) {
        a = i * 360 / large_n + off;
        translate([R_large*cos(a), R_large*sin(a), -0.1]) cylinder(d=large_pocket_d, h=carrier_thick + 0.2);
    }
    for (a = bolt_outer_angles) translate([bolt_r_outer*cos(a), bolt_r_outer*sin(a), -0.1]) cylinder(d=m3_clear, h=carrier_thick + 0.2);
    csk(bolt_r_outer, bolt_outer_angles);
}
