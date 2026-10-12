# Physics score — gen-bx-dual-rotor-8p12c-r71-thincopper

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 8 poles, 12 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 13.33 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **12.75 V rms** (19.97 V pk), line 15.37 V rms |
| Phase resistance | **16.7 Ω** @20 °C (19.3 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **7.304 W** (6.312 W hot) |
| Current at matched load / short-circuit | 0.382 A / 0.764 A per phase |
| Turns per coil (fit / claimed) | **410** / 410 (fit 410) |
| Peak |Bz| at copper mid-plane | 0.583 T |
| Mean |Bz| over coil window (aligned) | 0.158 T |
| Halbach Ø5 assist magnets | NOT counted (none) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 6.75 mm axial x 14.87 mm radial build = 100.37 mm² |
| Copper boundary | r 53.00–88.00 mm, span 26.43° |
| Wire | OD 0.45 mm insulated, bare 0.4049 mm; fill assumption 0.65 (insulated-wire area / window) |
| Layers x max turns/layer | 15 x 33 |
| Fit (area / layer limit) | 410 / 495 → **410** |
| Copper fill achieved | 0.53 |
| Mean turn length | 75.6 mm |
| Wire per coil / total | 31.16 m / 373.9 m |
| Coil resistance | 4.171 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 50.3188 mWb-turn; coil EMF 3.187 V rms
- Phase grouping balanced: True, coils/phase {0: 4, 1: 4, 2: 4}, worst phasor error 0.0°
- Field per stator: {'S': {'peak': 0.583, 'mean_window': 0.1583}}
- Axial stack (mm): {'recess': 0.0, 'm2m': 9.35, 'mag_face_z': 4.675, 'wound_gap': 0.5, 'copper_gap': 1.2999999999999998, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 45 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['45', '135', '225', '315']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 410 t, fit 410 t (15 layers x <= 33/layer in 6.75 x 14.87 mm window, fill 0.65) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.50 mm (as-built recess 0.00 mm), magnet -> actual copper 1.30 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=53: 1.70 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |
| PASS | one-plate bed fit | one_plate_layout.stl bbox 408.0 x 408.0 x 29.5 mm (limit 410) |

## Notes

- WHAT-IF: steel back-iron disc behind each rotor's magnets, modelled by first-order images (infinite, unsaturated plate) -> optimistic upper bound.

![Bz mid-plane](bz_midplane.png)

