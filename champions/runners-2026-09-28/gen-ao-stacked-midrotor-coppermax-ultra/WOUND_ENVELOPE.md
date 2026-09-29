# Wound envelope math — Gen-AO (2026-09-28)

Spool: **one ~1 lb roll of 26 AWG** (insulated OD **0.45 mm**, fill **0.70**). Budget ≈ **390 m**.

| Var | Value |
|-----|-------|
| turns / layers_per_face | **165 / 2** |
| wind_build_axial | 2×0.45×0.7 = **0.63 mm** |
| wind_build_radial | 3×0.45×0.7 = **0.945 mm** |
| former_bare_h | 1.30+2×0.60 = **2.50 mm** |
| coil_envelope_h | 2.50+2×0.63 = **3.76 mm** |
| run_clear | **0.50 mm** (PASS floor) |
| gap_spacer_h | 0.50+0.63 = **1.13 mm** |
| m2m | 3.76+2×0.50 = **4.76 mm** |
| magnet↔wound | **0.50 mm PASS** |
| copper length | 18×165×0.119 ≈ **353 m** |

### Assert
```
run_clear=0.50 ≥ 0.5
m2m = coil_envelope_h + 2×run_clear = 3.76 + 2×0.50 = 4.76
gap_spacer_h = run_clear + wind_build_axial = 1.13
NEVER size gap to former_bare_h (2.50)
copper 353 ≤ 390
```
**Gate: PASS**
