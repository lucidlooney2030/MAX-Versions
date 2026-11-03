# 2026-11-01 nightly — physics_scorer ranking (Gen-DW / Gen-DX / Gen-DV)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (run at 9:26 PM ET (2026-11-01) before scoring and again at 9:11 PM ET (2026-11-02 clean-up) before the docs; both PASS): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (2026-11-01, before ranking)

- **Sanity** (`score_kit sanity`, 9:26 PM ET 2026-11-01, before kit scoring; re-run 9:11 PM ET 2026-11-02 during the clean-up, PASS again): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- **Gen-DT regression re-run** (`score_kit score <Gen-DT> --back-iron`, 9:50–9:52 PM ET 2026-11-01, out `/workspace/generators/2026-11-01/_dt_rescore`, log `_build/score_dt_rescore.log`): **51.338 W**, 27.35 V rms/ph, 10.9 Ω, 164/164 t, Bz 0.629/0.185 T, PASS — identical to the number shipped on 2026-10-31, so the scorer is unchanged.
- Wire: every kit uses `wire_awg = 24` (bare 0.5106 mm → resistance) and `wire_od = 0.55` (insulated → turns-fit); Gen-DV/DW at fill 0.65 (cap, never raised), Gen-DX at fill 0.60. Cosmetic: the header line of every SCORE.md prints "26 AWG copper" (fixed text in report.py); the Wire row shows the 24 AWG bare/OD actually used and Ω/phase confirms it.
- `--fill 0.60` what-if rows for Gen-DV/DW print verdict FAIL only because the kit's turns (fill 0.65) exceed what fits at 0.60 — expected for that what-if.
- **The 2026-11-01 routine run was marked FAILED** after scoring, plates, geometry and steel checks had finished (≈9:52 PM ET): README.md, SCORECARD/CHAMPION, the one-plate module folder, the night archive and the GitHub push were never produced. They were completed from the unchanged kit files and score outputs on 2026-11-02 (≈9:15–9:40 PM ET); no kit geometry or score was changed.
- **Air-core caveat:** all kits ship steel; the `--back-iron` number is the scorer's optimistic image-method upper bound; air-core is reported next to it.


