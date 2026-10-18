# Physics score — gen-cl-dual-rotor-8p12c-radial-block-wiresaver-300m

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 8 poles, 12 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 13.33 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **10.97 V rms** (18.95 V pk), line 8.40 V rms |
| Phase resistance | **13.7 Ω** @20 °C (15.9 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **6.572 W** (5.679 W hot) |
| Current at matched load / short-circuit | 0.399 A / 0.799 A per phase |
| Turns per coil (fit / claimed) | **196** / 196 (fit 196) |
| Peak |Bz| at copper mid-plane | 0.451 T |
| Mean |Bz| over coil window (aligned) | 0.126 T |
| Rectangular block magnets (per pole, axial, Cuboid model) | 16 modelled, Br 1.29 T |
| Halbach Ø5 assist magnets | counted (diametric, tangential) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 4.00 mm axial x 12.00 mm radial build = 48.00 mm² |
| Copper boundary | r 50.00–104.00 mm, span 25.99° |
| Wire | OD 0.45 mm insulated, bare 0.4049 mm; fill assumption 0.65 (insulated-wire area / window) |
| Layers x max turns/layer | 8 x 26 |
| Fit (area / layer limit) | 196 / 208 → **196** |
| Copper fill achieved | 0.53 |
| Mean turn length | 130.1 mm |
| Wire per coil / total | 25.65 m / 307.8 m |
| Coil resistance | 3.434 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 33.1079 mWb-turn; coil EMF 2.743 V rms
- Phase grouping balanced: True, coils/phase {0: 4, 1: 4, 2: 4}, worst phasor error 0.0°
- Field per stator: {'S': {'peak': 0.4514, 'mean_window': 0.1262}}
- Axial stack (mm): {'recess': 0.0, 'm2m': 6.6, 'mag_face_z': 3.3, 'wound_gap': 0.5, 'copper_gap': 1.2999999999999998, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 45 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['45', '135', '225', '315']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 196 t, fit 196 t (8 layers x <= 26/layer in 4.00 x 12.00 mm window, fill 0.65) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.50 mm (as-built recess 0.00 mm), magnet -> actual copper 1.30 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=50: 1.90 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |
| PASS | one-plate bed fit | one_plate_layout.stl bbox 403.7 x 402.2 x 29.5 mm (limit 410) |

![Bz mid-plane](bz_midplane.png)

