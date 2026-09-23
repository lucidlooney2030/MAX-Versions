# Wound envelope math — 2026-09-22 night

Spool assumption: **one full ~1 lb roll of 26 AWG** (insulated OD **0.45 mm**, fill **0.70**). Length budget ≈ **390 m** bare-copper-equivalent mass basis.

## Gen-V (dual-rotor nano-gap)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 140 / 2 |
| wind_build_axial | 2×0.45×0.7 = **0.63 mm** |
| wind_build_radial | 3×0.45×0.7 = **0.945 mm** |
| former_bare_h | 2.0+2×0.75 = **3.5 mm** |
| coil_envelope_h | 3.5+2×0.63 = **4.76 mm** |
| run_clear | **0.70 mm** |
| gap_spacer_h | 0.70+0.63 = **1.33 mm** |
| m2m | 4.76+2×0.70 = **6.16 mm** |
| magnet↔wound | **0.70 mm PASS** |
| copper length | 12×140×0.115 ≈ **193 m** |

## Gen-W (triple-rotor dual-stator)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 110 / 2 |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.882 mm** |
| former_bare_h | **3.5 mm** |
| coil_envelope_h | **4.76 mm** |
| run_clear | **0.75 mm** |
| gap_spacer_h | **1.38 mm** |
| m2m_outer / m2m_inner | **6.26 mm** |
| magnet↔wound | **0.75 mm PASS** (all four faces) |
| copper length | 18×110×0.10 ≈ **198 m** |

## Gen-X (vernier flux-claw dual)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 135 / 2 |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.945 mm** |
| former_bare_h | **4.0 mm** |
| coil_envelope_h | **5.26 mm** |
| run_clear | **0.75 mm** |
| gap_spacer_h | **1.38 mm** |
| m2m | **6.76 mm** (≤6.8) |
| magnet↔wound | **0.75 mm PASS** |
| copper length | 12×135×0.11 ≈ **178 m** |

## Gate

All three **PASS** `WOUND_COIL_RULE.md`. No bare-former gap sizing.
