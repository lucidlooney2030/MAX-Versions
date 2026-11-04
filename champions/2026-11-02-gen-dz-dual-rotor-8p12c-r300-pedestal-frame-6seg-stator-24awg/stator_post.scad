// Gen-DZ — STATOR POST (2026-11-02 pedestal frame). Print x6, foot DOWN, no supports (45-degree transition).
// Board -> stator underside = post_h (printed post_h - post_shim_t + one post_shim). The top post_slim_h mm are slim (standoff_od) because the rotor-A rim spins right beside them
// (radial clearance = flange_bolt_r - standoff_od/2 - carrier_od/2); the thick part stays >= 2 mm below the rotor-A steel.
// M3 frame rod: captive M3 nut pressed into the hex pocket under the foot BEFORE screwing the post to the board.
include <parameters.scad>;
$fn = 48;
ph = post_h - post_shim_t;   // printed ONE levelling shim short: 1 post_shim on top = nominal height, 0 or 2 shims = -/+ post_shim_t
cone_h = (post_od - standoff_od) / 2;
thick_h = ph - post_slim_h - cone_h;
difference() {
    union() {
        cylinder(d=post_foot_od, h=post_foot_t);
        cylinder(d=post_od, h=thick_h);
        translate([0, 0, thick_h - 0.01]) cylinder(d1=post_od, d2=standoff_od, h=cone_h + 0.01);
        cylinder(d=standoff_od, h=ph);
        translate([0, 0, post_foot_t - 0.01]) cylinder(d1=post_od + 8, d2=post_od, h=4);
    }
    translate([0, 0, -0.1]) cylinder(d=m3_clear, h=ph + 1);
    translate([0, 0, -0.1]) cylinder(d=m3_nut_af / cos(30), h=3.0, $fn=6);
    for (s = [-1, 1]) translate([s * (post_foot_od / 2 - 6), 0, -0.1]) {
        cylinder(d=wood_screw_d, h=post_foot_t + 1, $fn=24);
        translate([0, 0, post_foot_t - 1.5]) cylinder(d=8.5, h=10, $fn=32);
    }
}
