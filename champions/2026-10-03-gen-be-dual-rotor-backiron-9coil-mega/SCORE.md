# Physics score — gen-be-dual-rotor-backiron-9coil-mega

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 8 poles, 9 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 13.33 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **2.41 V rms** (3.31 V pk), line 4.17 V rms |
| Phase resistance | **2.6 Ω** @20 °C (3.0 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **1.684 W** (1.455 W hot) |
| Current at matched load / short-circuit | 0.466 A / 0.932 A per phase |
| Turns per coil (fit / claimed) | **107** / 107 (fit 107) |
| Peak |Bz| at copper mid-plane | 0.750 T |
| Mean |Bz| over coil window (aligned) | 0.436 T |
| Halbach Ø5 assist magnets | counted (diametric, tangential) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 3.60 mm axial x 7.90 mm radial build = 28.44 mm² |
| Copper boundary | r 26.00–50.00 mm, span 31.84° |
| Wire | OD 0.45 mm insulated, bare 0.4049 mm; fill assumption 0.6 (insulated-wire area / window) |
| Layers x max turns/layer | 8 x 17 |
| Fit (area / layer limit) | 107 / 136 → **107** |
| Copper fill achieved | 0.48 |
| Mean turn length | 58.7 mm |
| Wire per coil / total | 6.43 m / 57.9 m |
| Coil resistance | 0.861 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 14.3737 mWb-turn; coil EMF 0.837 V rms
- Phase grouping balanced: True, coils/phase {0: 3, 1: 3, 2: 3}, worst phasor error 20.0°
- Field per stator: {'S': {'peak': 0.7496, 'mean_window': 0.4356}}
- Axial stack (mm): {'recess': 0.20000000000000018, 'm2m': 5.8, 'mag_face_z': 3.1, 'wound_gap': 0.7000000000000002, 'copper_gap': 1.3, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 45 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['45', '135', '225', '315']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 107 t, fit 107 t (8 layers x <= 17/layer in 3.60 x 7.90 mm window, fill 0.6) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.70 mm (as-built recess 0.20 mm), magnet -> actual copper 1.30 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=26: 1.70 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |
| PASS | one-plate bed fit | one_plate_layout.stl bbox 409.0 x 409.0 x 21.2 mm (limit 410) |

## Notes

- WHAT-IF: steel back-iron disc behind each rotor's magnets, modelled by first-order images (infinite, unsaturated plate) -> optimistic upper bound.

![Bz mid-plane](bz_midplane.png)

