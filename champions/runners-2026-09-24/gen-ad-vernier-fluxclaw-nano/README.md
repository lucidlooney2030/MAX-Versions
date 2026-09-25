# Gen-AD — Vernier flux-claw dual nano-gap / wound-aware 12-coil 3φ

**#3 challenger** (night 2026-09-24 ET). Vernier 8+8 poles + Ø5 flux claws across nano dual-gap. Beats Gen-AA: `m2m=5.46` (vs 6.16), **155 t**, run_clear **0.60 PASS**, larger window ID20.5–OD61.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | OD **0.45 mm**; ~1 lb ≈ 390 m |
| Turns | **155** / pancake | 12×155×~0.122 m ≈ **227 m** |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.945 mm** | |
| `former_web` / `flange_t` | **1.7 / 0.65 mm** | |
| `former_bare_h` | **3.0 mm** | |
| `coil_envelope_h` | **4.26 mm** | |
| `run_clear` | **0.60 mm** | |
| `gap_spacer_h` | **1.23 mm** | |
| `m2m` | **5.46 mm** | beats Gen-AA 6.16 |
| magnet→wound | **0.60 mm** | **PASS** |

## Magnet inventory
8+8 Ø20 vernier @ R=50 + 24+24 Ø5 claws/edge @ R={36,50,64}. Rotor B offset **+22.5°** (vernier).

### Polarity / claws
Large poles alternate; claw smalls at inner R concentrate flux into coil window; mid/outer Halbach assists.

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace **M4 @ R≈68 BEFORE** seating rotor B. Wind **12** formers first. Nano gap — no skip braces.

## Coils
12 pancakes 3φ × **26 AWG × 155 t**; copper ~227 m.

## Estimated EMF / power

Vernier AFPM dual-gap: B_gap ≈ 0.58–0.82 T (claw concentration), window × turns vs Gen-AA.

| RPM | Est. matched power |
|-----|--------------------|
| 120 | ~3.5–8 W |
| **200** | **~8–17 W** |
| 300 | ~14–28 W |
| 500–1000 | ~22–60 W (thermal) |

**vs Gen-AA (~7–15 W):** thinner m2m + +10 t + larger window → **~8–17 W @200**. Solid #3.

## Modular interface
Gen-E family (shaft 8.35, bearing 21.85, flange 6×M3 @ R72).

## Parts to print
Same dual-rotor kit as Gen-AB pattern: rotor A/B, stator ×1, former ×12, spacer ×12, endbells, collars, fit_coupon. One-plate YES (endbell ×2 from one STL).

## BOM
16× Ø20×5 + 48× Ø5×5; 608ZZ; M3; M4 brace; **26 AWG** ~1 lb.

## Print / safety
0.4 mm nozzle. **DUAL-ROTOR CLAP.** Wind first.
