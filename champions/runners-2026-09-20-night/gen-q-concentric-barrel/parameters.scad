// =============================================================================
// Gen-Q Concentric dual-gap Halbach barrel — WOUND-AWARE (HARD GATE)
// Radial bobbins; slots sized to WOUND tip/side build, not bare former.
// =============================================================================

wire_awg                 = 26;
wire_od                  = 0.45;
turns                    = 110;
fill                     = 0.70;
layers_tip               = 3;
layers_side              = 2;
wind_build_radial_tip    = layers_tip * wire_od * fill;   // 0.945 mm
wind_build_side          = layers_side * wire_od * fill;  // 0.63 mm

// Bare bobbin window
bobbin_w                 = 10.0;
bobbin_d                 = 14.0;
bobbin_h                 = 28.0;
flange_t                 = 1.2;
wall                     = 1.2;

wound_w                  = bobbin_w + 2 * wind_build_side;       // 11.26
wound_d                  = bobbin_d + wind_build_radial_tip;     // 14.945

// Slots MUST clear wound pack
slot_w                   = 12.8;
slot_d                   = 16.5;
n_bobbins                = 12;

stator_id                = 36.0;
stator_od                = 96.0;
stator_h                 = 36.0;

// Tip clearance: geometric bare magnet→former tip ≥ 2.0 mm
tip_bare_gap             = 2.0;
magnet_to_wound_tip      = tip_bare_gap - wind_build_radial_tip; // ≈1.055 PASS
run_clear                = 0.85;  // documented min after wind

// Outer drum / inner hub
outer_id                 = 102.0;
outer_od                 = 128.0;
outer_h                  = 40.0;
inner_od                 = 30.0;
inner_h                  = 36.0;

large_pocket_d           = 20.3;
small_pocket_d           = 5.3;
pocket_h                 = 5.2;
R_outer_large            = 52.0;
R_inner_large            = 22.0;

shaft_bore               = 8.35;
bearing_d                = 21.85;
bearing_h                = 7.2;
m3_clear                 = 3.5;
flange_bolt_r            = 54.0;  // barrel family
flange_bolt_n            = 6;
endbell_od               = 130.0;
endbell_thick            = 8.0;

$fn = 64;
