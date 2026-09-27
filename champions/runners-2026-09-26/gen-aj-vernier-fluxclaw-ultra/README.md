# Gen-AJ — Vernier flux-claw ultra AFPM / wound-aware 12-coil 3φ

**Night runner #3** (2026-09-26 ET). Dual-rotor vernier: Rotor B offset **+22.5°** vs 12-slot stator; Ø5 disks as flux claws at inner/mid/outer radii extending coverage.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm** |
| Turns | **175** / pancake | 12×175×~0.130 m ≈ **273 m** |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.945 mm** | |
| `former_web` / `flange_t` | **1.50 / 0.60 mm** | |
| `former_bare_h` | **2.70 mm** | |
| `coil_envelope_h` | **3.96 mm** | |
| `run_clear` | **0.50 mm** | |
| `gap_spacer_h` | **1.13 mm** | |
| `m2m` | **4.96 mm** | |
| magnet→wound | **0.50 mm** | **PASS** |

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=42 |
| Ø20×5 | **8** | Rotor B @ R=42, vernier **+22.5°** |
| Ø5×5 | **24** | Rotor A claws @ R={27,42,57} |
| Ø5×5 | **24** | Rotor B claws (+22.5°) |

### Polarity map

Same dual-rotor through-flux as Gen-AH. Halbach/claw smalls reinforce pole tips and extend radial coverage.

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. **Wind all 12 formers before assembly.** Print with brim on thin flanges.

## Estimated EMF / power

| RPM | Est. matched power |
|-----|--------------------|
| 120 | ~5–10 W |
| **200** | **~10–22 W** |
| 300 | ~17–36 W |
| 500–1000 | ~28–80 W (thermal) |

## Modular interface

Gen-E family: shaft Ø8 / 8.35, 608ZZ, 6× M3 @ R=72, 4× M4 brace @ R≈68.

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_face_a.stl` | 1 | |
| `rotor_face_b.stl` | 1 | vernier +22.5° |
| `stator_core.stl` | 1 | |
| `coil_former.stl` | **12** | Wind before assembly |
| `gap_spacer.stl` | **12** | h=1.13 |
| `endbell_front.stl` | 1 | |
| `endbell_rear.stl` | 1 | |
| `shaft_collar.stl` | 4 | |
| `fit_coupon.stl` | 1 | |

One-plate: see `print-packs/one-plate/` (≤408×408 mm asserted).
