# Night wound envelope — 2026-09-29

All three kits share the same axial wind math (26 AWG, fill 0.70, layers_per_face=2, former_web=1.25, flange_t=0.60):

| Shared | Value |
|--------|-------|
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.945 mm** |
| former_bare_h | **2.45 mm** |
| coil_envelope_h | **3.71 mm** |
| run_clear | **0.50 mm** |
| gap_spacer_h | **1.13 mm** |
| m2m | **4.71 mm** |
| magnet↔wound | **0.50 mm PASS** all three |

| Kit | Turns | Coils | Copper m | Gate |
|-----|-------|-------|----------|------|
| Gen-AQ | 205 | 12 | 320 | **PASS** |
| Gen-AR | 175 | 18 | 369 | **PASS** |
| Gen-AS | 200 | 12 | 307 | **PASS** |

Hard rule: never size air gap to bare former. See `WOUND_COIL_RULE.md`.
