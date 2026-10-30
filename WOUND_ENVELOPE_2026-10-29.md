# 2026-10-29 nightly — physics_scorer ranking (Gen-DP / Gen-DQ / Gen-DR)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (run at 9:09 PM ET before scoring and again at 9:25 PM ET before the docs; both PASS): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (2026-10-29, before ranking)

- **Sanity** (`score_kit sanity`, 9:09 PM ET tonight, before any scoring): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- Scorer code unchanged since the 2026-10-26 `pole_o5_*` extension (same code that produced Gen-DM's 29.091 W; see 2026-10-27 SCORECARD for the extension's validation). **Gen-DM regression re-run tonight** (9:12–9:20 PM ET, `/tmp/dm_reg_1029`, log `_build/dm_regression_1029.log`): `--back-iron` **29.091 W**, 20.59 V rms/ph, 10.9 Ω, 223/223 t, Bz 0.633/0.183 T, PASS — identical to the number shipped on 2026-10-27.
- Wire: every kit uses `wire_awg = 24` (bare 0.5106 mm → resistance) and `wire_od = 0.55` (insulated → turns-fit); Gen-DP/DQ at fill 0.65 (cap, never raised), Gen-DR at fill 0.60. Cosmetic: the header line of every SCORE.md prints "26 AWG copper" (fixed text in report.py); the Wire row shows the 24 AWG bare/OD actually used and Ω/phase confirms it.
- `--fill 0.60` what-if rows for Gen-DP/DQ print verdict FAIL only because the kit's turns (fill 0.65) exceed what fits at 0.60 — expected for that what-if.
- **2026-10-28 run FAILED** after the CAD build (no scores/plates/docs, nothing pushed); its three kit ideas (Gen-DP, Gen-DQ, Gen-DR) were rebuilt from scratch tonight in `/workspace/generators/2026-10-29/` and are the kits ranked here.
- **Air-core caveat:** all kits ship steel; the `--back-iron` number is the scorer's optimistic image-method upper bound; air-core is reported next to it.


Champion to beat: **Gen-DM** (`/workspace/generators/2026-10-27/gen-dm-dual-rotor-8p12c-axial-o5-r95p5-arc-upgrade-on-gen-dg-dj-stator-and-steel`) **29.091 W** matched-load @ 200 RPM with `--back-iron` (air-core 11.664 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-DP** `gen-dp-dual-rotor-8p12c-narrow-bobbin-wide-web-r114-241t-24awg` | **35.743 W** | 14.612 W | 22.81 | 10.92 | 241 | 0.630/0.187 | 12c/8p | 389 | 2× Ø302 × 4.76 mm (3/16") mild-steel discs | ONE plate 376.8×397.6 (stator module: stator+bases+lids) · from scratch TWO 363.0×358.0 + 399.0×400.4 | PASS / geom PASS |
| 2 | **Gen-DR** `gen-dr-dual-rotor-8p12c-narrow-bobbin-r114-fill060-scramble-wind-24awg` | **33.009 W** | 13.439 W | 21.84 | 10.84 | 250 | 0.630/0.182 | 12c/8p | 386 | 2× Ø302 × 4.76 mm (3/16") mild-steel discs | ONE plate 378.2×398.7 (stator module: stator+bases+lids) · from scratch TWO 363.0×360.0 + 400.2×400.4 | PASS / geom PASS |
| 3 | **Gen-DQ** `gen-dq-narrow-bobbin-stator-upgrade-for-gen-dm-rotors-245t-24awg` | **30.034 W** | 12.261 W | 20.92 | 10.93 | 245 | 0.633/0.191 | 12c/8p | 389 | 2× Ø264 × 4.76 mm (3/16") mild-steel discs | ONE plate 400.1×385.4 (Gen-DM owner upgrade: stator+bases+lids) · from scratch TWO 359.0×329.0 + 388.4×384.7 | PASS / geom PASS |

## Design ideas

- **Gen-DP**: NEW tonight: narrow bobbins with wide stator webs (6.0 mm extra per side, every former 2×6.8 mm narrower than the bay pitch). Every kit before the 2026-10-28 scans held the bobbin span at the minimum 1.2 mm web; scans k5-k13 show shorter turns win on a fixed 390 m spool (more turns, lower Ω per turn, small flux-linkage loss), and the optimum then moves the whole Gen-DM pole out to R114 with r90–152 coils.
- **Gen-DR**: Same rotors as Gen-DP, but the stator is designed for the fill a hand/scramble wind really reaches (0.60, not the 0.65 cap): a deeper, longer bobbin (r90–154 × 22.55 mm) so that 250 turns at fill 0.60 use ≈ the whole spool. Scored honestly at fill 0.60; no layer-perfect jig needed.
- **Gen-DQ**: Stator-only upgrade: the same idea as Gen-DP (narrow bobbins, wide webs: 2.0 mm extra per side) applied to the UNCHANGED Gen-DM rotors, Ø264 steel, hubs and frame. A Gen-DM owner prints one plate (stator with in-place bobbin bases + 12 lids) and rewinds 245 turns per coil from the same 390 m spool.

## Ø5×5 usage (tonight: AXIAL pole extenders — counted for axial OR diametric Ø5, see each README)

- Gen-DP: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N42 block at R130.8 ±13.65 mm + 1 at R100.35 inside the O20), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported).
- Gen-DR: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N42 block at R130.8 ±13.65 mm + 1 at R100.35 inside the O20), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported).
- Gen-DQ: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N42 block at R112.3 ±13.65 mm + 1 at R81.85 inside the O20), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported).