Champion to beat: **Gen-DT** (`/workspace/generators/2026-10-31/gen-dt-dual-rotor-8p12c-radial-bar-inside-pole-r160-24awg`) **51.338 W** matched-load @ 200 RPM with `--back-iron` (air-core 24.692 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-DW** `gen-dw-dual-rotor-8p12c-r220-split-stator-bar-flank-o5-24awg` | **74.327 W** | 34.901 W | 32.77 | 10.84 | 152 | 0.631/0.174 | 12c/8p | 386 | 2× Ø500 × 4.76 mm (3/16") mild-steel discs | FOUR plates (split stator; no one-plate) 398.5×400.3 + 398.5×400.3 + 387.9×382.9 + 387.9×382.9 | PASS / geom PASS |
| 2 | **Gen-DX** `gen-dx-fill060-scramble-wind-split-stator-for-gen-dw-rotors-24awg` | **66.926 W** | 32.411 W | 31.19 | 10.90 | 176 | 0.631/0.188 | 12c/8p | 388 | 2× Ø500 × 4.76 mm (3/16") mild-steel discs | FOUR plates (split stator; no one-plate) 400.0×400.3 + 400.0×400.3 + 387.9×382.9 + 387.9×382.9 | PASS / geom PASS |
| 3 | **Gen-DV** `gen-dv-dual-rotor-8p12c-r200-split-stator-bar-flank-o5-24awg` | **66.448 W** | 31.873 W | 31.06 | 10.89 | 158 | 0.632/0.188 | 12c/8p | 388 | 2× Ø460 × 4.76 mm (3/16") mild-steel discs | FOUR plates (split stator; no one-plate) 400.5×380.2 + 400.5×380.2 + 362.0×394.9 + 393.9×381.4 | PASS / geom PASS |

## Design ideas

- **Gen-DW**: The Gen-DT radial magnet strip (N52 bar inside the Ø20, N42 block outside) moved out to R220 with much narrower bobbins (26 mm extra web per side), and two of the three Ø5 per pole moved beside the narrow 10 mm bar. The stator (Ø522) no longer fits the bed, so it is printed as 4 half-lapped quarter segments; at 200 RPM the larger radius raises surface speed and the narrow turns keep the 390 m spool at ≈10.9 Ω.
- **Gen-DX**: Same rotors and steel as Gen-DW, split stator sized for the fill a hand/scramble wind really reaches (0.60, not the 0.65 cap): narrower bobbins (27 mm extra web) with a deeper copper build so the spool is still used up; scored honestly at fill 0.60 — the no-jig build of Gen-DW.
- **Gen-DV**: The smaller of tonight's split-stator machines: the same bar-flank pole at R200 (Ø460 steel instead of Ø500), bobbins r130–228 with 22 mm extra web per side; a compromise between Gen-DT's size and Gen-DW's output.

## Ø5×5 usage (tonight: AXIAL pole extenders — counted for axial OR diametric Ø5, see each README)

- Gen-DW: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N52 bar at its centre R179.4 ±8.75 mm + 1 at R244.25 just outside the N42 block), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score.
- Gen-DX: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N52 bar at its centre R179.4 ±8.75 mm + 1 at R244.25 just outside the N42 block), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score.
- Gen-DV: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N52 bar at its centre R159.4 ±8.75 mm + 1 at R224.25 just outside the N42 block), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score.

## Fill dependence (scorer what-ifs, same windows)

- Gen-DW: 74.327 W at fill 0.65 vs 68.537 W if only fill 0.60 is reached (`--fill 0.60`)
- Gen-DX: scored at fill 0.60 (headline, realistic hand wind) = 66.926 W; `--fill 0.65` what-if on the same window = 73.099 W (same turns — the spool, not the window, is the limit)
- Gen-DV: 66.448 W at fill 0.65 vs 61.267 W if only fill 0.60 is reached (`--fill 0.60`)

## Scans behind tonight's kits (run 2026-11-01 ≈9:10–9:20 PM ET)

- **Reference:** Gen-DT geometry (BI pole RL160, r90–188, span margin 13) re-scanned 52.04 W (= the 10-30 scan value) → scan pipeline unchanged.
- **Pole tweaks at RL160 (stator unchanged, still fits one plate):** O5 pair moved beside the narrow 10 mm N52 bar (**BF**) 52.29 W (+0.5 %); O5 pair beside the bar's inner half + 1 at its inner end (BF2) 50.75 W; N42 block turned radial (BR) 47.3 W — the pole is essentially saturated at this size, so no RL160 kit tonight.
- **Size lever (NEW: split the stator so it can exceed the 410 mm bed):** with the coil span held at margin 13 the watts FALL with radius (RL170 51.7 → RL200 42.1 W), because the coils get too wide for the narrow magnet strip. Narrowing the bobbins as the radius grows (span margin = extra stator web per side) turns it around:
  margin 16: RL180 57.5 W · margin 19: RL190 62.6 W · margin 20: RL195 63.4 W · margin 22: RL200 65.2 W · margin 25: RL210 69.4 W / RL215 73.0 W · margin 26: **RL220 74.6 W** · margin 27: RL225 75.9 W · margin 28: RL235 71.8 W (still rising slowly with size, ≈+1 W per +5 mm of radius near R220).
- **Bar-flank O5 (BF) at the big sizes:** RL220 margin 26 **75.71 W** (+1.1 W over BI) → **Gen-DW**; RL200 margin 22 **66.21 W** → **Gen-DV**.
- **Fill 0.60 (scramble wind) at RL220:** BI margins 24–27: 64.4 / 68.2 / 69.3 / 69.6 W; BF margin 27 **70.55 W** (b 15.87, window-limited) → **Gen-DX** (Gen-DW rotors).
- **7 layers (copper 3.85 mm, 6.45 mm gap) at RL220:** 69.1–71.7 W — below 8 layers; dropped.
- **Why the size stops at R220 tonight (engineering, not physics):** the Ø500 steel discs already weigh ≈7.3 kg each, and the 530 mm bearing-bridge bars only just fit diagonally on the 410 mm plate; R225+ adds ≈1 W for heavier steel and bars that no longer fit. Bigger is possible with a different frame (e.g. pillow-block bearings on a base board), not attempted tonight.

## Champion

**Gen-DW** at **74.327 W** (`--back-iron`, air-core 34.901 W) — BEATS Gen-DT 51.338 W (1.448×, same scoring mode).

Push: pending (see CHAMPION.md).

Archive: `/workspace/generators/2026-11-01-generators.tar.gz`

