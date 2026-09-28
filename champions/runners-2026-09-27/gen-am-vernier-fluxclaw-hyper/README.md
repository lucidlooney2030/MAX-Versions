# Gen-AM — Vernier flux-claw hyper AFPM / wound-aware 12-coil 3φ

**#3 runner** (night 2026-09-27 ET). Evolve Gen-AJ: dual-rotor vernier (Rotor B **+22.5°** vs 12-slot stator) + Ø5 flux claws. **185 t**, `former_web=1.40`, Ø20 @ **R=40.5**, m2m **4.86**, magnet↔wound **0.50 mm PASS**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope

| Param | Value |
|-------|-------|
| Wire | **26 AWG** OD 0.45; fill 0.70 |
| Turns | **185** ×12 ≈ **291 m** copper |
| `former_web` / `flange_t` | **1.40 / 0.60** |
| `coil_envelope_h` | **3.86 mm** |
| `run_clear` | **0.50 mm** |
| `m2m` | **4.86 mm** |
| magnet↔wound | **0.50 mm PASS** |

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. **Wind all 12 formers before assembly.** Print with **brim** on 0.60 mm flanges / 1.40 mm web.

## Polarity / vernier
Rotor A alternate N-S; Rotor B +22.5° vernier vs 12-slot stator; Halbach Ø5 claws @ {26,40.5,56} extend flux into copper window.

## Modular interface
Gen-E family: shaft 8.35, 608 pockets, 6× M3 @ R=72, 4× M4 brace @ R≈68.

## Parts
Rotor A/B ×1, stator ×1, coil_former ×12, gap_spacer ×12, endbells ×2, shaft_collar ×4, fit_coupon ×1.

One-plate bbox **404×404 mm**. Est. **~11–24 W @200 RPM**.
