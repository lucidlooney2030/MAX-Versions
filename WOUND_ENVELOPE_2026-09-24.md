# Wound envelope math — 2026-09-24 night

Spool assumption: **one full ~1 lb roll of 26 AWG** (insulated OD **0.45 mm**, fill **0.70**). Length budget ≈ **390 m** bare-copper-equivalent mass basis.

## Gen-AB (dual-rotor ultra-micro-gap)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 160 / 2 |
| wind_build_axial | 2×0.45×0.7 = **0.63 mm** |
| wind_build_radial | 3×0.45×0.7 = **0.945 mm** |
| former_bare_h | 1.6+2×0.60 = **2.8 mm** |
| coil_envelope_h | 2.8+2×0.63 = **4.06 mm** |
| run_clear | **0.58 mm** |
| gap_spacer_h | 0.58+0.63 = **1.21 mm** |
| m2m | 4.06+2×0.58 = **5.22 mm** |
| magnet↔wound | **0.58 mm PASS** |
| copper length | 12×160×0.125 ≈ **240 m** |

## Gen-AC (stacked dual-gap mid-rotor Halbach)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 125 / 2 (9 coils ×2 = 18) |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.882 mm** |
| former_bare_h | **3.0 mm** |
| coil_envelope_h | **4.26 mm** |
| run_clear | **0.60 mm** |
| gap_spacer_h | **1.23 mm** |
| m2m (per gap) | **5.46 mm** |
| magnet↔wound | **0.60 mm PASS** (both faces) |
| copper length | 18×125×0.115 ≈ **259 m** |

## Gen-AD (vernier flux-claw nano)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 155 / 2 |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.945 mm** |
| former_bare_h | **3.0 mm** |
| coil_envelope_h | **4.26 mm** |
| run_clear | **0.60 mm** |
| gap_spacer_h | **1.23 mm** |
| m2m | **5.46 mm** (beats Gen-AA 6.16) |
| magnet↔wound | **0.60 mm PASS** |
| copper length | 12×155×0.122 ≈ **227 m** |

## Gate

All three **PASS** `WOUND_COIL_RULE.md`. No bare-former gap sizing. Spool totals all under 390 m.
