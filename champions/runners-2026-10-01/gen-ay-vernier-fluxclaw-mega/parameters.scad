// =============================================================================
// Gen-AY Vernier flux-claw mega - WOUND-AWARE (HARD GATE)
// Dual-rotor vernier: Rotor B +22.5 deg vs 12-slot stator; O5 flux claws
// =============================================================================

wire_awg            = 26;
wire_od             = 0.45;
turns               = 210;      // +5 vs Gen-AV 205
fill                = 0.70;
layers_per_face     = 2;
wind_build_axial    = layers_per_face * wire_od * fill;   // 0.63 mm
wind_build_radial   = 3 * wire_od * fill;                 // 0.945 mm

coil_id_r           = 14.5;
coil_od_r           = 61.5;
span_deg            = 25.0;
former_web          = 1.20;     // print floor LB walls
flange_t            = 0.60;
wall                = 1.2;
slot_w              = 2.4;
mount_hole          = 3.5;
tab_len             = 7.0;

former_bare_h       = former_web + 2 * flange_t;            // 2.40 mm
coil_envelope_h     = former_bare_h + 2 * wind_build_axial; // 3.66 mm

run_clear           = 0.50;
gap_spacer_h        = run_clear + wind_build_axial;         // 1.13 mm
m2m                 = coil_envelope_h + 2 * run_clear;      // 4.66 mm

coil_stations       = 12;
bay_r_in            = coil_id_r - 2.0 - wind_build_radial;
bay_r_out           = coil_od_r + 2.0 + wind_build_radial;
bay_span            = span_deg + 4.0;
bay_offset          = 2.0;
stator_thick        = former_bare_h;
stator_od           = 160.0;
shaft_clear_stator  = 34.0;
coil_mount_r        = 25.5;

large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.2;
large_n             = 8;
R_large             = 38.0;     // closer to copper centroid vs AV R=38.5
R_small_inner       = 24.0;
R_small_mid         = 38.0;
R_small_outer       = 54.0;
carrier_od          = 156.0;
carrier_thick       = 7.5;
hub_h               = 10.0;
hub_od              = 30.0;
rotor_b_offset_deg  = 22.5;     // vernier offset vs 12-slot stator

shaft_bore          = 8.35;
bearing_d           = 21.85;
bearing_h           = 7.2;
m3_clear            = 3.5;
bolt_r_inner        = 36.0;
bolt_n_inner        = 6;
flange_bolt_r       = 72.0;
flange_bolt_n       = 6;
brace_r             = 68.0;
brace_d             = 4.3;
brace_n             = 4;

spacer_pad_od       = 14.0;
spacer_pad_id       = m3_clear;
endbell_od          = 160.0;
endbell_thick       = 8.0;
endbell_shaft_clear = 10.0;

$fn = 64;
