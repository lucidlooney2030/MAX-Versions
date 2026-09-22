# Wound envelope math — 2026-09-21 night

Spool assumption: **one full ~1 lb roll of 26 AWG** (insulated OD **0.45 mm**, fill **0.70**). Length budget ≈ **390 m** bare-copper-equivalent mass basis.

## Gen-S (dual-rotor ultra-thin)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 130 / 2 |
| wind_build_axial | 2×0.45×0.7 = **0.63 mm** |
| wind_build_radial | 3×0.45×0.7 = **0.945 mm** |
| former_bare_h | 2.2+2×0.8 = **3.8 mm** |
| coil_envelope_h | 3.8+2×0.63 = **5.06 mm** |
| run_clear | **0.80 mm** |
| gap_spacer_h | 0.80+0.63 = **1.43 mm** |
| m2m | 5.06+2×0.80 = **6.66 mm** |
| magnet↔wound | **0.80 mm PASS** |
| copper length | 12×130×0.11 ≈ **172 m** |

## Gen-T (triple-gap sandwich)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 100 / 2 |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.788 mm** |
| former_bare_h | **4.1 mm** |
| coil_envelope_h | **5.36 mm** |
| run_clear | **0.82 mm** |
| gap_spacer_h | **1.45 mm** |
| m2m_outer | **7.00 mm** |
| magnet↔wound | **0.82 mm PASS** (each outer gap) |
| copper length | 18×100×0.10 ≈ **180 m** |

## Gen-U (vernier flux-claw)

| Var | Value |
|-----|-------|
| turns / layers_per_face | 140 / 2 |
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.945 mm** |
| former_bare_h | **4.4 mm** |
| coil_envelope_h | **5.66 mm** |
| run_clear | **0.85 mm** |
| gap_spacer_h | **1.48 mm** |
| magnet↔wound | **0.85 mm PASS** |
| copper length | 12×140×0.12 ≈ **202 m** |

## Gate

All three **PASS** `WOUND_COIL_RULE.md`. No bare-former gap sizing.
