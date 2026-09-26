# Wound envelope math — 2026-09-25 night

Spool assumption: **one full ~1 lb roll of 26 AWG** (insulated OD **0.45 mm**, fill **0.70**). Length budget ≈ **390 m** bare-copper-equivalent mass basis.

## Gen-AE (dual-rotor hyper-micro copper-max)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 170 / 2 |
| wind_build_axial | 2×0.45×0.7 = **0.63 mm** |
| wind_build_radial | 3×0.45×0.7 = **0.945 mm** |
| former_bare_h | 1.50+2×0.60 = **2.70 mm** |
| coil_envelope_h | 2.70+2×0.63 = **3.96 mm** |
| run_clear | **0.52 mm** |
| gap_spacer_h | 0.52+0.63 = **1.15 mm** |
| m2m | 3.96+2×0.52 = **5.00 mm** |
| magnet↔wound | **0.52 mm PASS** |
| copper length | 12×170×0.130 ≈ **265 m** |

## Gen-AF (stacked dual-stator mid-rotor Halbach copper-max)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 135 / 2 (9 coils ×2 = 18) |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.882 mm** |
| former_bare_h | **2.75 mm** |
| coil_envelope_h | **4.01 mm** |
| run_clear | **0.55 mm** |
| gap_spacer_h | **1.18 mm** |
| m2m (per gap) | **5.11 mm** |
| magnet↔wound | **0.55 mm PASS** (both faces) |
| copper length | 18×135×0.118 ≈ **287 m** |

## Gen-AG (vernier flux-claw hyper-nano)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 165 / 2 |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.945 mm** |
| former_bare_h | **2.75 mm** |
| coil_envelope_h | **4.01 mm** |
| run_clear | **0.55 mm** |
| gap_spacer_h | **1.18 mm** |
| m2m | **5.11 mm** (beats Gen-AD 5.46) |
| magnet↔wound | **0.55 mm PASS** |
| copper length | 12×165×0.126 ≈ **250 m** |

## Gate

All three **PASS** `WOUND_COIL_RULE.md`. No bare-former gap sizing. Spool totals all under 390 m.

### Assert (computed)

```
AE: run_clear=0.52 ≥ 0.5; m2m = 3.96 + 2×0.52 = 5.00
AF: run_clear=0.55 ≥ 0.5; m2m = 4.01 + 2×0.55 = 5.11
AG: run_clear=0.55 ≥ 0.5; m2m = 4.01 + 2×0.55 = 5.11
```
