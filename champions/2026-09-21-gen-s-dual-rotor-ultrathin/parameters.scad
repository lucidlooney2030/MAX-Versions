// =============================================================================
// Gen-S Dual-rotor ULTRA-THIN AFPM — WOUND-AWARE parameters (HARD GATE)
// Primary challenger vs Gen-P. Target m2m ≤ 7.0 while magnet↔wound ≥ 0.80.
// =============================================================================

// --- Wire / wind budget (26 AWG, ~1 lb spool ≈ 390 m bare-equiv) --------------
wire_awg            = 26;
wire_od             = 0.45;     // insulated OD mm
turns               = 130;      // +10 vs Gen-P; extra goes radial
fill                = 0.70;
layers_per_face     = 2;        // axial layers proud of EACH flange
wind_build_axial    = layers_per_face * wire_od * fill;   // 0.63 mm
wind_build_radial   = 3 * wire_od * fill;                 // 0.945 mm (extra turns)

// --- Pancake former (bare STL) — thinner web/flange than Gen-P ---------------
coil_id_r           = 24.0;     // larger window vs Gen-P 26–54
coil_od_r           = 56.0;
span_deg            = 26.0;     // 12 stations × 30° pitch
former_web          = 2.2;      // thinner than Gen-P 2.6
flange_t            = 0.8;      // thinner than Gen-P 0.9
wall                = 1.2;
slot_w              = 2.4;
mount_hole          = 3.5;
tab_len             = 7.0;

former_bare_h       = former_web + 2 * flange_t;            // 3.8 mm
coil_envelope_h     = former_bare_h + 2 * wind_build_axial; // 5.06 mm

// --- Running clearance (magnet face → WOUND face) EACH side ------------------
run_clear           = 0.80;     // PASS ≥ 0.80 preferred
gap_spacer_h        = run_clear + wind_build_axial;         // 1.43 mm
m2m                 = coil_envelope_h + 2 * run_clear;      // 6.66 mm (≤7.0 vs Gen-P 7.26)

// --- Mid stator (12 pancakes 3φ; winds proud both faces) ---------------------
coil_stations       = 12;
bay_r_in            = coil_id_r - 2.0 - wind_build_radial;
bay_r_out           = coil_od_r + 2.0 + wind_build_radial;
bay_span            = span_deg + 4.0;
bay_offset          = 2.0;
stator_thick        = former_bare_h;                        // winds proud ±Z
stator_od           = 152.0;
shaft_clear_stator  = 36.0;
coil_mount_r        = 28.0;

// --- Rotors (×2) — 8×Ø20 + 24×Ø5 Halbach each face ---------------------------
large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.2;
large_n             = 8;
R_large             = 50.0;
R_small_inner       = 38.0;
R_small_mid         = 50.0;
R_small_outer       = 62.0;
carrier_od          = 148.0;
carrier_thick       = 7.5;
hub_h               = 10.0;
hub_od              = 30.0;
rotor_b_offset_deg  = 22.5;

// --- Modular MAX interface (Gen-E family) ------------------------------------
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
endbell_od          = 152.0;
endbell_thick       = 8.0;
endbell_shaft_clear = 10.0;

$fn = 64;
