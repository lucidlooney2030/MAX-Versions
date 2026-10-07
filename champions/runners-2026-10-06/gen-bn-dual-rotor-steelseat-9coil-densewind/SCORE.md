# Physics score — gen-bn-dual-rotor-steelseat-9coil-densewind

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 8 poles, 9 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 13.33 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **9.45 V rms** (11.52 V pk), line 16.13 V rms |
| Phase resistance | **16.1 Ω** @20 °C (18.6 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **4.166 W** (3.600 W hot) |
| Current at matched load / short-circuit | 0.294 A / 0.588 A per phase |
| Turns per coil (fit / claimed) | **486** / 486 (fit 486) |
| Peak |Bz| at copper mid-plane | 0.482 T |
| Mean |Bz| over coil window (aligned) | 0.158 T |
| Halbach Ø5 assist magnets | counted (diametric, tangential) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 9.45 mm axial x 12.60 mm radial build = 119.07 mm² |
| Copper boundary | r 35.00–70.00 mm, span 33.94° |
| Wire | OD 0.45 mm insulated, bare 0.4049 mm; fill assumption 0.65 (insulated-wire area / window) |
| Layers x max turns/layer | 21 x 28 |
| Fit (area / layer limit) | 486 / 588 → **486** |
| Copper fill achieved | 0.53 |
| Mean turn length | 82.0 mm |
| Wire per coil / total | 39.99 m / 359.9 m |
| Coil resistance | 5.355 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 58.6381 mWb-turn; coil EMF 3.332 V rms
- Phase grouping balanced: True, coils/phase {0: 3, 1: 3, 2: 3}, worst phasor error 20.0°
- Field per stator: {'S': {'peak': 0.4824, 'mean_window': 0.1577}}
- Axial stack (mm): {'recess': 0.09999999999999964, 'm2m': 12.049999999999999, 'mag_face_z': 6.124999999999999, 'wound_gap': 0.5999999999999996, 'copper_gap': 1.3999999999999995, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 45 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['45', '135', '225', '315']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 486 t, fit 486 t (21 layers x <= 28/layer in 9.45 x 12.60 mm window, fill 0.65) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.60 mm (as-built recess 0.10 mm), magnet -> actual copper 1.40 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=35: 1.70 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |
| PASS | one-plate bed fit | one_plate_layout.stl bbox 407.9 x 408.0 x 29.6 mm (limit 410) |

## Notes

- WHAT-IF: steel back-iron disc behind each rotor's magnets, modelled by first-order images (infinite, unsaturated plate) -> optimistic upper bound.

![Bz mid-plane](bz_midplane.png)

