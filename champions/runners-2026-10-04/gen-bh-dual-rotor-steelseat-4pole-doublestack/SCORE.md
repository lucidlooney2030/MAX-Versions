# Physics score — gen-bh-dual-rotor-steelseat-4pole-doublestack

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 4 poles, 6 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 6.67 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **5.92 V rms** (9.43 V pk), line 7.10 V rms |
| Phase resistance | **14.3 Ω** @20 °C (16.5 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **1.843 W** (1.593 W hot) |
| Current at matched load / short-circuit | 0.207 A / 0.415 A per phase |
| Turns per coil (fit / claimed) | **571** / 571 (fit 571) |
| Peak |Bz| at copper mid-plane | 0.578 T |
| Mean |Bz| over coil window (aligned) | 0.152 T |
| Halbach Ø5 assist magnets | NOT counted (none) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 9.90 mm axial x 15.30 mm radial build = 151.47 mm² |
| Copper boundary | r 22.00–62.00 mm, span 50.35° |
| Wire | OD 0.45 mm insulated, bare 0.4049 mm; fill assumption 0.6 (insulated-wire area / window) |
| Layers x max turns/layer | 22 x 34 |
| Fit (area / layer limit) | 571 / 748 → **571** |
| Copper fill achieved | 0.48 |
| Mean turn length | 93.1 mm |
| Wire per coil / total | 53.29 m / 319.7 m |
| Coil resistance | 7.135 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 93.4834 mWb-turn; coil EMF 2.961 V rms
- Phase grouping balanced: True, coils/phase {0: 2, 1: 2, 2: 2}, worst phasor error 0.0°
- Field per stator: {'S': {'peak': 0.5775, 'mean_window': 0.1517}}
- Axial stack (mm): {'recess': 0.09999999999999964, 'm2m': 12.5, 'mag_face_z': 6.35, 'wound_gap': 0.5999999999999996, 'copper_gap': 1.3999999999999995, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 90 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['0', '90', '180', '270']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 571 t, fit 571 t (22 layers x <= 34/layer in 9.90 x 15.30 mm window, fill 0.6) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.60 mm (as-built recess 0.10 mm), magnet -> actual copper 1.40 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=22: 1.70 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |
| PASS | one-plate bed fit | one_plate_layout.stl bbox 408.5 x 409.0 x 32.6 mm (limit 410) |

## Notes

- WHAT-IF: steel back-iron disc behind each rotor's magnets, modelled by first-order images (infinite, unsaturated plate) -> optimistic upper bound.

![Bz mid-plane](bz_midplane.png)

