// Gen-AE dual-rotor hyper-micro — one-plate layout for Kobra 3 Max (~410×410 usable)
// carrier_od=156 / stator_od=160 — positions nudged vs Gen-AB
$fn = 24;
module P(f, x, y, z=0, r=0) {
  translate([x, y, z]) rotate([0,0,r]) import(f, convexity=10);
}
kit = "../..";
P(str(kit, "/rotor_face_a.stl"), 80, 80, 0, 0);
P(str(kit, "/rotor_face_b.stl"), 250, 80, 0, 0);
P(str(kit, "/stator_core.stl"), 80, 255, 0, 0);
P(str(kit, "/endbell_front.stl"), 250, 255, 0, 0);
P(str(kit, "/coil_former.stl"), 345, 40, 0, 0);
P(str(kit, "/coil_former.stl"), 375, 40, 0, 15);
P(str(kit, "/coil_former.stl"), 345, 75, 0, 30);
P(str(kit, "/coil_former.stl"), 375, 75, 0, 45);
P(str(kit, "/coil_former.stl"), 345, 110, 0, 60);
P(str(kit, "/coil_former.stl"), 375, 110, 0, 75);
P(str(kit, "/coil_former.stl"), 345, 145, 0, 90);
P(str(kit, "/coil_former.stl"), 375, 145, 0, 105);
P(str(kit, "/coil_former.stl"), 345, 180, 0, 120);
P(str(kit, "/coil_former.stl"), 375, 180, 0, 135);
P(str(kit, "/coil_former.stl"), 345, 215, 0, 150);
P(str(kit, "/coil_former.stl"), 375, 215, 0, 165);
P(str(kit, "/gap_spacer.stl"), 360, 250, 0, 0);
P(str(kit, "/gap_spacer.stl"), 380, 250, 0, 0);
P(str(kit, "/gap_spacer.stl"), 360, 270, 0, 0);
P(str(kit, "/gap_spacer.stl"), 380, 270, 0, 0);
P(str(kit, "/shaft_collar.stl"), 365, 300, 0, 0);
P(str(kit, "/shaft_collar.stl"), 390, 300, 0, 0);
P(str(kit, "/fit_coupon.stl"), 335, 345, 0, 0);
