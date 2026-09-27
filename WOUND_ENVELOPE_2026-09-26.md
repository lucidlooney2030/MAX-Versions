# Wound envelope math — 2026-09-26 night

Spool assumption: **one full ~1 lb roll of 26 AWG** (insulated OD **0.45 mm**, fill **0.70**). Length budget ≈ **390 m**.

## Gen-AH (dual-rotor copper-centroid hypermicro) — #1 / NEW CHAMPION

| Var | Value |
|-----|-------|
| turns / layers_per_face | 180 / 2 |
| wind_build_axial | 2×0.45×0.7 = **0.63 mm** |
| wind_build_radial | 3×0.45×0.7 = **0.945 mm** |
| former_bare_h | 1.50+2×0.60 = **2.70 mm** |
| coil_envelope_h | 2.70+2×0.63 = **3.96 mm** |
| run_clear | **0.50 mm** |
| gap_spacer_h | 0.50+0.63 = **1.13 mm** |
| m2m | 3.96+2×0.50 = **4.96 mm** |
| magnet↔wound | **0.50 mm PASS** |
| copper length | 12×180×0.136 ≈ **294 m** |
| magnets | 8+8 Ø20 @ **R=41** + 24+24 Ø5 @ {26,41,58} |

## Gen-AI (stacked dual-stator mid-rotor copper-max) — #2

| Var | Value |
|-----|-------|
| turns / layers_per_face | 145 / 2 (9×2=18 coils) |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.945 mm** |
| former_bare_h | **2.70 mm** |
| coil_envelope_h | **3.96 mm** |
| run_clear | **0.52 mm** |
| gap_spacer_h | **1.15 mm** |
| m2m (per gap) | 3.96+2×0.52 = **5.00 mm** |
| magnet↔wound | **0.52 mm PASS** |
| copper length | 18×145×0.122 ≈ **318 m** |
| magnets | 8+8 Ø20 both faces @ R=42 + 24+24 Ø5 @ {28,42,58} |

## Gen-AJ (vernier flux-claw ultra) — #3

| Var | Value |
|-----|-------|
| turns / layers_per_face | 175 / 2 |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.945 mm** |
| former_bare_h | **2.70 mm** |
| coil_envelope_h | **3.96 mm** |
| run_clear | **0.50 mm** |
| gap_spacer_h | **1.13 mm** |
| m2m | 3.96+2×0.50 = **4.96 mm** |
| magnet↔wound | **0.50 mm PASS** |
| copper length | 12×175×0.130 ≈ **273 m** |
| magnets | 8+8 Ø20 @ R=42 (+22.5° vernier) + 24+24 Ø5 claws @ {27,42,57} |

## Gate

All three **PASS** `WOUND_COIL_RULE.md`. No bare-former gap sizing. Spool totals all under 390 m.

### Assert (computed)
```
AH: run_clear=0.50 ≥ 0.5; m2m = 3.96 + 2×0.50 = 4.96
AI: run_clear=0.52 ≥ 0.5; m2m = 3.96 + 2×0.52 = 5.00
AJ: run_clear=0.50 ≥ 0.5; m2m = 3.96 + 2×0.50 = 4.96
```
