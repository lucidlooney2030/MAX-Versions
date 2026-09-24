# Wound envelope math — 2026-09-23 night

Spool assumption: **one full ~1 lb roll of 26 AWG** (insulated OD **0.45 mm**, fill **0.70**). Length budget ≈ **390 m** bare-copper-equivalent mass basis.

## Gen-Y (dual-rotor micro-gap)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 150 / 2 |
| wind_build_axial | 2×0.45×0.7 = **0.63 mm** |
| wind_build_radial | 3×0.45×0.7 = **0.945 mm** |
| former_bare_h | 1.8+2×0.70 = **3.2 mm** |
| coil_envelope_h | 3.2+2×0.63 = **4.46 mm** |
| run_clear | **0.65 mm** |
| gap_spacer_h | 0.65+0.63 = **1.28 mm** |
| m2m | 4.46+2×0.65 = **5.76 mm** |
| magnet↔wound | **0.65 mm PASS** |
| copper length | 12×150×0.12 ≈ **216 m** |

## Gen-Z (dual-stator mid-rotor)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 115 / 2 (9 coils ×2 = 18) |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.882 mm** |
| former_bare_h | **3.3 mm** |
| coil_envelope_h | **4.56 mm** |
| run_clear | **0.65 mm** |
| gap_spacer_h | **1.28 mm** |
| m2m (per gap) | **5.86 mm** |
| magnet↔wound | **0.65 mm PASS** (both faces) |
| copper length | 18×115×0.11 ≈ **228 m** |

## Gen-AA (vernier flux-claw nano)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 145 / 2 |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.945 mm** |
| former_bare_h | **3.5 mm** |
| coil_envelope_h | **4.76 mm** |
| run_clear | **0.70 mm** |
| gap_spacer_h | **1.33 mm** |
| m2m | **6.16 mm** (≤6.4; beats Gen-X 6.76) |
| magnet↔wound | **0.70 mm PASS** |
| copper length | 12×145×0.115 ≈ **200 m** |

## Gate

All three **PASS** `WOUND_COIL_RULE.md`. No bare-former gap sizing.