## Fill dependence (scorer what-ifs, same windows)

- Gen-DP: 35.743 W at fill 0.65 vs 33.075 W if only fill 0.60 is reached (`--fill 0.60`)
- Gen-DR: scored at fill 0.60 (headline, realistic hand wind) = 33.009 W; `--fill 0.65` what-if on the same window = 35.998 W (same 250 turns — the spool, not the window, is the limit)
- Gen-DQ: 30.034 W at fill 0.65 vs 27.693 W if only fill 0.60 is reached (`--fill 0.60`)

## Scans behind tonight's kits (run 2026-10-28, re-used tonight)

- **k1** (fine 0.5 mm stator window under the Gen-DM pole, 1.2 mm webs): flat top 29.26 W (scan grid) — the Gen-DM stator is converged at minimum-web bobbins.
- **k5/k6 — NEW idea: narrow bobbins / wide stator webs.** Every earlier night held the bobbin span at the minimum 1.2 mm web. Narrowing each bobbin by `span_m` mm per side (extra PLA web) shortens every turn, so the same 390 m spool gives MORE turns at LOWER Ω/turn while the flux linkage drops only a little: on the unchanged Gen-DM rotors, span_m 2.0 → **30.04 W** (r74–134, 245 t) vs 29.26 W; span_m 1.5 29.87 W, 3.0 29.54 W → **Gen-DQ** (stator-only upgrade).
- **k7–k13** (pole radius × window × span_m): with narrower bobbins the optimum moves to a LARGER machine (higher surface speed at 200 RPM, longer coil sides for the same wire): span_m 2.5 RL98.5 31.1 W → 3.0 RL101.5 31.9 W → 3.5 RL108 33.2 W → 4.5 RL112 34.5 W → 5.0 RL114 35.24 W → 5.5 RL112 35.26 W → **6.0 RL114 r90–152 35.73 W (241 t)** → 7.0 33.65 W (wire no longer fills). → **Gen-DP**.
- **k2/k4/k14 — fill 0.60 (realistic scramble/hand wind) stators:** at the Gen-DM size the best fill-0.60 stator is 28.5 W; on the Gen-DP rotors (RL114, span_m 6) the best is **r90–154 × 22.55 mm, 250 t, 386 m → 33.26 W** → **Gen-DR** (scored honestly at fill 0.60).
- **k3** 10-pole/12-coil disc-free poles (block + bar + Ø5): ≤ 13.7 W — dropped.
- Limits: steel discs grow to Ø302 and the stator to Ø324 at RL114 — still inside the 410 mm plate. RL > 116 was not scanned (time budget); the k12/k13 rows at RL112–116 are flat (±0.6 W), so the size optimum is near RL114 for one 390 m spool.
- Scan vs. final: only full-resolution kit scores are ranked (scan grid reads ≈0.5–1 % high).

## Champion

**Gen-DP** at **35.743 W** (`--back-iron`, air-core 14.612 W) — BEATS Gen-DM 29.091 W (1.229×, same scoring mode).

Push: **Gen-DP pushed** to GitHub lucidlooney2030/MAX-Versions @9ce9980 (champions/2026-10-29-gen-dp-…/, print-packs/gen-dp-…/, CHAMPION.md, WOUND_ENVELOPE_2026-10-29.md = this scorecard), 2026-10-29 ET; push-note commit follows. Not force-pushed.

Archive: `/workspace/generators/2026-10-29-generators.tar.gz`

