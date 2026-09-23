// =============================================================================
// Gen-X Vernier flux-claw dual-gap AFPM — WOUND-AWARE (HARD GATE)
// Dual-rotor + vernier 8+8 Ø20 + Ø5 flux claws; evolution of Gen-U
// =============================================================================

wire_awg            = 26;
wire_od             = 0.45;
turns               = 135;
fill                = 0.70;
layers_per_face     = 2;
wind_build_axial    = layers_per_face * wire_od * fill;   // 0.63
wind_build_radial   = 3 * wire_od * fill;                 // 0.945

coil_id_r           = 22.0;
coil_od_r           = 57.0;
span_deg            = 25.0;     // 12 stations; vernier vs 16-pole equiv
former_web          = 2.4;
flange_t            = 0.80;
wall                = 1.2;
slot_w              = 2.4;
mount_hole          = 3.5;
tab_len             = 7.0;

former_bare_h       = former_web + 2 * flange_t;            // 4.0
coil_envelope_h     = former_bare_h + 2 * wind_build_axial; // 5.26

run_clear           = 0.75;
gap_spacer_h        = run_clear + wind_build_axial;         // 1.38
m2m                 = coil_envelope_h + 2 * run_clear;      // 6.76 (≤6.8)

coil_stations       = 12;
bay_r_in            = coil_id_r - 2.0 - wind_build_radial;
bay_r_out           = coil_od_r + 2.0 + wind_build_radial;
bay_span            = span_deg + 4.0;
bay_offset          = 2.0;
stator_thick        = former_bare_h;
stator_od           = 156.0;
shaft_clear_stator  = 36.0;
coil_mount_r        = 28.0;

// Dual rotors: 8+8 Ø20 vernier poles + 24+24 Ø5 flux claws / edge assists
large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.2;
large_n             = 8;
R_large             = 50.0;
R_claw_inner        = 36.0;
R_claw_mid          = 50.0;
R_claw_outer        = 64.0;
carrier_od          = 152.0;
carrier_thick       = 7.5;
hub_h               = 10.0;
hub_od              = 30.0;
rotor_b_offset_deg  = 22.5;

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
endbell_od          = 156.0;
endbell_thick       = 8.0;
endbell_shaft_clear = 10.0;

$fn = 64;
