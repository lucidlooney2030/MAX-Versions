// =============================================================================
// Gen-P Dual-rotor thin-gap AFPM — WOUND-AWARE parameters (HARD GATE)
// PRIMARY champion candidate vs Gen-M. Dual air-gap + thin envelope restores B.
// =============================================================================

// --- Wire / wind budget (26 AWG, ~1 lb spool) ---------------------------------
wire_awg            = 26;
wire_od             = 0.45;     // insulated OD mm (audit assumption)
turns               = 120;      // design turns per pancake
fill                = 0.70;     // packing factor for build estimate
layers_per_face     = 2;        // thinner axial build than Gen-M (3) → better B
wind_build_axial    = layers_per_face * wire_od * fill;   // 2*0.45*0.7 = 0.63 mm
wind_build_radial   = 2 * wire_od * fill;                 // ~0.63 mm

// --- Pancake former (bare STL) -----------------------------------------------
coil_id_r           = 26.0;
coil_od_r           = 54.0;
span_deg            = 26.0;     // 12 stations × 30° pitch
former_web          = 2.6;
flange_t            = 0.9;
wall                = 1.2;
slot_w              = 2.4;
mount_hole          = 3.5;      // M3 clear
tab_len             = 7.0;

former_bare_h       = former_web + 2 * flange_t;            // 4.4 mm
coil_envelope_h     = former_bare_h + 2 * wind_build_axial; // 5.66 mm

// --- Running clearance (magnet face → WOUND face) EACH side ------------------
run_clear           = 0.80;     // ≥ 0.5–1.0 mm after stated wind
gap_spacer_h        = run_clear + wind_build_axial;         // 1.43 mm
// Dual-rotor magnet-to-magnet MUST use wound envelope:
m2m                 = coil_envelope_h + 2 * run_clear;      // 7.26 mm
// ⇒ magnet_to_wound = run_clear = 0.80 mm PASS (both gaps)

// --- Mid stator (12 pancakes 3φ; winds proud both faces) ---------------------
coil_stations       = 12;
bay_r_in            = coil_id_r - 2.0 - wind_build_radial;
bay_r_out           = coil_od_r + 2.0 + wind_build_radial;
bay_span            = span_deg + 4.0;
bay_offset          = 2.0;
stator_thick        = former_bare_h;                        // 4.4; winds proud ±Z
stator_od           = 152.0;
shaft_clear_stator  = 36.0;
coil_mount_r        = 30.0;

// --- Rotors (×2) — 8×Ø20 + 24×Ø5 Halbach each face ---------------------------
large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.2;
large_n             = 8;
R_large             = 50.0;
R_small             = [38.0, 50.0, 62.0];
carrier_od          = 148.0;
carrier_thick       = 7.5;
hub_h               = 10.0;
hub_od              = 30.0;

// --- Modular MAX interface ---------------------------------------------------
shaft_bore          = 8.35;
bearing_d           = 21.85;
bearing_h           = 7.2;
m3_clear            = 3.5;
bolt_r_inner        = 36.0;
bolt_n_inner        = 6;
flange_bolt_r       = 72.0;     // Gen-E family
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
