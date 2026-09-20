# Gen-M SCORECARD — wound gate

| Check | Result |
|-------|--------|
| Explicit `wind_build` / `coil_envelope` in SCAD+README | **PASS** (`parameters.scad`) |
| AWG + turns stated | **PASS** 26 AWG × 120 t |
| Magnet ↔ **wound** face ≥ 0.8 mm | **PASS** 0.85 mm |
| Stator bays clear **wound** radial | **PASS** bay_r + bay_offset |
| Gap from wound math not bare former | **PASS** `gap_spacer_h = run_clear + wind_build_axial` |
| Modular Ø8 / 608ZZ / bolt circles | **PASS** Gen-E R=72 |
| One-plate ~410×410 | **PASS** (see print-packs) |
| STLs watertight (trimesh) | **PASS** |

**Verdict: PASS — MAX champion 2026-09-20 (wound).**

## Audit assumptions

| Wire | Insulated OD |
|------|--------------|
| 26 AWG | ≈ 0.45 mm |
| fill | 0.70 |
| layers_per_face | 3 |
| wind_build_axial | 0.945 mm |
| coil_envelope_h | 7.09 mm |
