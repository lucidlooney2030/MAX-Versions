// =============================================================================
// Gen-R Vernier AFPM 18-coil / 8+8 dual-rotor — WOUND-AWARE (HARD GATE)
// Higher electrical frequency at same shaft RPM. Optional steel return rings.
// =============================================================================

wire_awg            = 26;
wire_od             = 0.45;
turns               = 100;
fill                = 0.70;
layers_per_face     = 2;
wind_build_axial    = layers_per_face * wire_od * fill;   // 0.63
wind_build_radial   = 2 * wire_od * fill;                 // 0.63

coil_id_r           = 28.0;
coil_od_r           = 56.0;
span_deg            = 16.0;     // 18 stations × 20°
former_web          = 2.4;
flange_t            = 0.9;
wall                = 1.2;
slot_w              = 2.2;
mount_hole          = 3.5;
tab_len             = 6.0;

former_bare_h       = former_web + 2 * flange_t;            // 4.2
coil_envelope_h     = former_bare_h + 2 * wind_build_axial; // 5.46

run_clear           = 0.85;
gap_spacer_h        = run_clear + wind_build_axial;         // 1.48
m2m                 = coil_envelope_h + 2 * run_clear;      // 7.16
// magnet_to_wound = run_clear = 0.85 PASS

coil_stations       = 18;       // vernier Ns
n_poles_per_rotor   = 8;        // Nr per face; electrical vernier
bay_offset          = 1.8;
bay_span            = span_deg + 2.0;
stator_thick        = former_bare_h;                        // 4.2
stator_od           = 156.0;
shaft_clear_stator  = 36.0;
coil_mount_r        = 32.0;

large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.2;
R_large             = 52.0;
R_small             = [40.0, 52.0, 64.0];
carrier_od          = 150.0;
carrier_thick       = 7.5;
hub_h               = 10.0;
hub_od              = 30.0;

// Optional steel flux-return (BOM optional — printed register only)
steel_ring_id       = 70.0;
steel_ring_od       = 140.0;
steel_ring_t        = 1.5;
return_pocket_h     = 1.7;

shaft_bore          = 8.35;
bearing_d           = 21.85;
bearing_h           = 7.2;
m3_clear            = 3.5;
flange_bolt_r       = 72.0;
flange_bolt_n       = 6;
brace_r             = 68.0;
brace_d             = 4.3;
brace_n             = 4;
bolt_r_inner        = 36.0;
bolt_n_inner        = 6;
spacer_pad_od       = 14.0;
endbell_od          = 156.0;
endbell_thick       = 8.0;

$fn = 64;
