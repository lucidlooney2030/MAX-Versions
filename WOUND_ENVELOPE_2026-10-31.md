# 2026-10-31 nightly — physics_scorer ranking (Gen-DS / Gen-DT / Gen-DU)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (run at 9:12 PM ET before scoring and again at 9:28 PM ET before the docs; both PASS): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (2026-10-31, before ranking)

- **Sanity** (`score_kit sanity`, 9:12 PM ET tonight, before any kit scoring, and again 9:28 PM ET before the docs): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- **Gen-DP regression re-run tonight** (`score_kit score <Gen-DP> --back-iron`, 9:12–9:14 PM ET, out `/workspace/generators/2026-10-31/_dp_rescore`, log `_build/score_dp_rescore.log`): **35.743 W**, 22.81 V rms/ph, 10.9 Ω, 241/241 t, Bz 0.630/0.187 T, PASS — identical to the number shipped on 2026-10-29, so the scorer is unchanged.
- Wire: every kit uses `wire_awg = 24` (bare 0.5106 mm → resistance) and `wire_od = 0.55` (insulated → turns-fit); Gen-DS/DT at fill 0.65 (cap, never raised), Gen-DU at fill 0.60. Cosmetic: the header line of every SCORE.md prints "26 AWG copper" (fixed text in report.py); the Wire row shows the 24 AWG bare/OD actually used and Ω/phase confirms it.
- `--fill 0.60` what-if rows for Gen-DS/DT print verdict FAIL only because the kit's turns (fill 0.65) exceed what fits at 0.60 — expected for that what-if.
- **2026-10-30 run FAILED** (scans only, no kits). Tonight the first parallel scoring batch (8 scorer processes at R150–R160, ≈3–4 GB each) was **OOM-killed** on the 15 GB box — the probable cause of the 10-30 failure too; everything was re-run with ≤ 2 scorer processes at a time. Nothing from 10-30 is ranked.
- **Air-core caveat:** all kits ship steel; the `--back-iron` number is the scorer's optimistic image-method upper bound; air-core is reported next to it.


