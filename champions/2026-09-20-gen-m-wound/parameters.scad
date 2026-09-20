// =============================================================================
// Gen-M Dual-stator sandwich AFPM — WOUND-AWARE parameters (HARD GATE)
// Evolution of withdrawn Gen-J. Magnet face ↔ WOUND coil face ≥ 0.8 mm.
// =============================================================================

// --- Wire / wind budget (26 AWG, ~1 lb spool) ---------------------------------
wire_awg            = 26;
wire_od             = 0.45;     // insulated OD mm (audit assumption)
turns               = 120;      // design turns per pancake
fill                = 0.70;     // packing factor for build estimate
layers_per_face     = 3;        // axial layers budgeted proud of EACH flange
wind_build_axial    = layers_per_face * wire_od * fill;   // 3*0.45*0.7 = 0.945 mm
wind_build_radial   = 2 * wire_od * fill;                 // ~0.63 mm radial overfill budget

// --- Pancake former (bare STL) -----------------------------------------------
coil_id_r           = 24.0;
coil_od_r           = 56.0;
span_deg            = 34.0;     // 9 stations × 40° pitch, 34° copper span
former_web          = 3.2;      // core / web between flanges
flange_t            = 1.0;
wall                = 1.2;      // ≥0.8; load wall 1.2
slot_w              = 2.4;
mount_hole          = 3.5;      // M3 clear
tab_len             = 7.0;

former_bare_h       = former_web + 2 * flange_t;          // 5.2 mm
coil_envelope_h     = former_bare_h + 2 * wind_build_axial; // 7.09 mm

// --- Running clearance (magnet face → WOUND face) ----------------------------
run_clear           = 0.85;     // ≥ 0.8 mm after stated wind
// Front wind stands proud of stator face by wind_build_axial when bay seats
// bare former + back-face copper. Spacer sets magnet → stator face:
gap_spacer_h        = run_clear + wind_build_axial;       // 1.795 ≈ 1.80 mm
// ⇒ magnet_to_wound = gap_spacer_h - wind_build_axial = run_clear = 0.85 mm PASS

// --- Stator bay (sized to WOUND radial + axial, not bare former) -------------
coil_stations       = 9;        // 9+9; document if 12+12 won't one-plate
bay_r_in            = coil_id_r - 2.0 - wind_build_radial;  // ~21.37
bay_r_out           = coil_od_r + 2.0 + wind_build_radial;  // ~58.63
bay_span            = span_deg + 4.0;                       // circumferential clear
bay_offset          = 2.0;      // extra pocket clearance beyond wound outline
// Seat bare former + back wind; front wind proud of stator face
bay_depth           = former_bare_h + wind_build_axial;     // 6.145 mm
stator_back_web     = 2.5;
stator_thick        = bay_depth + stator_back_web;          // ~8.65 mm
stator_od           = 152.0;
shaft_clear_stator  = 40.0;
coil_mount_r        = 32.0;

// --- Rotor (dual-face Halbach) -----------------------------------------------
large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.2;
large_n             = 8;
R_large             = 52.0;
R_small             = [40.0, 52.0, 64.0];
carrier_od          = 148.0;
carrier_thick       = 12.0;     // 5.2 + 1.6 web + 5.2
hub_h               = 10.0;
hub_od              = 30.0;

// --- Modular MAX interface ---------------------------------------------------
shaft_bore          = 8.35;
bearing_d           = 21.85;
bearing_h           = 7.2;
m3_clear            = 3.5;
bolt_r_inner        = 36.0;
bolt_n_inner        = 6;
outer_bolt_r        = 70.0;
outer_bolt_n        = 6;
flange_bolt_r       = 72.0;     // Gen-E family
flange_bolt_n       = 6;
brace_r             = 68.0;
brace_d             = 4.3;
brace_n             = 4;

// --- Gap spacer pad ----------------------------------------------------------
spacer_pad_od       = 14.0;
spacer_pad_id       = m3_clear;

// --- Endbell -----------------------------------------------------------------
endbell_od          = 152.0;
endbell_thick       = 8.0;
endbell_shaft_clear = 10.0;

$fn = 64;
