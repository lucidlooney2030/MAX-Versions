# Current champion — MAX-Versions

**As of 2026-11-04 night: Gen-EB dual-rotor 8-pole / 12-coil — NEW in-line Ø5 pole (Ø5×5 + N52 60×10×3 bar RADIAL + Ø20×5 N52 + N42 20×10×5 + 2× Ø5×5, all on one radial line ≈111 mm long × 20 mm wide) at R360 on a 6-segment split narrow-bobbin 24 AWG stator (bobbins r284–394, 133 t) with 2× Ø792 × 4.76 mm steel discs, on the Gen-DZ vertical-shaft pedestal frame.**

Path: [`champions/2026-11-04-gen-eb-dual-rotor-8p12c-r360-inline-o5-pole-pedestal-6seg-24awg/`](champions/2026-11-04-gen-eb-dual-rotor-8p12c-r360-inline-o5-pole-pedestal-6seg-24awg/)  
Print pack: [`print-packs/gen-eb-dual-rotor-8p12c-r360-inline-o5-pole-pedestal-6seg-24awg/`](print-packs/gen-eb-dual-rotor-8p12c-r360-inline-o5-pole-pedestal-6seg-24awg/) (10-plate from-scratch pack in `multi-plate/` (one 60° stator segment per plate) + one-plate rotor-carrier module 398.9 × 391.9 mm + parts + `laser-cut/steel_backiron_disc.dxf` (NEW Ø792 discs))

Honest numbers from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 Br 1.29 T, 24 AWG bare 0.5106 mm / OD 0.55 mm @20 °C, `--back-iron` image method = optimistic upper bound; same mode as Gen-DZ; scorer unchanged — Gen-DZ re-scored 102.730 W on 2026-11-04):

| Metric @ 200 RPM | Gen-EB (new) | Gen-DZ (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **118.064 W** | 102.730 W |
| Air-core what-if (no `--back-iron`) | **54.906 W** | 48.920 W |
| Voc rms/phase | **41.44 V** (58.69 V line, phase PEAK ≈146 V) | 38.70 V |
| R_phase @20 °C | 10.91 Ω | 10.93 Ω |
| Wire | 24 AWG, 388.8 m (12 × 32.40 m) | 24 AWG, 389.5 m |
| Turns fit / coil | 133 × 12 (fill 0.65, 8 layers) | 156 × 12 |
| Bz peak / mean window | 0.630 / 0.161 T | 0.631 / 0.178 T |
| Pole radius / coils | R360, bobbins r284–394 | R300, r230–328 |
| Magnet face gap | 7.00 mm | 7.00 mm |
| Steel | 2× **Ø792** × 4.76 mm (≈18.4 kg each) | 2× Ø660 × 4.76 mm |
| Verdict | **PASS** (geometry check PASS) | PASS |

×1.149 over Gen-DZ (back-iron mode), ×1.122 air-core.
What-ifs (same kit): diametric Ø5 laid on their side 117.984 W; all 48 Ø5 left out 109.979 W; fill 0.60 wind 109.105 W; hot copper 60 °C 102.03 W.
Matched load draws 1.90 A/phase at 200 RPM, above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use a lighter load (see README).

## What changed

**In-line Ø5 pole:** the 3 Ø5 per pole moved from flanking the N52 bar onto the pole axis (2 beyond the N42 block, 1 inside the bar's inner end). In the scorer this loses at R300 (longer coils cost turns) but wins ≈3–6 % from R340 up, so it comes with a radius step to R360 — the largest pole radius whose 60° stator segment (358 mm) still fits the bed, one segment per plate. Runners-up the same night (local, not pushed): **Gen-ED** (Gen-EB rotors, fill-0.60 scramble-wind stator) **113.273 W**; **Gen-EC** (same pole at R340, Ø752 steel) **112.459 W**.

## Assembly warnings

- **Clap hazard**: steel-backed N52/N42 across a 7.00 mm gap. Use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts; brace before seating the second magnet face; keep fingers out of the gap.
- **Very big and heavy:** ≈37 kg of spinning steel, Ø814 stator, rim ≈8.3 m/s at 200 RPM. Balance-check, guard the rim, axial run-out < 0.3 mm. Ask for flat (stress-relieved) steel; two people to lift each disc.
- **Electrical:** pulsed EMF — phase peak ≈146 V open-circuit at 200 RPM. Leads are live while spinning; rectifier diodes ≥400 V (not 60 V Schottkys).
- Radial N52 bars try to flip onto the disc — seat with a non-magnetic stick and hold until epoxy grabs; eye protection. In-line Ø5 jump toward their neighbours — one at a time.
- Wind bobbins before assembly (133 t, 8 layers); never raise turns. Brim on thin flanges/lids/segments. Remove jack rods and shims before spinning.

Night scorecard: [`WOUND_ENVELOPE_2026-11-04.md`](WOUND_ENVELOPE_2026-11-04.md).

## Prior champion

Gen-DZ dual-rotor 8p/12c R300 pedestal frame — `champions/2026-11-02-gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg/` (102.730 W). Superseded by Gen-EB 118.064 W.
