// =============================================================================
// Gen-BF — nightly 2026-10-04 (physics_scorer, honest magpylib watts)
// 8-pole / 6-coil dual rotor with big 51.5 deg sector coils and TALL 9.9 mm copper, magnets seated directly on 3 mm steel back-iron discs (through-pockets) so the field stays high across a wide gap.
// Clocking 0 deg (magnets N facing S) + D-flat keyed bore + index notch + flip-symmetric hole map.
// Windable 2-piece bobbin; turns = physics_scorer turns_fit; copper only between flanges.
// Steel back-iron: two 3.0 mm mild-steel discs (steel_backiron_disc.dxf); magnets sit ON the steel
// (through-pockets) -> score with --back-iron.
// =============================================================================
topology            = "dual_rotor";

// --- Wire / winding (physics_scorer winding-fit) -------------------------------
wire_awg            = 26;
wire_od             = 0.45;     // insulated OD mm (bare 0.405)
fill_realistic      = 0.60;     // insulated-wire area / window, hand-wound layered
turns               = 571;       // = physics_scorer turns_fit (do NOT raise)
coil_former_type    = "bobbin";
coil_core_inset     = 15.30;     // radial copper build: hub = copper boundary inset by this
wind_build_axial    = 0.0;      // nothing proud of the flanges
wind_build_radial   = 0.0;

// --- Bobbin (base + lid) ---------------------------------------------------------
coil_id_r           = 25.00;    // copper boundary sector
coil_od_r           = 62.00;
span_deg            = 51.51;    // = pitch - 2*asin((wall+0.85)/coil_id_r) -> >=1.2 mm stator web
former_web          = 9.90;     // copper height between flanges (TALL copper: steel keeps Bz up)
flange_t            = 0.80;     // >= 0.8 mm FDM wall rule (tall winds push on the flanges)
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
m2m                 = coil_envelope_h + 2 * run_clear;   // rotor face to rotor face (= gap_sleeve length)

// --- Stator ----------------------------------------------------------------------
coil_stations       = 6;
bay_clear           = 0.25;
stator_thick        = former_bare_h;                        // bobbins flush both faces
stator_od           = 149.0;
shaft_clear_stator  = 14.0;     // stator is static; gap sleeve OD 12 spins inside

// --- Rotor(s) --------------------------------------------------------------------
magnet_Br           = 1.43;     // N52
magnet_d_large      = 20.0;
magnet_h_large      = 5.0;      // one O20x5 per pocket
magnet_h_small      = 5.0;      // one O5x5 per pocket
halbach_magnetisation = "diametric"; // O5x5 assist magnets MUST be DIAMETRICALLY magnetised (tangential)
rotor_b_same_axis   = true;     // same-index magnets share one axis: N faces S across the gap
large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.10;     // THROUGH the carrier: magnet back face sits on the steel disc
large_n             = 8;
R_large             = 44.0;
R_small_inner       = 30.0;
R_small_mid         = 44.0;
R_small_outer       = 59.0;
small_r_list        = [R_small_inner, R_small_mid, R_small_outer];   // O5 pockets between poles
carrier_od          = 127.0;
carrier_thick       = pocket_h;
hub_h               = 10.0;
hub_od              = 24.0;     // slim hub so the M4 brace rods fit at R~18 inside the coil ring
hub_insert_d        = 4.0;      // M3 heat-set insert, radial, bears on the D-flat
rotor_b_offset_deg  = 0.0;      // CLOCKING: magnets directly opposite
shaft_key           = "dflat";
dflat_depth         = 0.5;      // 8 mm shaft with 0.5 mm flat (7.5 across flat)
index_notch_d       = 3.0;

// --- Steel back-iron (buyable laser-cut) -------------------------------------------
steel_t             = 3.0;      // mild steel thickness (not modelled by the image method; >=3 avoids saturation)
steel_center_hole   = 26.0;     // slips over the rotor hub (OD 24)

// --- Modular MAX interface ----------------------------------------------------------
shaft_bore          = 8.35;
dflat_x             = 4.0 - dflat_depth + (shaft_bore - 8.0) / 2;
bearing_d           = 21.85;
bearing_h           = 7.2;
m3_clear            = 3.5;
bolt_r_inner        = 27.0;     // M3 steel-disc clamp bolts (inside the magnet ring)
bolt_n_inner        = 4;
bolt_inner_angles   = [0, 90, 180, 270];
bolt_r_outer        = 57.0;     // M3 steel-disc clamp bolts (outside the magnet ring)
bolt_outer_angles   = [0, 90, 180, 270];
flange_bolt_r       = 69.5;     // frame rods: OUTSIDE the rotor OD (rotors spin inside them)
flange_bolt_n       = 6;
flange_bolt_offset  = 30.00;    // between coil stations -> never cuts a lead groove/tab
brace_r             = 18.0;
brace_d             = 4.3;      // temporary M4 jack rods (assembly only)
brace_n             = 4;
brace_angles        = [45, 135, 225, 315];          // flip-symmetric

spacer_pad_od       = 14.0;
spacer_pad_id       = m3_clear;
endbell_od          = 149.0;
endbell_thick       = 8.0;
endbell_shaft_clear = 10.0;
collar_h            = 10.0;
standoff_od         = 9.0;
frame_standoff_h    = run_clear + carrier_thick + hub_h + collar_h + 2.0;
sleeve_od           = 12.0;
plate_max_mm        = 410;

$fn = 64;
