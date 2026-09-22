// =============================================================================
// Gen-U Vernier + flux-claw AFPM — WOUND-AWARE (HARD GATE)
// 16-pole rotor (16×Ø20) + 48×Ø5 claw/edge flux assists; 12-coil vernier stator
// Optional mild-steel washer registers in BOM for claw return paths.
// =============================================================================

wire_awg            = 26;
wire_od             = 0.45;
turns               = 140;      // vernier: more turns for low-RPM band
fill                = 0.70;
layers_per_face     = 2;
wind_build_axial    = layers_per_face * wire_od * fill;   // 0.63
wind_build_radial   = 3 * wire_od * fill;                 // 0.945

coil_id_r           = 22.0;
coil_od_r           = 58.0;
span_deg            = 24.0;     // 12 stations; vernier vs 16 poles
former_web          = 2.6;
flange_t            = 0.9;
wall                = 1.2;
slot_w              = 2.4;
mount_hole          = 3.5;
tab_len             = 7.0;

former_bare_h       = former_web + 2 * flange_t;            // 4.4
coil_envelope_h     = former_bare_h + 2 * wind_build_axial; // 5.66

run_clear           = 0.85;     // prefer ≥0.85 for vernier stack
gap_spacer_h        = run_clear + wind_build_axial;         // 1.48
// Single-rotor AFPM: magnet ↔ wound = run_clear (spacer math)
// (No dual-rotor m2m; stator faces one magnet plane)

coil_stations       = 12;
bay_r_in            = coil_id_r - 2.0 - wind_build_radial;
bay_r_out           = coil_od_r + 2.0 + wind_build_radial;
bay_span            = span_deg + 4.0;
bay_offset          = 2.0;
bay_depth           = former_bare_h + wind_build_axial;
stator_back_web     = 2.5;
stator_thick        = bay_depth + stator_back_web;
stator_od           = 156.0;
shaft_clear_stator  = 36.0;
coil_mount_r        = 28.0;

// Rotor: ALL 16×Ø20 as poles + 48×Ø5 claw/edge (3 rings × 16)
large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.2;
large_n             = 16;       // vernier poles
R_large             = 50.0;
R_claw_inner        = 36.0;     // flux-claw / edge assist rings
R_claw_mid          = 50.0;
R_claw_outer        = 64.0;
carrier_od          = 152.0;
carrier_thick       = 8.0;
hub_h               = 10.0;
hub_od              = 30.0;
// Steel return register pocket (optional washer Ø25×1)
steel_washer_d      = 25.4;
steel_washer_pocket = 1.2;
steel_register_r    = 50.0;

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

// Claw flux pad (printed) — seats optional steel washer behind rotor
claw_pad_od         = 30.0;
claw_pad_h          = 3.0;

$fn = 64;
