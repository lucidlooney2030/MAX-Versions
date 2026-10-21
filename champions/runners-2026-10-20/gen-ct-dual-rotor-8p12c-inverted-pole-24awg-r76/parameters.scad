// =============================================================================
// Gen-CT — nightly 2026-10-20 (physics_scorer, honest magpylib watts)
// The other top pole family (Gen-CM, 2026-10-18) re-built for 24 AWG: the Ø20 N52 disc sits INSIDE at R76 and the N42 block goes OUTSIDE it with its 20 mm side TANGENTIAL, so each pole is widest at the outer radius where the sector coils are widest. Disc and block share one keyhole pocket (0.6 mm apart). The 24 AWG stator uses 6.8 mm tall copper × 16.5 mm build on r58–105.5 bobbins (one ≈390 m spool). Different rotors from Gen-CS/CU (smaller pole radius, Ø201 steel), and the very same wound 24 AWG stator as Gen-CS — a rotor swap.
// Clocking 0 deg (magnets N facing S) + D-flat keyed bore + index notch + flip-symmetric hole map.
// Windable 2-piece bobbin; turns = physics_scorer turns_fit; copper only between flanges.
// Steel back-iron: 2× Ø201 × 4.76 mm (3/16") mild-steel discs (steel_backiron_disc.dxf); magnets sit ON the steel
// (through-pockets) -> score with --back-iron. Night 2026-10-20.
// =============================================================================
topology            = "dual_rotor";

// --- Wire / winding (physics_scorer winding-fit) -------------------------------
wire_awg            = 24;
wire_od             = 0.55;     // insulated OD mm (bare 0.511); 2026-10-20: Austin owns ONLY 24 AWG and 30 AWG
fill_realistic      = 0.65;     // insulated-wire area / window (DENSE layered wind with a jig; scorer cap 0.65)
turns               = 306;       // = physics_scorer turns_fit (do NOT raise)
coil_former_type    = "bobbin";
coil_core_inset     = 16.50;     // radial copper build: hub = copper boundary inset by this
wind_build_axial    = 0.0;      // nothing proud of the flanges
wind_build_radial   = 0.0;

// --- Bobbin (base + lid) ---------------------------------------------------------
coil_id_r           = 58.00;    // copper boundary sector
coil_od_r           = 105.50;
span_deg            = 26.54;    // = pitch - 2*asin((wall+0.85)/coil_id_r) -> >=1.2 mm stator web
former_web          = 6.80;     // copper height between flanges (TALL copper: steel keeps Bz up)
flange_t            = 0.80;     // >= 0.8 mm FDM wall rule (tall winds push on the flanges)
wall                = 0.80;     // flange lip beyond copper
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
coil_stations       = 12;
bay_clear           = 0.35;     // 0.35 mm: bobbin BASES print IN PLACE inside the stator bays (print-in-place gap), then pop out
stator_thick        = former_bare_h;                        // bobbins flush both faces
stator_od           = 229.0;
shaft_clear_stator  = 14.0;     // stator is static; gap sleeve OD 12 spins inside
stator_ir           = 52.85;    // ANNULAR stator: open centre (nested one-plate pack); inner rim 4.0 mm