Champion to beat: **Gen-DP** (`/workspace/generators/2026-10-29/gen-dp-dual-rotor-8p12c-narrow-bobbin-wide-web-r114-241t-24awg`) **35.743 W** matched-load @ 200 RPM with `--back-iron` (air-core 14.612 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-DT** `gen-dt-dual-rotor-8p12c-radial-bar-inside-pole-r160-24awg` | **51.338 W** | 24.692 W | 27.35 | 10.93 | 164 | 0.629/0.185 | 12c/8p | 389 | 2× Ø380 × 4.76 mm (3/16") mild-steel discs | ONE plate 402.0×402.0 (stator module) · from scratch THREE 402.0×402.0 + 397.6×371.8 + 373.1×395.5 | PASS / geom PASS |
| 2 | **Gen-DU** `gen-du-fill060-scramble-wind-stator-for-gen-dt-rotors-24awg` | **48.930 W** | 22.880 W | 26.61 | 10.86 | 158 | 0.629/0.175 | 12c/8p | 387 | 2× Ø380 × 4.76 mm (3/16") mild-steel discs | ONE plate 402.0×402.0 (stator module) · from scratch THREE 402.0×402.0 + 397.6×371.8 + 389.1×400.5 | PASS / geom PASS |
| 3 | **Gen-DS** `gen-ds-dual-rotor-8p12c-dp-pole-grown-to-r150-narrow-bobbin-24awg` | **45.831 W** | 18.341 W | 25.85 | 10.93 | 222 | 0.627/0.180 | 12c/8p | 390 | 2× Ø372 × 4.76 mm (3/16") mild-steel discs | ONE plate 394.0×398.0 (stator module) · from scratch THREE 394.0×398.0 + 307.4×400.9 + 376.6×396.4 | PASS / geom PASS |

## Design ideas

- **Gen-DT**: NEW pole: the N52 60×10×3 bar turned RADIAL and placed INSIDE the Ø20 disc, so one pole is a 98 mm-long radial magnet strip (bar + disc + N42 block + Ø5) that covers the whole long radial coil side r90–188; with the pole at R160 the active coil length per turn is far longer than Gen-DP's.
- **Gen-DU**: Same rotors as Gen-DT, stator sized for the fill a hand/scramble wind really reaches (0.60, not the 0.65 cap): slightly wider bobbins (12 mm webs) and a deeper core so the spool is still used up; scored honestly at fill 0.60 — the no-jig build of Gen-DT.
- **Gen-DS**: The exact Gen-DP pole (Ø20 + N42 block + tangential N52 bar + 3 axial Ø5) moved out to R150 with even narrower bobbins (13 mm extra web per side): at 200 RPM the larger radius raises surface speed, and narrower, shorter turns keep the 390 m spool at ≈10.9 Ω. Steel discs grow to Ø372 mm.

## Ø5×5 usage (tonight: AXIAL pole extenders — counted for axial OR diametric Ø5, see each README)

- Gen-DT: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N42 block at R176.8 ±13.65 mm + 1 at R184.25 just outside the block), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score.
- Gen-DU: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N42 block at R176.8 ±13.65 mm + 1 at R184.25 just outside the block), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score.
- Gen-DS: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N42 block at R166.8 ±13.65 mm + 1 at R136.35 inside the O20), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score.

## Fill dependence (scorer what-ifs, same windows)

- Gen-DT: 51.338 W at fill 0.65 vs 47.492 W if only fill 0.60 is reached (`--fill 0.60`)
- Gen-DU: scored at fill 0.60 (headline, realistic hand wind) = 48.930 W; `--fill 0.65` what-if on the same window = 51.864 W (same turns — the spool, not the window, is the limit)
- Gen-DS: 45.831 W at fill 0.65 vs 42.266 W if only fill 0.60 is reached (`--fill 0.60`)

## Scans behind tonight's kits (run 2026-10-30, re-used tonight; plus one new scan tonight)

- **m6/m9/m15/m18** (other coil counts 6/9/15/18 coils on 8 poles): ≤ 19.8 W — dropped (12 coils stays best).
- **A = Gen-DP pole grown** (Ø20 + N42 block outside + tangential N52 bar outside + 3 axial Ø5) with ever narrower bobbins: span_m 6 RL118 36.8 W → 8 RL128 39.6 W → 10 RL134 42.1 W → 11 RL140 43.5 W → 12 RL146 45.3 W → **13 RL150 r126–188 46.35 W** (limit: stator Ø394 / steel Ø372 inside the 410 plate) → **Gen-DS**.
- **BI = NEW pole: N52 bar turned RADIAL and placed INSIDE the Ø20** (bar + disc + N42 block + Ø5 = one ≈98 mm radial magnet strip per pole): RL126 36.7 W → RL134 (span 8) 41.9 W → RL146 (span 10) 47.6 W → RL158 (span 13) 51.7 W → **RL160 r90–188 span 13 52.04 W** → **Gen-DT**; fill 0.60 version (span 12) RL158 49.2 W → **Gen-DU** (RL160 rotors shared with Gen-DT).
- **BO** (radial bar OUTSIDE the block) 30.1 W, **BT** (block turned radial) 34.1 W — dropped.
- **Tonight (p_U):** cheap ARCS-ONLY upgrade for Gen-DP owners — BI pole on the UNCHANGED Gen-DP stator (r90–152, 241 t) and Ø302 steel: RL110 25.9 W, RL114 30.1 W, RL118 32.4 W, RL121 32.6 W — all **below** Gen-DP's 35.7 W, so no arcs-only upgrade is offered.
- Scan vs. final: only full-resolution kit scores are ranked (scan grid reads ≈0.5–1 % high: Gen-DS 46.35 → 45.83 W, Gen-DT 52.04 → 51.34 W).

## Champion

**Gen-DT** at **51.338 W** (`--back-iron`, air-core 24.692 W) — BEATS Gen-DP 35.743 W (1.436×, same scoring mode).

Push: pending.

Archive: `/workspace/generators/2026-10-31-generators.tar.gz`

