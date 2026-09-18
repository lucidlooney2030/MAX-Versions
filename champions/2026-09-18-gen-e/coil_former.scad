// Gen-E pancake coil former — 9 needed; window for outer-ring linkage

core_w          = 10.0;
core_h          = 3.2;
flange_od_x     = 26.0;
flange_od_y     = 20.0;
flange_t        = 1.5;
wind_h          = 4.5;        // axial winding build per side of mid-plane former
$fn = 48;

module former() {
    // winding core
    translate([-core_w/2, -core_h/2, flange_t])
        cube([core_w, core_h, wind_h]);
    // flanges
    translate([-flange_od_x/2, -flange_od_y/2, 0])
        cube([flange_od_x, flange_od_y, flange_t]);
    translate([-flange_od_x/2, -flange_od_y/2, flange_t + wind_h])
        cube([flange_od_x, flange_od_y, flange_t]);
}
former();
