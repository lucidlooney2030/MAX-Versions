# Gen-AF — Stacked dual-stator mid-rotor Halbach copper-max / wound-aware 18-coil

**#2 challenger** (night 2026-09-25 ET). ONE mid dual-face Halbach rotor between TWO wound pancake stators. Beats Gen-AC: `m2m=5.11`/gap (vs 5.46), larger copper window ID20–OD62, **135 t**/coil, magnet↔wound **0.55 PASS**.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb ≈ 390 m |
| Turns | **135** / pancake | 18×135×~0.118 m ≈ **287 m** copper |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.882 mm** | `2.8 × 0.45 × 0.7` |
| `former_web` / `flange_t` | **1.55 / 0.60 mm** | thinner than Gen-AC 1.7/0.65 |
| `former_bare_h` | **2.75 mm** | |
| `coil_envelope_h` | **4.01 mm** | |
| `run_clear` | **0.55 mm** | magnet → **wound** |
| `gap_spacer_h` | **1.18 mm** | |
| `m2m` (per gap) | **5.11 mm** | **NOT** bare |
| magnet→wound | **0.55 mm** | **PASS** both faces |

Stator bays: wound-sized; back web retained (`bay_depth` includes wind_build_axial). **Print `stator_core` ×2.**

## Magnet inventory

Full kit on **one mid rotor** (both faces): 8+8 Ø20 + 24+24 Ø5 Halbach. Pockets Ø20.3 / Ø5.3 × 5.2. Carrier thick **12 mm**. Carrier OD **152 mm**.

### Polarity
+Z face: alternate N-S toward Stator A. −Z face (+22.5°): alternate N-S toward Stator B. Halbach smalls intensify poles.

### ⚠️ MID-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68 BEFORE** seating either wound stator toward the magnet faces. Wind all **18** formers first. Dual-gap stack — both copper faces active.

## Coils
- **9** pancakes × **2** stators = **18** total (3φ)
- **26 AWG × 135 t**; star per stator (modular swap)
- Copper ~287 m on 1 lb 26 AWG

## Stack (per gap)

```
stator A wound face
  └── run_clear 0.55 mm
mid-rotor magnet face (+Z)
  … mid carrier 12 mm …
mid-rotor magnet face (−Z)
  └── run_clear 0.55 mm
stator B wound face
—— m2m per gap = 5.11 mm ——
```

## Estimated EMF / power

Method: AFPM copper-window × turns × B_gap × RPM; N52 Halbach-boosted B_gap ≈ **0.65–0.90 T**/gap; dual stator faces active.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~7–14 V | ~4.5–9 W |
| **200** | **~13–28 V** | **~10–21 W** |
| 300 | ~20–42 V | ~18–35 W |
| 500–1000 | ~33–90 V | ~28–75 W (thermal) |

**vs Gen-AC (~9–19 W @200, m2m 5.46):** Gen-AF targets **~10–21 W** — thinner m2m 5.11 + 135 vs 125 t + larger window ID20–OD62.

## Modular interface

| Spec | Value |
|------|-------|
| Shaft | Ø8 / bore Ø8.35 |
| Bearings | 608ZZ seats Ø21.85×7.2 |
| Hub | Ø30×10 |
| Endbell / stator bolts | **6× M3 @ R=72** (Gen-E family) |
| Brace | **4× M4 @ R≈68** (REQUIRED) |
| M3 clear | Ø3.4–3.5 |
| Heat-set | M3 inserts preferred |

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_mid.stl` | 1 | Dual-face magnet carrier |
| `stator_core.stl` | **2** | Wound-sized bays + back web |
| `coil_former.stl` | **18** | **Wind before assembly** |
| `gap_spacer.stl` | **18** | h=`gap_spacer_h` |
| `endbell_front.stl` | 1 | |
| `endbell_rear.stl` | 1 | |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | **Print first** |

One-plate: `print-packs/one-plate/` carries mid rotor + **both** stators + endbell front + sample formers/spacers. Remaining formers (to 18) and spacers as duplicate prints — see PLATE.md.

## BOM

- 16× Ø20×5 + 48× Ø5×5 N52 (all on mid rotor)
- Ø8 shaft, 2–4× 608ZZ, M3 + heat-set inserts, 4× M4 brace rod
- **26 AWG** magnet wire (~1 lb)
- Optional thin steel backing on mid rotor faces

## Print / safety

**0.4 mm** nozzle default. PETG/ABS preferred. Walls ≥0.8. **MID-ROTOR CLAP.** Wind all 18 formers first. Print fit coupon before full kit.
