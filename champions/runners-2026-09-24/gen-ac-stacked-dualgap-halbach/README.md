# Gen-AC — Stacked dual-gap / mid-rotor Halbach intensifier / wound-aware 18-coil

**#2 challenger** (night 2026-09-24 ET). ONE mid dual-face Halbach rotor between TWO wound pancake stators. Beats Gen-Z: `m2m=5.46`/gap (vs 5.86), larger copper window ID21–OD60, **125 t**/coil, magnet↔wound **0.60 PASS**.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb ≈ 390 m |
| Turns | **125** / pancake | 18×125×~0.115 m ≈ **259 m** copper |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.882 mm** | |
| `former_web` / `flange_t` | **1.7 / 0.65 mm** | |
| `former_bare_h` | **3.0 mm** | |
| `coil_envelope_h` | **4.26 mm** | |
| `run_clear` | **0.60 mm** | magnet → **wound** |
| `gap_spacer_h` | **1.23 mm** | |
| `m2m` (per gap) | **5.46 mm** | **NOT** bare |
| magnet→wound | **0.60 mm** | **PASS** both faces |

Stator bays: wound-sized; back web retained (`bay_depth` includes wind_build_axial).

## Magnet inventory

Full kit on **one mid rotor** (both faces): 8+8 Ø20 + 24+24 Ø5 Halbach. Pockets Ø20.3 / Ø5.3 × 5.2. Carrier thick **12 mm**.

### Polarity
+Z face: alternate N-S toward Stator A. −Z face (+22.5°): alternate N-S toward Stator B. Halbach smalls intensify poles.

### ⚠️ MID-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68 BEFORE** seating either wound stator toward the magnet faces. Wind all **18** formers first. Dual-gap stack — both copper faces active.

## Coils
- **9** pancakes × **2** stators = **18** total (3φ)
- **26 AWG × 125 t**; star per stator (modular swap)
- Copper ~259 m on 1 lb 26 AWG

## Estimated EMF / power

AFPM dual-gap scaling: B_gap ≈ 0.60–0.85 T/gap (Halbach mid), window × turns vs Gen-Z.

| RPM | Est. matched power |
|-----|--------------------|
| 120 | ~4–9 W |
| **200** | **~9–19 W** |
| 300 | ~16–32 W |
| 500–1000 | ~25–70 W (thermal) |

**vs Gen-Z (~8–17 W):** thinner m2m + larger window + +10 t/coil → **~9–19 W @200**. Competitive #2 vs Gen-AB.

## Modular interface
Gen-E: shaft_bore 8.35, bearing_d 21.85, flange_bolt_r=72 / n=6, brace R≈68. Stators swap independently.

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_mid.stl` | 1 | Magnets both faces |
| `stator_core.stl` | **2** | Wound bays + back web |
| `coil_former.stl` | **18** | Wind before assembly |
| `gap_spacer.stl` | **18** | |
| `endbell_front.stl` / `endbell_rear.stl` | 1 each | |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | **Print first** |

One-plate primary: mid-rotor + 2×stator + endbell + sample formers; remaining formers as dups / 2nd plate — see `print-packs/one-plate/PLATE.md`.

## BOM
16× Ø20×5 + 48× Ø5×5 N52; Ø8 shaft; 608ZZ; M3 inserts; 4× M4 brace; **26 AWG** ~1 lb.

## Print / safety
0.4 mm nozzle. PETG/ABS. **MID-ROTOR CLAP.** Wind first.
