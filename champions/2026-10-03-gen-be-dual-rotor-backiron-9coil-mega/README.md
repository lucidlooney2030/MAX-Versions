# Gen-BE — nightly 2026-10-03 `gen-be-dual-rotor-backiron-9coil-mega`

Generated 2026-10-03. All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG @20 °C, steel back-iron images).
Full report: [SCORE.md](SCORE.md), field plot: [bz_midplane.png](bz_midplane.png).

## Design idea

Nine-coil dual-rotor with tall bobbins (former_web 3.60 mm) and two buyable mild-steel back-iron discs; image-method steel boost.

## Honest numbers @ 200 RPM

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R) | **1.684 W** |
| Open-circuit voltage | **2.41 V rms/phase** (4.17 V line) |
| Phase resistance (20 °C) | **2.58 Ω** |
| Turns per coil | **107** (fits; do not raise) |
| Peak / mean-over-window Bz | 0.750 / 0.436 T |
| Short-circuit current | 0.93 A/phase (resistance-limited) |
| Verdict | **PASS** |

Matched load = 2.6 Ω/phase (star); I_matched 0.47 A. Copper total 58 m (9 coils × 6.43 m).
Topology **dual_rotor**, 8 poles, 9 coils × 1 stator(s). Steel: YES (scored with --back-iron).

Baseline Gen-BA (corrected): 0.615 W. This kit BEATS that baseline.

## Magnet polarity / clocking

`rotor_b_offset_deg = 0`. Rotor A pocket 0 (at the D-flat / rim notch): N toward the stator; alternate N/S around. Rotor B is printed identically and flipped to face A: its pocket 0 (at its notch, which lands on the same D-flat) gets S toward the stator, alternating. Result: every magnet faces an opposite pole directly across the gap.
D-flat bore + rim index notch = pocket 0. Brace holes at 45/135/225/315° (flip-symmetric).

## ⚠️ Halbach assist magnets

The 48 × Ø5×5 assist magnets **must be diametrically magnetised** and installed with magnetisation tangential (along the circumference).
Axially magnetised Ø5 do **not** form a Halbach array and are not counted by the scorer. Signs from scorer: {'A': -1, 'B': 1}.

## Steel back-iron (required for scored watts)

Buy and fit **2x mild-steel discs Ø156 x 1.5 mm (buyable laser-cut / washer stock), centre hole Ø32 for hub, behind each rotor magnet face**.

Seat each disc on the **back** of the rotor (opposite the magnet face), concentric with the hub. Epoxy or screw through non-pocket areas.
Scored with `score_kit ... --back-iron` (first-order image method — optimistic upper bound assuming unsaturated infinite plates).
Without the steel discs, air-core output drops by roughly half (re-score without `--back-iron` before claiming watts).

## Parts to print (`print-packs/parts/`; one plate in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_face_a.stl` | 1 | print magnet face DOWN |
| `rotor_face_b.stl` | 1 | identical pocket map (offset 0) |
| `stator_core.stl` | 1 | through bays, bobbins flush both faces |
| `coil_former.stl` | **9** | bobbin base, flange down |
| `coil_lid.stl` | **9** | flange down; CA-glue onto hub before winding |
| `gap_spacer.stl` | 9 | 0.50 mm assembly shims |
| `endbell_front.stl` / `endbell_rear.stl` | 1 / 1 | both on the plate; boss side needs supports |
| `shaft_collar.stl` | 4 | D-flat bore, M3 set screw on the flat |
| `fit_coupon.stl` | 1 | print first |

One-plate: `print-packs/one-plate/one_plate_layout.stl`, measured **409.0 × 409.0 mm** (≤ 410, Kobra 3 Max 420 bed).

## Winding

Bobbin window 3.60 × 7.9 mm → 8 layers, **107 turns** of 26 AWG at fill 0.60.
Copper sector r 26–50 mm × 31.84°. Wind **before** assembly. Magnet→wound envelope 0.70 mm (≥0.5 PASS).

## Assembly order / safety

1. Print coupon; check magnet fit and D-bore on your shaft.
2. Glue each lid onto its base hub, wind 107 turns of 26 AWG in 8 even layers, leads out through lid grooves.
3. Drop bobbins into stator bays, pin with 1.75 mm filament, epoxy. Wire 3φ star per scorer map: `S0:A+ S1:A- S2:B- S3:B+ S4:B- S5:C- S6:C+ S7:C- S8:A-`.
4. Magnets per polarity rule (D-flat / notch = pocket 0). Fit steel back-iron discs on rotor backs before seating magnets if easier for your process.
5. **Brace M4 before seating the second magnet face** (clap hazard — dual faces / mid rotor attracts hard). Set gaps with 0.50 mm shims, lock collars.
6. **Brim on 0.60 mm flanges / thin webs.** Remove temporary braces and shims **before spinning**.

## Kit magnet / wire budget

16× Ø20×5 N52 + 48× Ø5×5 N52 (diametric assists) + ~58 m of 26 AWG (of ~390 m spool).
