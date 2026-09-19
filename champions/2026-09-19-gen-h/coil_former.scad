// Gen-H pancake former — 12 needed; 30 AWG ~300–350 t or 26 AWG alt
core_w=9.0; core_h=3.0; flange_od_x=22.0; flange_od_y=18.0; flange_t=1.4; wind_h=4.2; $fn=48;
translate([-core_w/2, -core_h/2, flange_t]) cube([core_w, core_h, wind_h]);
translate([-flange_od_x/2, -flange_od_y/2, 0]) cube([flange_od_x, flange_od_y, flange_t]);
translate([-flange_od_x/2, -flange_od_y/2, flange_t + wind_h]) cube([flange_od_x, flange_od_y, flange_t]);
