// Gen-G radial bobbin — 12 needed; 26 AWG preferred
body_w = 11.0; body_d = 16.0; body_h = 24.0;
flange_t = 1.6; flange_overhang = 2.0; core_w = 3.8;
$fn = 48;
translate([0, 0, flange_t]) cube([core_w, body_d - 1, body_h]);
translate([-flange_overhang, -0.5, 0]) cube([core_w + 2*flange_overhang, body_d, flange_t]);
translate([-flange_overhang, -0.5, flange_t + body_h]) cube([core_w + 2*flange_overhang, body_d, flange_t]);
