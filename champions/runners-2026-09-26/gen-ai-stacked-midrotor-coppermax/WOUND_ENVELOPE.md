# Wound envelope math — Gen-AI (2026-09-26)

Spool: **one ~1 lb roll of 26 AWG** (insulated OD **0.45 mm**, fill **0.70**). Budget ≈ **390 m**.

| Var | Value |
|-----|-------|
| turns / layers_per_face | **145 / 2** (9 coils ×2 = 18) |
| wind_build_axial | 2×0.45×0.7 = **0.63 mm** |
| wind_build_radial | 3×0.45×0.7 = **0.945 mm** |
| former_bare_h | 1.50+2×0.60 = **2.70 mm** |
| coil_envelope_h | 2.70+2×0.63 = **3.96 mm** |
| run_clear | **0.52 mm** |
| gap_spacer_h | 0.52+0.63 = **1.15 mm** |
| m2m (per gap) | 3.96+2×0.52 = **5.00 mm** |
| magnet↔wound | **0.52 mm PASS** (both faces) |
| copper length | 18×145×0.122 ≈ **318 m** |

### Assert
```
run_clear=0.52 ≥ 0.5
m2m = coil_envelope_h + 2×run_clear = 3.96 + 2×0.52 = 5.00
gap_spacer_h = run_clear + wind_build_axial = 1.15
```
**Gate: PASS**
