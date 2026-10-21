# Physics score — gen-cu-dual-rotor-8p12c-t-pole-24awg-wiresaver-340m

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 8 poles, 12 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 13.33 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **10.53 V rms** (17.62 V pk), line 8.75 V rms |
| Phase resistance | **9.5 Ω** @20 °C (10.9 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **8.783 W** (7.590 W hot) |
| Current at matched load / short-circuit | 0.556 A / 1.112 A per phase |
| Turns per coil (fit / claimed) | **277** / 277 (fit 277) |
| Peak |Bz| at copper mid-plane | 0.396 T |
| Mean |Bz| over coil window (aligned) | 0.110 T |
| Rectangular block magnets (per pole, axial, Cuboid model) | 16 modelled, Br 1.29 T |
| Halbach Ø5 assist magnets | counted (diametric, tangential) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 5.80 mm axial x 17.50 mm radial build = 101.50 mm² |
| Copper boundary | r 58.00–105.50 mm, span 26.54° |
| Wire | OD 0.55 mm insulated, bare 0.5106 mm; fill assumption 0.65 (insulated-wire area / window) |
| Layers x max turns/layer | 10 x 31 |
| Fit (area / layer limit) | 277 / 310 → **277** |
| Copper fill achieved | 0.56 |
| Mean turn length | 100.9 mm |
| Wire per coil / total | 28.10 m / 337.2 m |
| Coil resistance | 2.366 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 34.1095 mWb-turn; coil EMF 2.632 V rms
- Phase grouping balanced: True, coils/phase {0: 4, 1: 4, 2: 4}, worst phasor error 0.0°
- Field per stator: {'S': {'peak': 0.3963, 'mean_window': 0.1096}}
- Axial stack (mm): {'recess': 0.0, 'm2m': 8.4, 'mag_face_z': 4.2, 'wound_gap': 0.5, 'copper_gap': 1.3000000000000003, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 45 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['45', '135', '225', '315']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 277 t, fit 277 t (10 layers x <= 31/layer in 5.80 x 17.50 mm window, fill 0.65) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.50 mm (as-built recess 0.00 mm), magnet -> actual copper 1.30 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=58: 1.90 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |
| PASS | one-plate bed fit | one_plate_layout.stl bbox 399.9 x 400.8 x 29.5 mm (limit 410) |

![Bz mid-plane](bz_midplane.png)

