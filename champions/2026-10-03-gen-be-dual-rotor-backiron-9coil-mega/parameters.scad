// =============================================================================
// Gen-BE — nightly 2026-10-03 (physics_scorer, honest magpylib watts)
// Clocking 0 deg (magnets N facing S) + D-flat keyed bore + index notch + flip-symmetric braces/bolts.
// Windable 2-piece bobbin; turns = physics_scorer turns_fit; copper only between flanges.
// former_web = 3.60 mm (taller copper vs Gen-BA 2.46) — gap grows with web (honest Bz tradeoff).
// Steel back-iron: two buyable mild-steel discs behind each rotor (score with --back-iron).
// =============================================================================
topology            = "dual_rotor";

// --- Wire / winding (physics_scorer winding-fit) -------------------------------
wire_awg            = 26;
wire_od             = 0.45;     // insulated OD mm (bare 0.405)
fill_realistic      = 0.60;     // insulated-wire area / window, hand-wound layered
turns               = 107;       // = physics_scorer turns_fit (do NOT raise)
coil_former_type    = "bobbin";
coil_core_inset     = 7.90;     // radial copper build: hub = copper boundary inset by this
wind_build_axial    = 0.0;      // nothing proud of the flanges
wind_build_radial   = 0.0;

// --- Bobbin (base + lid) ---------------------------------------------------------
coil_id_r           = 26.00;    // copper boundary sector (over the magnet track)
coil_od_r           = 50.00;
span_deg            = 31.84;    // = pitch - 2*asin((wall+0.85)/coil_id_r) -> >=1.2 mm stator web
former_web          = 3.60;     // copper height between flanges
flange_t            = 0.60;
wall                = 1.00;     // flange lip beyond copper
former_bare_h       = former_web + 2 * flange_t;
coil_envelope_h     = former_bare_h + 2 * wind_build_axial;
tab_w               = 7.0;
tab_len             = 7.0;
tab_h               = former_bare_h / 2;
pin_d               = 1.9;      // 1.75 mm filament locating pin
coil_mount_r        = coil_od_r + 0.2 + 4.0;
lead_y              = 1.6;
lead_slot_w         = 0.9;
lead_groove_d       = 0.6;

// --- Gap -------------------------------------------------------------------------
run_clear           = 0.50;     // rotor face -> flange
gap_spacer_h        = run_clear + wind_build_axial;
m2m                 = coil_envelope_h + 2 * run_clear;

// --- Stator ----------------------------------------------------------------------
coil_stations       = 9;
bay_clear           = 0.25;
stator_thick        = former_bare_h;                        // bobbins flush both faces
stator_od           = 158.0;
shaft_clear_stator  = 14.0;     // stator is static; shaft only

// --- Rotor(s) --------------------------------------------------------------------
magnet_Br           = 1.43;     // N52
halbach_magnetisation = "diametric"; // O5x5 assist magnets MUST be DIAMETRICALLY magnetised (tangential)
rotor_b_same_axis   = true;     // same-index magnets share one axis: N faces S across the gap
large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.2;
large_n             = 8;
R_large             = 38.0;
R_small_inner       = 24.0;
R_small_mid         = 38.0;
R_small_outer       = 55.0;
carrier_od          = 156.0;
carrier_thick       = 7.5;
hub_h               = 10.0;
hub_od              = 30.0;
rotor_b_offset_deg  = 0.0;      // CLOCKING: magnets directly opposite
shaft_key           = "dflat";
dflat_depth         = 0.5;      // 8 mm shaft with 0.5 mm flat (7.5 across flat)
index_notch_d       = 3.0;

// --- Modular MAX interface (Gen-E family) -----------------------------------------
shaft_bore          = 8.35;
dflat_x             = 4.0 - dflat_depth + (shaft_bore - 8.0) / 2;
bearing_d           = 21.85;
bearing_h           = 7.2;
m3_clear            = 3.5;
bolt_r_inner        = 30.0;
bolt_n_inner        = 4;
bolt_inner_angles   = [22.5, -22.5, 157.5, 202.5];  // between poles, flip-symmetric
flange_bolt_r       = 72.0;
flange_bolt_n       = 6;
brace_r             = 68.0;
brace_d             = 4.3;
brace_n             = 4;
brace_angles        = [45, 135, 225, 315];          // flip-symmetric

spacer_pad_od       = 14.0;
spacer_pad_id       = m3_clear;
endbell_od          = 158.0;
endbell_thick       = 8.0;
endbell_shaft_clear = 10.0;
plate_max_mm        = 410;

$fn = 64;
