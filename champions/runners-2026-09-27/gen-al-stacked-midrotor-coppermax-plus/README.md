# Gen-AL — Stacked dual-stator mid-rotor copper-max plus / wound-aware 18-coil

**#2 runner** (night 2026-09-27 ET). Evolve Gen-AI: one mid dual-face Halbach rotor between **two** wound pancake stators. **18 coils ×155 t**, `former_web=1.40`, `run_clear=0.50`, Ø20 @ **R=41**, magnet↔wound **0.50 mm PASS**, m2m **4.86**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope

| Param | Value |
|-------|-------|
| Wire | **26 AWG** OD 0.45; fill 0.70 |
| Turns | **155** ×18 ≈ **335 m** copper |
| `former_web` / `flange_t` | **1.40 / 0.60** |
| `coil_envelope_h` | **3.86 mm** |
| `run_clear` | **0.50 mm** |
| `m2m` | **4.86 mm** per gap |
| magnet↔wound | **0.50 mm PASS** |

### ⚠️ MID-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating either stator toward the mid-rotor magnets. Wind all **18** formers before assembly. Print formers with **brim** (0.60 mm flanges / 1.40 mm web).

## Magnets
Full kit: 16× Ø20×5 (8 per face) @ R=41 + 48× Ø5×5 Halbach @ {27,41,57}. Face B offset +22.5°.

## Modular interface
Gen-E family: shaft bore 8.35, 608 pockets, 6× M3 @ R=72, 4× M4 brace @ R≈68.

## Parts
| File | Qty |
|------|-----|
| `rotor_mid.stl` | 1 |
| `stator_core.stl` | **2** |
| `coil_former.stl` | **18** (9 on one-plate; dup) |
| `gap_spacer.stl` | **18** |
| `endbell_front/rear.stl` | 1 each (or front ×2) |
| `shaft_collar.stl` | 2–4 |
| `fit_coupon.stl` | 1 |

One-plate bbox **405.5×404.5 mm** (≤408). Est. **~12–25 W @200 RPM**.
