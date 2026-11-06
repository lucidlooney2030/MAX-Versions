# Current champion — MAX-Versions

**As of 2026-11-05 night: Gen-EE dual-rotor 8-pole / 12-coil — Gen-EB in-line Ø5 pole grown to R460 on a NEW 12-segment (30°) split narrow-bobbin 24 AWG stator (bobbins r384–494, 138 t) with 2× Ø992 × 4.76 mm steel discs, on the pedestal frame. Split spider arms (inner+outer) for the 410 mm bed.**

Path: [`champions/2026-11-05-gen-ee-dual-rotor-8p12c-r460-inline-o5-pole-pedestal-12seg-24awg/`](champions/2026-11-05-gen-ee-dual-rotor-8p12c-r460-inline-o5-pole-pedestal-12seg-24awg/)  
Print pack: [`print-packs/gen-ee-dual-rotor-8p12c-r460-inline-o5-pole-pedestal-12seg-24awg/`](print-packs/gen-ee-dual-rotor-8p12c-r460-inline-o5-pole-pedestal-12seg-24awg/) (16-plate from-scratch pack in `multi-plate/` (one 30° stator segment per plate) + one-plate rotor-carrier module 400.7 × 399.4 mm + parts + `laser-cut/steel_backiron_disc.dxf` (NEW Ø992 discs))

Honest numbers from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 Br 1.29 T, 24 AWG bare 0.5106 mm / OD 0.55 mm @20 °C, `--back-iron` image method = optimistic upper bound; same mode as Gen-EB; scorer unchanged — Gen-EB re-scored 118.064 W on 2026-11-05):

| Metric @ 200 RPM | Gen-EE (new) | Gen-EB (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **163.039 W** | 118.064 W |
| Air-core what-if (no `--back-iron`) | **80.101 W** | 54.906 W |
| Voc rms/phase | **48.68 V** (68.85 V line, phase PEAK ≈195 V) | 41.44 V |
| R_phase @20 °C | 10.90 Ω | 10.91 Ω |
| Wire | 24 AWG, 388.4 m (12 × 32.37 m) | 24 AWG, 388.8 m |
| Turns fit / coil | 138 × 12 (fill 0.65, 8 layers) | 133 × 12 |
| Bz peak / mean window | 0.630 / 0.183 T | 0.630 / 0.161 T |
| Pole radius / coils | R460, bobbins r384–494 | R360, r284–394 |
| Magnet face gap | 7.00 mm | 7.00 mm |
| Steel | 2× **Ø992** × 4.76 mm (≈28.9 kg each) | 2× Ø792 × 4.76 mm |
| Verdict | **PASS** (geometry check PASS) | PASS |

×1.381 over Gen-EB (back-iron mode), ×1.459 air-core.
What-ifs (same kit): diametric Ø5 laid on their side 162.781 W; all 48 Ø5 left out 151.496 W; fill 0.60 wind 150.341 W; hot copper 60 °C 140.89 W.
Matched load draws 2.23 A/phase at 200 RPM, above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use a lighter load (see README).

## What changed

**12-segment stator unlocks R460:** Gen-EB was bed-limited at R360 by its 60° segments (358 mm). Tonight the stator is 12 × 30° half-lap segments (1 bay each, bbox ≈335 mm), so the same in-line Ø5 pole can run at R460 (surface speed). Split spider arms (inner+outer, bolted mid-span) keep the top frame printable. Runners-up the same night (local, not pushed): **Gen-EF** (same pole at R440, Ø952 steel) **153.470 W**; **Gen-EG** (Gen-EE rotors, fill-0.60 scramble-wind stator) **151.382 W**.

## Assembly warnings

- **Clap hazard**: steel-backed N52/N42 across a 7.00 mm gap. Use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts; brace before seating the second magnet face; keep fingers out of the gap.
- **Very big and heavy:** ≈58 kg of spinning steel, Ø1014 stator, rim ≈10.4 m/s at 200 RPM. Balance-check, guard the rim, axial run-out < 0.3 mm. Ask for flat (stress-relieved) steel; two people (better three) to lift each disc.
- **Electrical:** pulsed EMF — phase peak ≈195 V open-circuit at 200 RPM. Leads are live while spinning; rectifier diodes ≥400 V (not 60 V Schottkys); prefer ≥600 V at this Voc.
- Radial N52 bars try to flip onto the disc — seat with a non-magnetic stick and hold until epoxy grabs; eye protection. In-line Ø5 jump toward their neighbours — one at a time.
- Wind bobbins before assembly (138 t, 8 layers); never raise turns. Brim on thin flanges/lids/segments. Remove jack rods and shims before spinning.
- **Split spider arms:** bolt inner+outer halves at the mid-span splice (2× M3 + nyloc, 20 mm lap) before mounting on the hub; do not print the one-piece `spider_arm.stl` (assembly reference only, exceeds the bed).

Night scorecard: [`WOUND_ENVELOPE_2026-11-05.md`](WOUND_ENVELOPE_2026-11-05.md).

## Prior champion

Gen-EB dual-rotor 8p/12c R360 6-seg pedestal — `champions/2026-11-04-gen-eb-dual-rotor-8p12c-r360-inline-o5-pole-pedestal-6seg-24awg/` (118.064 W). Superseded by Gen-EE 163.039 W.
