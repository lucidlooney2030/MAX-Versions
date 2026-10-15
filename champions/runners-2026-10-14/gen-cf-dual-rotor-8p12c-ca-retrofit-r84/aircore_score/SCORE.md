# Physics score — gen-cf-dual-rotor-8p12c-ca-retrofit-r84

Scorer: `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG copper at 20 °C). Topology **dual_rotor**, 8 poles, 12 coils x 1 stator(s). Verdict: **PASS**

## Headline @ 200 RPM (f_el 13.33 Hz)

| Metric | Value |
|---|---|
| Open-circuit phase voltage | **9.11 V rms** (15.43 V pk), line 8.60 V rms |
| Phase resistance | **16.8 Ω** @20 °C (19.4 Ω @60 °C) |
| Power into matched load (3 phases, P = V²/4R) | **3.713 W** (3.208 W hot) |
| Current at matched load / short-circuit | 0.272 A / 0.544 A per phase |
| Turns per coil (fit / claimed) | **347** / 347 (fit 347) |
| Peak |Bz| at copper mid-plane | 0.449 T |
| Mean |Bz| over coil window (aligned) | 0.093 T |
| Halbach Ø5 assist magnets | NOT counted (none) |

Short-circuit note: air-core coil reactance at this frequency is negligible, so the short-circuit current is ≈ Voc/R (resistance-limited); it is self-limiting and safe for the machine, but there is no power delivered. Keep continuous coil current ≲ 0.5 A in printed formers (thermal). Matched load = load resistance equal to R_phase; copper loss then equals load power (50 % efficiency). A rectifier costs ~0.7–1.4 V per conduction path, which is a large fraction of these voltages — use Schottky diodes or series-connect more coils for charging.

## Winding fit

| Item | Value |
|---|---|
| Former | bobbin (windable) |
| Copper window | 4.65 mm axial x 18.26 mm radial build = 84.91 mm² |
| Copper boundary | r 63.00–105.00 mm, span 26.82° |
| Wire | OD 0.45 mm insulated, bare 0.4049 mm; fill assumption 0.65 (insulated-wire area / window) |
| Layers x max turns/layer | 10 x 40 |
| Fit (area / layer limit) | 347 / 400 → **347** |
| Copper fill achieved | 0.53 |
| Mean turn length | 89.7 mm |
| Wire per coil / total | 31.27 m / 375.2 m |
| Coil resistance | 4.186 Ω @20 °C |

## Electrical detail

- Peak flux linkage per coil: 31.6451 mWb-turn; coil EMF 2.276 V rms
- Phase grouping balanced: True, coils/phase {0: 4, 1: 4, 2: 4}, worst phasor error 0.0°
- Field per stator: {'S': {'peak': 0.449, 'mean_window': 0.0933}}
- Axial stack (mm): {'recess': 0.0, 'm2m': 7.25, 'mag_face_z': 3.625, 'wound_gap': 0.5, 'copper_gap': 1.2999999999999998, 'mech_gap': 0.5}

## Checks

| Status | Check | Detail |
|---|---|---|
| PASS | rotor clocking | rotor B vs rotor A: offset 0 deg (pole pitch 45 deg), axis sign +1; fundamental clocking factor 1.000 (1.000 = magnets directly opposite, N facing S) |
| PASS | rotor keying | rotor bore has D-flat / clocking pins |
| PASS | brace pattern flip-symmetry | brace angles ['45', '135', '225', '315']; flipped copy matches (a facing rotor/stator is a flipped print; asymmetric holes force a wrong clocking) |
| PASS | turns fit | claimed 347 t, fit 347 t (10 layers x <= 40/layer in 4.65 x 18.26 mm window, fill 0.65) |
| PASS | former windable | bobbin: open perimeter, printed hub |
| PASS | wound-coil envelope gap | magnet face -> wound envelope 0.50 mm (as-built recess 0.00 mm), magnet -> actual copper 1.30 mm, rotor face -> former 0.50 mm |
| PASS | adjacent formers | clearance between neighbouring former footprints at r=63: 1.90 mm |
| PASS | rotor holes vs magnet pockets | no hole intersects a pocket |

![Bz mid-plane](bz_midplane.png)

