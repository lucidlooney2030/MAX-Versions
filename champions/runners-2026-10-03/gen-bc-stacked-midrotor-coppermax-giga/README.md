# Gen-BC — nightly 2026-10-03 `gen-bc-stacked-midrotor-coppermax-giga`

Generated 2026-10-03. All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG @20 °C).
Full report: [SCORE.md](SCORE.md), field plot: [bz_midplane.png](bz_midplane.png).

## Design idea

Mid-rotor copper-max evolved from Gen-BA: taller former_web 3.60 mm, RL=40, bolt circle pulled to R18 so pockets stay clear.

## Honest numbers @ 200 RPM

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R) | **0.802 W** |
| Open-circuit voltage | **2.44 V rms/phase** (4.23 V line) |
| Phase resistance (20 °C) | **5.59 Ω** |
| Turns per coil | **114** (fits; do not raise) |
| Peak / mean-over-window Bz | 0.337 / 0.187 T |
| Short-circuit current | 0.44 A/phase (resistance-limited) |
| Verdict | **PASS** |

Matched load = 5.6 Ω/phase (star); I_matched 0.22 A. Copper total 125 m (18 coils × 6.96 m).
Topology **mid_rotor**, 8 poles, 9 coils × 2 stator(s). Steel: no (air-core).

Baseline Gen-BA (corrected): 0.615 W. This kit BEATS that baseline.

## Magnet polarity / clocking

`rotor_b_offset_deg = 0`. Each O20 column is a back-to-back pair through the mid rotor, magnetised THROUGH the rotor: if the +Z magnet in pocket 0 shows N toward stator A, the -Z magnet in pocket 0 shows S toward stator B (the pair attracts through the ~1.6 mm web). Alternate N/S around each face.
D-flat bore + rim index notch = pocket 0. Brace holes at 45/135/225/315° (flip-symmetric).

## ⚠️ Halbach assist magnets

The 48 × Ø5×5 assist magnets **must be diametrically magnetised** and installed with magnetisation tangential (along the circumference).
Axially magnetised Ø5 do **not** form a Halbach array and are not counted by the scorer. Signs from scorer: {'top': -1, 'bottom': 1}.

## Parts to print (`print-packs/parts/`; one plate in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_mid.stl` | 1 | both faces pocketed; D-flat bore |
| `stator_core.stl` | **2** | blind bays face the rotor; 2nd copy flipped |
| `coil_former.stl` | **18** | bobbin base, flange down |
| `coil_lid.stl` | **18** | flange down; CA-glue onto hub before winding |
| `gap_spacer.stl` | 9 | 0.50 mm assembly shims |
| `endbell_front.stl` / `endbell_rear.stl` | 1 / 1 | rear endbell is NOT on the plate (print endbell_front x2 or endbell_rear separately); boss side needs supports |
| `shaft_collar.stl` | 2 | D-flat bore, M3 set screw on the flat |
| `fit_coupon.stl` | 1 | print first |

One-plate: `print-packs/one-plate/one_plate_layout.stl`, measured **408.5 × 409.0 mm** (≤ 410, Kobra 3 Max 420 bed).

## Winding

Bobbin window 3.60 × 8.4 mm → 8 layers, **114 turns** of 26 AWG at fill 0.60.
Copper sector r 28–52 mm × 32.42°. Wind **before** assembly. Magnet→wound envelope 0.70 mm (≥0.5 PASS).

## Assembly order / safety

1. Print coupon; check magnet fit and D-bore on your shaft.
2. Glue each lid onto its base hub, wind 114 turns of 26 AWG in 8 even layers, leads out through lid grooves.
3. Drop bobbins into stator bays, pin with 1.75 mm filament, epoxy. Wire 3φ star per scorer map: `upper0:A+ upper1:A- upper2:B- upper3:B+ upper4:B- upper5:C- upper6:C+ upper7:C- upper8:A- lower0:A+ lower1:A- lower2:B- lower3:B+ lower4:B- lower5:C- lower6:C+ lower7:C- lower8:A-`.
4. Magnets per polarity rule (D-flat / notch = pocket 0). 
5. **Brace M4 before seating the second magnet face** (clap hazard — dual faces / mid rotor attracts hard). Set gaps with 0.50 mm shims, lock collars.
6. **Brim on 0.60 mm flanges / thin webs.** Remove temporary braces and shims **before spinning**.

## Kit magnet / wire budget

16× Ø20×5 N52 + 48× Ø5×5 N52 (diametric assists) + ~125 m of 26 AWG (of ~390 m spool).
