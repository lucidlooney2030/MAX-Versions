# Physics score — gen-cx-dual-rotor-8p12c-triple-pole-bar-24awg-r87

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 8 poles, 12 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 13.33 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **12.37 V rms** (20.88 V pk), line 12.59 V rms |
| Phase resistance | **10.8 Ω** @20 °C (12.4 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **10.661 W** (9.213 W hot) |
| Current at matched load / short-circuit | 0.575 A / 1.149 A per phase |
| Turns per coil (fit / claimed) | **262** / 262 (fit 262) |
| Peak |Bz| at copper mid-plane | 0.360 T |
| Mean |Bz| over coil window (aligned) | 0.133 T |
| Rectangular block magnets (per pole, axial, Cuboid model) | 32 modelled, Br 1.29 T |
| of which second block group (block2_*, 10.0x60.0x3.0 mm) | 16 modelled, Br 1.43 T |
| Halbach Ø5 assist magnets | counted (diametric, tangential) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 6.10 mm axial x 15.75 mm radial build = 96.08 mm² |
| Copper boundary | r 59.00–111.50 mm, span 26.60° |
| Wire | OD 0.55 mm insulated, bare 0.5106 mm; fill assumption 0.65 (insulated-wire area / window) |
| Layers x max turns/layer | 11 x 28 |
| Fit (area / layer limit) | 262 / 308 → **262** |
| Copper fill achieved | 0.56 |
| Mean turn length | 121.4 mm |
| Wire per coil / total | 31.95 m / 383.4 m |
| Coil resistance | 2.690 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 44.6451 mWb-turn; coil EMF 3.092 V rms
- Phase grouping balanced: True, coils/phase {0: 4, 1: 4, 2: 4}, worst phasor error 0.0°
- Field per stator: {'S': {'peak': 0.36, 'mean_window': 0.1333}}
- Axial stack (mm): {'recess': 0.0, 'm2m': 8.7, 'mag_face_z': 4.35, 'wound_gap': 0.5, 'copper_gap': 1.2999999999999998, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 45 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['45', '135', '225', '315']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 262 t, fit 262 t (11 layers x <= 28/layer in 6.10 x 15.75 mm window, fill 0.65) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.50 mm (as-built recess 0.00 mm), magnet -> actual copper 1.30 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=59: 1.90 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |

## Notes

- parameters.scad lines not evaluated: eng_a = 4.6; eng_L = 5.0; eng_ta = 4.6; eng_tr = -12  (invalid syntax (<string>, line 1))

![Bz mid-plane](bz_midplane.png)

