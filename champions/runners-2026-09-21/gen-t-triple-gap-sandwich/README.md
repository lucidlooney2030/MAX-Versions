# Gen-T — Triple-gap sandwich AFPM / wound-aware 18-coil

**Dual-stator triple-gap upgrade** (night 2026-09-21 ET). Stack: **RotorA | Stator1 | Mid dual-face rotor | Stator2 | RotorB**. Maximizes linked flux×copper vs Gen-M while staying wound-aware in **each** gap.

**Wound gate: PASS**

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | OD **0.45 mm**; ~1 lb ≈ 390 m |
| Turns | **100** / pancake | 18×100×~0.10 m ≈ **180 m** |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.788 mm** | |
| `former_web` / `flange_t` | **2.4 / 0.85** | |
| `former_bare_h` | **4.1 mm** | |
| `coil_envelope_h` | **5.36 mm** | |
| `run_clear` | **0.82 mm** | magnet → wound each gap |
| `gap_spacer_h` | **1.45 mm** | |
| `m2m_outer` | **7.00 mm** | envelope + 2×run_clear per outer gap |
| magnet→wound | **0.82 mm** | **PASS** (both outer gaps) |

## Magnet inventory

| Location | Ø20×5 | Ø5×5 |
|----------|-------|------|
| Rotor outer A | 4 | 12 |
| Mid dual-face | 4+4 | 12+12 |
| Rotor outer B | 4 | 12 |
| **Total** | **16** | **48** |

Clock outer B by +45°. Mid faces offset for flux continuity through each stator.

### ⚠️ MULTI-ROTOR CLAP
Three magnet carriers. Brace **all** stages with M4 rods before closing gaps. Assemble mid first (glued), then stator1 + outer A, then stator2 + outer B. **Wind all 18 formers before assembly.**

## Coils

- **9 + 9 = 18** pancakes (3φ)
- Each stator sees **dual gap** (outer face + mid face)
- 26 AWG × 100 t

## Estimated EMF / power

More copper than Gen-P (18 vs 12) but fewer poles per face (4 vs 8) → B per gap moderate ≈ **0.40–0.60 T**. Additive across two stator planes.

| RPM | Est. matched power |
|-----|--------------------|
| 120 | ~2.5–6 W |
| **200** | **~6.5–14 W** |
| 300 | ~10–22 W |
| 500–1000 | ~18–45 W (thermal) |

Competitive runner vs Gen-P; may not clear Gen-P midpoint without measured B. Honest range.

## Modular interface

Shaft Ø8 / bore 8.35; 608ZZ Ø21.85×7.2; **6× M3 @ R=72**; brace 4× M4 @ R≈68; heat-set M3.

## Parts to print

| File | Qty |
|------|-----|
| `rotor_outer.stl` | **2** |
| `rotor_mid.stl` | 1 |
| `stator_core.stl` | **2** |
| `coil_former.stl` | **18** |
| `gap_spacer.stl` | **18** |
| `endbell_front/rear.stl` | 1 each |
| `shaft_collar.stl` | 2–4 |
| `fit_coupon.stl` | 1 |

**One-plate:** primary plate in `print-packs/one-plate/` carries unique STLs + sample coils; **duplicate** outer rotor, stator, endbell, and remaining coils in slicer or second plate (noted in PLATE.md).

## BOM

16×Ø20×5 + 48×Ø5×5 N52; Ø8 shaft; 608ZZ; M3/M4; **26 AWG** ~1 lb.
