# Physics score — gen-bv-dual-rotor-6p9c-r57

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 6 poles, 9 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 10.00 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **8.52 V rms** (13.43 V pk), line 10.13 V rms |
| Phase resistance | **16.0 Ω** @20 °C (18.6 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **3.395 W** (2.934 W hot) |
| Current at matched load / short-circuit | 0.266 A / 0.531 A per phase |
| Turns per coil (fit / claimed) | **518** / 518 (fit 518) |
| Peak |Bz| at copper mid-plane | 0.530 T |
| Mean |Bz| over coil window (aligned) | 0.138 T |
| Halbach Ø5 assist magnets | NOT counted (none) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 8.10 mm axial x 15.66 mm radial build = 126.85 mm² |
| Copper boundary | r 39.00–74.00 mm, span 35.15° |
| Wire | OD 0.45 mm insulated, bare 0.4049 mm; fill assumption 0.65 (insulated-wire area / window) |
| Layers x max turns/layer | 18 x 34 |
| Fit (area / layer limit) | 518 / 612 → **518** |
| Copper fill achieved | 0.53 |
| Mean turn length | 76.8 mm |
| Wire per coil / total | 39.92 m / 359.2 m |
| Coil resistance | 5.344 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 59.2772 mWb-turn; coil EMF 2.840 V rms
- Phase grouping balanced: True, coils/phase {0: 3, 1: 3, 2: 3}, worst phasor error 0.0°
- Field per stator: {'S': {'peak': 0.5296, 'mean_window': 0.1379}}
- Axial stack (mm): {'recess': 0.0, 'm2m': 10.7, 'mag_face_z': 5.35, 'wound_gap': 0.5, 'copper_gap': 1.2999999999999998, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 60 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['45', '135', '225', '315']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 518 t, fit 518 t (18 layers x <= 34/layer in 8.10 x 15.66 mm window, fill 0.65) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.50 mm (as-built recess 0.00 mm), magnet -> actual copper 1.30 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=39: 1.70 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |
| PASS | one-plate bed fit | one_plate_layout.stl bbox 408.0 x 408.0 x 29.5 mm (limit 410) |

## Notes

- WHAT-IF: steel back-iron disc behind each rotor's magnets, modelled by first-order images (infinite, unsaturated plate) -> optimistic upper bound.

![Bz mid-plane](bz_midplane.png)

