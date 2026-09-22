// Gen-T triple-gap (primary plate; see PLATE.md for duplicates) — one-plate layout for Kobra 3 Max (~410×410 usable)
$fn = 24;
module P(f, x, y, z=0, r=0) {
  translate([x, y, z]) rotate([0,0,r]) import(f, convexity=10);
}
kit = "../..";
P(str(kit, "/rotor_outer.stl"), 76, 76, 0, 0);
P(str(kit, "/rotor_mid.stl"), 240, 76, 0, 0);
P(str(kit, "/stator_core.stl"), 76, 248, 0, 0);
P(str(kit, "/endbell_front.stl"), 240, 248, 0, 0);
P(str(kit, "/coil_former.stl"), 340, 30, 0, 0);
P(str(kit, "/coil_former.stl"), 375, 30, 0, 20);
P(str(kit, "/coil_former.stl"), 340, 65, 0, 40);
P(str(kit, "/coil_former.stl"), 375, 65, 0, 60);
P(str(kit, "/coil_former.stl"), 340, 100, 0, 80);
P(str(kit, "/coil_former.stl"), 375, 100, 0, 100);
P(str(kit, "/coil_former.stl"), 340, 135, 0, 120);
P(str(kit, "/coil_former.stl"), 375, 135, 0, 140);
P(str(kit, "/coil_former.stl"), 340, 170, 0, 160);
P(str(kit, "/gap_spacer.stl"), 355, 210, 0, 0);
P(str(kit, "/gap_spacer.stl"), 375, 210, 0, 0);
P(str(kit, "/shaft_collar.stl"), 360, 240, 0, 0);
P(str(kit, "/fit_coupon.stl"), 330, 280, 0, 0);
