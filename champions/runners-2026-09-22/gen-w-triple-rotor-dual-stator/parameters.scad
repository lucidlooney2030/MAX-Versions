// =============================================================================
// Gen-W Triple-rotor dual-stator sandwich — WOUND-AWARE (HARD GATE)
// RotorA | StatorA | RotorMid | StatorB | RotorB
// Magnets: outer 5+5 Ø20, mid 6 Ø20 (3/face); Ø5 Halbach 16+16+16
// =============================================================================

wire_awg            = 26;
wire_od             = 0.45;
turns               = 110;      // 18 pancakes × 110 t ≈ 198 m @ mean 0.10 m
fill                = 0.70;
layers_per_face     = 2;
wind_build_axial    = layers_per_face * wire_od * fill;   // 0.63
wind_build_radial   = 2.8 * wire_od * fill;               // 0.882

coil_id_r           = 23.0;
coil_od_r           = 56.0;
span_deg            = 34.0;     // 9 stations × 40°
former_web          = 2.0;
flange_t            = 0.75;
wall                = 1.2;
slot_w              = 2.4;
mount_hole          = 3.5;
tab_len             = 7.0;

former_bare_h       = former_web + 2 * flange_t;            // 3.5
coil_envelope_h     = former_bare_h + 2 * wind_build_axial; // 4.76

// Each gap: magnet ↔ wound ≥ 0.75
run_clear           = 0.75;
gap_spacer_h        = run_clear + wind_build_axial;         // 1.38
// Outer gap m2m (outer rotor ↔ mid rotor face through one stator):
m2m_outer           = coil_envelope_h + 2 * run_clear;      // 6.26
m2m_inner           = m2m_outer;                            // symmetric gaps

coil_stations       = 9;        // per stator; ×2 = 18
bay_r_in            = coil_id_r - 2.0 - wind_build_radial;
bay_r_out           = coil_od_r + 2.0 + wind_build_radial;
bay_span            = span_deg + 4.0;
bay_offset          = 2.0;
bay_depth           = former_bare_h + wind_build_axial;     // seat bare+back wind
stator_back_web     = 2.0;
stator_thick        = bay_depth + stator_back_web;          // ~6.13
stator_od           = 156.0;
shaft_clear_stator  = 40.0;
coil_mount_r        = 30.0;

// Outer rotors: 5×Ø20 + 16×Ø5 each; Mid: 3+3 Ø20 + 16 Ø5 (both faces)
large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.2;
outer_large_n       = 5;
mid_large_n_face    = 3;        // 3 per face = 6 mid
R_large             = 52.0;
R_small_inner       = 40.0;
R_small_mid         = 52.0;
R_small_outer       = 64.0;
carrier_od          = 152.0;
outer_carrier_thick = 7.5;
mid_carrier_thick   = 12.0;     // dual face 5.2+1.6+5.2
hub_h               = 10.0;
hub_od              = 30.0;

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
