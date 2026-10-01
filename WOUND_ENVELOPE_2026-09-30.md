# Night wound envelope — 2026-09-30

All three kits share the same axial wind math (26 AWG, fill 0.70, layers_per_face=2, former_web=1.22, flange_t=0.60):

| Shared | Value |
|--------|-------|
| wind_build_axial | **0.63 mm** |
| wind_build_radial | **0.945 mm** |
| former_bare_h | **2.42 mm** |
| coil_envelope_h | **3.68 mm** |
| run_clear | **0.50 mm** |
| gap_spacer_h | **1.13 mm** |
| m2m | **4.68 mm** |
| magnet↔wound | **0.50 mm PASS** all three |

| Kit | Turns | Coils | Copper m | Gate |
|-----|-------|-------|----------|------|
| Gen-AT | 210 | 12 | 323 | **PASS** |
| Gen-AU | 180 | 18 | 376 | **PASS** |
| Gen-AV | 205 | 12 | 312 | **PASS** |

Hard rule: never size air gap to bare former. See `WOUND_COIL_RULE.md`.
