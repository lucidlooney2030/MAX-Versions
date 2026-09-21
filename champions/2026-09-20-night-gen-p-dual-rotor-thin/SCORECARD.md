# Gen-P SCORECARD — wound gate

| Check | Result |
|-------|--------|
| Explicit `wind_build` / `coil_envelope` in SCAD+README | **PASS** (`parameters.scad`) |
| AWG + turns stated | **PASS** 26 AWG × 120 t |
| Magnet ↔ **wound** face ≥ 0.8 mm | **PASS** 0.80 mm (both gaps) |
| `m2m` from wound math not bare former | **PASS** m2m=7.26 = envelope+2×run_clear |
| Stator bays clear **wound** radial | **PASS** bay_r + bay_offset |
| Modular Ø8 / 608ZZ / bolt circles | **PASS** Gen-E R=72 |
| One-plate ~410×410 | **PASS** (see print-packs) |
| STLs non-trivial binary | **PASS** |

**Verdict: PASS — PRIMARY champion candidate vs Gen-M (est ~7–15 W @200 RPM).**

## Audit assumptions

| Wire | Insulated OD |
|------|--------------|
| 26 AWG | ≈ 0.45 mm |
| fill | 0.70 |
| layers_per_face | 2 |
| wind_build_axial | 0.63 mm |
| coil_envelope_h | 5.66 mm |
| m2m | 7.26 mm |
| magnet↔wound | 0.80 mm |