// --- Rotor(s) --------------------------------------------------------------------
magnet_Br           = 1.43;     // N52
magnet_d_large      = 20.0;
magnet_h_large      = 5.0;      // one O20x5 per pocket
magnet_h_small      = 5.0;      // one O5x5 per pocket
halbach_magnetisation = "diametric"; // O5x5 assist magnets MUST be DIAMETRICALLY magnetised (tangential)
rotor_b_same_axis   = true;     // same-index magnets share one axis: N faces S across the gap
large_pocket_d      = 20.3;
small_pocket_d      = 5.3;
pocket_h            = 5.00;     // THROUGH the carrier: magnet back face sits on the steel disc (FLUSH seat: carrier = magnet height, magnet face level with the rotor face)
large_n             = 8;
R_large             = 76.0;
R_small_inner       = 77.6;
R_small_mid         = 83.8;
R_small_outer       = 90.0;
small_r_list        = [R_small_inner, R_small_mid, R_small_outer];   // O5 pockets between poles
// --- N42 rectangular BLOCK magnets (2026-10-16/18): one 20x10x5 block per pole on the pole angle, next to the O20 disc ---
block_R_list        = [91.6];   // block centre radius (pole angle); same polarity as its O20 -> radially extended pole (scorer position = pushed-apart magnet centre)
block_angle_list    = [0];
block_radial        = 10.0;    // block side that runs RADIALLY (mm)
block_tangential    = 20.0;    // block side that runs TANGENTIALLY (mm)
block_h             = 5.0;     // magnetised through the 5 mm thickness (axial), = magnet_h_large so it sits on the steel
block_Br            = 1.29;    // N42 remanence (1.28-1.32 T); scorer models it as a magpylib Cuboid
block_pocket_clear  = 0.3;    // pocket = block + 0.3 mm each way (+ 1.2 mm corner reliefs)
keyhole_pocket      = true;     // 2026-10-18: disc + block share ONE keyhole pocket (hull); they repel onto the far walls
disc_pocket_shift   = 0.15;    // disc pocket centre offset (radial) so the pushed-apart disc sits at R_large
block_pocket_shift  = -0.15;    // block pocket centre offset so the pushed-apart block sits at block_R_list (scorer position)
carrier_od          = 201.0;
ring_ir             = 62.85;    // RING rotor: PLA magnet ring r ring_ir..carrier_od/2 (steel disc = structural rotor)
hub_flange_od       = 58.0;     // separate rotor_hub flange (inside the ring, flush with the ring face)
csk_d               = 6.6;      // M3 countersunk head pocket (ISO 10642 head 6.0 nominal) on the stator face
csk_depth           = 1.55;     // = (csk_d - m3_clear) / 2: 90 deg cone; head sits 0.3 mm below the face
n_seg               = 8;        // magnet-carrier ARCS per rotor (segmented carrier)
seg_deg             = 360 / n_seg;
seg_start           = -32;   // arc edge angle (between pocket 0 and its clamp bolt)
seg_kerf_deg        = 0.4;      // gap between neighbouring arcs on the steel
carrier_thick       = pocket_h;
hub_h               = 12.0;     // > steel_t + insert: radial set-screw clears the steel
hub_od              = 24.0;     // slim hub so the M4 brace rods fit at R~18 inside the coil ring
hub_insert_d        = 4.0;      // M3 heat-set insert, radial, bears on the D-flat
rotor_b_offset_deg  = 0.0;      // CLOCKING: magnets directly opposite
shaft_key           = "dflat";
dflat_depth         = 0.5;      // 8 mm shaft with 0.5 mm flat (7.5 across flat)
index_notch_d       = 3.0;

// --- Steel back-iron (buyable laser-cut) -------------------------------------------
steel_t             = 4.76;      // mild steel thickness (image method ignores it; sized from steel_flux.py so the return path stays well below saturation)
steel_center_hole   = 26.0;     // slips over the rotor hub (OD 24)
steel_od            = carrier_od;   // steel disc OD = rotor carrier OD

// --- Modular MAX interface ----------------------------------------------------------
shaft_bore          = 8.35;
dflat_x             = 4.0 - dflat_depth + (shaft_bore - 8.0) / 2;
bearing_d           = 21.85;
bearing_h           = 7.2;
m3_clear            = 3.5;
bolt_r_inner        = 22.0;     // M3 steel-disc clamp bolts (inside the magnet ring)
bolt_n_inner        = 4;
bolt_inner_angles   = [0, 90, 180, 270];
bolt_r_outer        = 76.0;     // second M3 steel-disc clamp ring
bolt_outer_angles   = [13.0, 32.0, 58.0, 77.0, 103.0, 122.0, 148.0, 167.0, 193.0, 212.0, 238.0, 257.0, 283.0, 302.0, 328.0, 347.0];
flange_bolt_r       = 109.5;     // frame rods: OUTSIDE the rotor OD (rotors spin inside them)
flange_bolt_n       = 4;
flange_bolt_offset  = 45.00;    // between coil stations -> never cuts a lead groove/tab
brace_r             = 18.0;
brace_d             = 4.3;      // temporary M4 jack rods (assembly only)
brace_n             = 4;
brace_angles        = [45, 135, 225, 315];          // flip-symmetric

spacer_pad_od       = 14.0;
spacer_pad_id       = m3_clear;
endbell_od          = 229.0;
endbell_thick       = 8.0;
endbell_shaft_clear = 10.0;
collar_h            = 10.0;
standoff_od         = 9.0;
frame_standoff_h    = run_clear + carrier_thick + hub_h + collar_h + 2.0;
sleeve_od           = 12.0;
plate_max_mm        = 410;

$fn = 64;
