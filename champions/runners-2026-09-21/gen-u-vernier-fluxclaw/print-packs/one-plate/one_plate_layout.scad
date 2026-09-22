// Gen-U vernier flux-claw — one-plate layout for Kobra 3 Max (~410×410 usable)
$fn = 24;
module P(f, x, y, z=0, r=0) {
  translate([x, y, z]) rotate([0,0,r]) import(f, convexity=10);
}
kit = "../..";
P(str(kit, "/rotor_vernier.stl"), 80, 80, 0, 0);
P(str(kit, "/stator_core.stl"), 245, 80, 0, 0);
P(str(kit, "/endbell_front.stl"), 80, 250, 0, 0);
P(str(kit, "/endbell_rear.stl"), 245, 250, 0, 0);
P(str(kit, "/coil_former.stl"), 360, 30, 0, 0);
P(str(kit, "/coil_former.stl"), 385, 30, 0, 30);
P(str(kit, "/coil_former.stl"), 360, 65, 0, 60);
P(str(kit, "/coil_former.stl"), 385, 65, 0, 90);
P(str(kit, "/coil_former.stl"), 360, 100, 0, 120);
P(str(kit, "/coil_former.stl"), 385, 100, 0, 150);
P(str(kit, "/coil_former.stl"), 360, 135, 0, 0);
P(str(kit, "/coil_former.stl"), 385, 135, 0, 30);
P(str(kit, "/coil_former.stl"), 360, 170, 0, 60);
P(str(kit, "/coil_former.stl"), 385, 170, 0, 90);
P(str(kit, "/coil_former.stl"), 360, 205, 0, 120);
P(str(kit, "/coil_former.stl"), 385, 205, 0, 150);
P(str(kit, "/claw_flux_pad.stl"), 355, 250, 0, 0);
P(str(kit, "/claw_flux_pad.stl"), 385, 250, 0, 0);
P(str(kit, "/claw_flux_pad.stl"), 355, 280, 0, 0);
P(str(kit, "/claw_flux_pad.stl"), 385, 280, 0, 0);
P(str(kit, "/gap_spacer.stl"), 355, 310, 0, 0);
P(str(kit, "/gap_spacer.stl"), 375, 310, 0, 0);
P(str(kit, "/shaft_collar.stl"), 360, 340, 0, 0);
P(str(kit, "/fit_coupon.stl"), 300, 360, 0, 0);
