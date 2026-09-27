# Gen-AI — Stacked dual-stator mid-rotor copper-max / wound-aware 18-coil

**Night runner #2** (2026-09-26 ET). ONE mid dual-face Halbach rotor + TWO wound pancake stators. More copper (18×145 t ≈ 318 m) but magnets split across two gaps — typically trails a dual-rotor single-stator tip.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm** |
| Turns | **145** / pancake | 18×145×~0.122 m ≈ **318 m** |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.945 mm** | |
| `former_web` / `flange_t` | **1.50 / 0.60 mm** | |
| `former_bare_h` | **2.70 mm** | |
| `coil_envelope_h` | **3.96 mm** | |
| `run_clear` | **0.52 mm** | magnet → **wound** |
| `gap_spacer_h` | **1.15 mm** | |
| `m2m` | **5.00 mm** | per gap |
| magnet→wound | **0.52 mm** | **PASS** both faces |

## Magnet inventory (full kit on ONE mid rotor)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | +Z face @ R=42 |
| Ø20×5 | **8** | −Z face @ R=42, offset **+22.5°** |
| Ø5×5 | **24** | +Z Halbach @ R={28,42,58} |
| Ø5×5 | **24** | −Z Halbach (+22.5°) |

Mid carrier thick **12.0 mm** (pockets both faces). Carrier OD **154**, stator OD **156**.

### ⚠️ MID-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating either wound stator toward the magnet faces. **Wind all 18 formers before assembly.** Print formers with brim (0.60 mm flanges).

## Coils

- **9** pancakes per stator × **2** = **18** total (3φ)
- **26 AWG × 145 t**; star 3φ per stator (can series/parallel the two)

## Estimated EMF / power

| RPM | Est. matched power |
|-----|--------------------|
| 120 | ~5–11 W |
| **200** | **~11–23 W** |
| 300 | ~18–38 W |
| 500–1000 | ~30–85 W (thermal) |

## Modular interface

Same Gen-E family: shaft Ø8 / 8.35, 608ZZ Ø21.85×7.2, 6× M3 @ R=72, 4× M4 brace @ R≈68.

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_mid.stl` | 1 | Dual-face Halbach |
| `stator_core.stl` | **2** | Wound bays + back web |
| `coil_former.stl` | **18** | Wind before assembly |
| `gap_spacer.stl` | **18** | h=1.15 |
| `endbell_front.stl` | 1 | |
| `endbell_rear.stl` | 1 | (or front ×2) |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | Print first |

One-plate packs 1 mid rotor + 1 stator (print ×2) + 1 endbell (print ×2) + 9 formers (dup to 18) — see `print-packs/one-plate/PLATE.md`.
