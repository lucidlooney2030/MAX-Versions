// Gen-AG dual-rotor vernier flux-claw nano — one-plate layout for Kobra 3 Max (~410×410 usable)
$fn = 24;
module P(f, x, y, z=0, r=0) {
  translate([x, y, z]) rotate([0,0,r]) import(f, convexity=10);
}
kit = "../..";
P(str(kit, "/rotor_face_a.stl"), 78, 78, 0, 0);
P(str(kit, "/rotor_face_b.stl"), 242, 78, 0, 0);
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
P(str(kit, "/coil_former.stl"), 370, 180, 0, 135);
P(str(kit, "/coil_former.stl"), 340, 215, 0, 150);
P(str(kit, "/coil_former.stl"), 370, 215, 0, 165);
P(str(kit, "/gap_spacer.stl"), 355, 250, 0, 0);
P(str(kit, "/gap_spacer.stl"), 375, 250, 0, 0);
P(str(kit, "/gap_spacer.stl"), 355, 270, 0, 0);
P(str(kit, "/gap_spacer.stl"), 375, 270, 0, 0);
P(str(kit, "/shaft_collar.stl"), 360, 300, 0, 0);
P(str(kit, "/shaft_collar.stl"), 385, 300, 0, 0);
P(str(kit, "/fit_coupon.stl"), 330, 340, 0, 0);
