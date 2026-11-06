# Physics score — gen-ee-dual-rotor-8p12c-r460-inline-o5-pole-pedestal-12seg-24awg

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 8 poles, 12 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 13.33 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **48.68 V rms** (194.67 V pk), line 68.85 V rms |
| Phase resistance | **10.9 Ω** @20 °C (12.6 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **163.039 W** (140.891 W hot) |
| Current at matched load / short-circuit | 2.233 A / 4.466 A per phase |
| Turns per coil (fit / claimed) | **138** / 138 (fit 138) |
| Peak |Bz| at copper mid-plane | 0.630 T |
| Mean |Bz| over coil window (aligned) | 0.183 T |
| Rectangular block magnets (per pole, axial, Cuboid model) | 32 modelled, Br 1.29 T |
| of which second block group (block2_*, 60.0x10.0x3.0 mm) | 16 modelled, Br 1.43 T |
| Ø5×5 AXIAL pole extenders (pole_o5_*, at the poles, upright) | 48 modelled, Br 1.43 T |
| Halbach Ø5 assist magnets | NOT counted (none) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 4.40 mm axial x 11.50 mm radial build = 50.60 mm² |
| Copper boundary | r 384.00–494.00 mm, span 3.88° |
| Wire | OD 0.55 mm insulated, bare 0.5106 mm; fill assumption 0.65 (insulated-wire area / window) |
| Layers x max turns/layer | 8 x 20 |
| Fit (area / layer limit) | 138 / 160 → **138** |
| Copper fill achieved | 0.56 |
| Mean turn length | 233.4 mm |
| Wire per coil / total | 32.37 m / 388.4 m |
| Coil resistance | 2.725 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 61.2563 mWb-turn; coil EMF 12.169 V rms
- Phase grouping balanced: True, coils/phase {0: 4, 1: 4, 2: 4}, worst phasor error 0.0°
- Field per stator: {'S': {'peak': 0.6304, 'mean_window': 0.1827}}
- Axial stack (mm): {'recess': 0.0, 'm2m': 7.0, 'mag_face_z': 3.5, 'wound_gap': 0.5, 'copper_gap': 1.2999999999999998, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 45 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['45', '135', '225', '315']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 138 t, fit 138 t (8 layers x <= 20/layer in 4.40 x 11.50 mm window, fill 0.65) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.50 mm (as-built recess 0.00 mm), magnet -> actual copper 1.30 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=384: 171.95 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |

## Notes

- parameters.scad lines not evaluated: eng_a = 4.6; eng_L = 5.0; eng_ta = 4.6; eng_tr = 0  (invalid syntax (<string>, line 1))
- WHAT-IF: steel back-iron disc behind each rotor's magnets, modelled by first-order images (infinite, unsaturated plate) -> optimistic upper bound.

![Bz mid-plane](bz_midplane.png)

