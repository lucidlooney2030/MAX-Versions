// Gen-W triple-rotor dual-stator — one-plate (primary; see PLATE.md for dups)
$fn = 24;
module P(f, x, y, z=0, r=0) {
  translate([x, y, z]) rotate([0,0,r]) import(f, convexity=10);
}
kit = "../..";
P(str(kit, "/rotor_outer.stl"), 78, 78, 0, 0);
P(str(kit, "/rotor_mid.stl"), 242, 78, 0, 0);
P(str(kit, "/stator_core.stl"), 78, 250, 0, 0);
P(str(kit, "/endbell_front.stl"), 242, 250, 0, 0);
P(str(kit, "/coil_former.stl"), 340, 40, 0, 0);
P(str(kit, "/coil_former.stl"), 370, 40, 0, 15);
P(str(kit, "/coil_former.stl"), 340, 75, 0, 30);
P(str(kit, "/coil_former.stl"), 370, 75, 0, 45);
P(str(kit, "/coil_former.stl"), 340, 110, 0, 60);
P(str(kit, "/coil_former.stl"), 370, 110, 0, 75);
P(str(kit, "/coil_former.stl"), 340, 145, 0, 90);
P(str(kit, "/coil_former.stl"), 370, 145, 0, 105);
P(str(kit, "/coil_former.stl"), 340, 180, 0, 120);
P(str(kit, "/gap_spacer.stl"), 355, 220, 0, 0);
P(str(kit, "/gap_spacer.stl"), 375, 220, 0, 0);
P(str(kit, "/gap_spacer.stl"), 355, 240, 0, 0);
P(str(kit, "/shaft_collar.stl"), 360, 270, 0, 0);
P(str(kit, "/shaft_collar.stl"), 385, 270, 0, 0);
P(str(kit, "/fit_coupon.stl"), 330, 340, 0, 0);
