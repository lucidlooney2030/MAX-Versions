# 2026-10-10 nightly — physics_scorer ranking (Gen-BU / BV / BW)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all three kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is recorded next to it).
`score_kit sanity` (run at the start of tonight's job, ≈9:13 PM ET): single Ø20×5 N52 surface Bz 0.3198 T (analytic 0.3198) → PASS.

Champion to beat: **Gen-BR** (`/workspace/generators/2026-10-09/gen-br-dual-rotor-bo-retrofit-tight-o5`) **5.507 W** matched-load @ 200 RPM with `--back-iron` (air-core what-if 2.727 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-BU** `gen-bu-dual-rotor-8p12c-r66-bigring` | **6.101 W** | 2.808 W | 11.50 | 16.25 | 446 | 0.532/0.181 | 12c/8p | 364 | 2× Ø158 × 4.76 mm (3/16") mild-steel discs | 408.0×408.0 | PASS / geom PASS |
| 2 | **Gen-BV** `gen-bv-dual-rotor-6p9c-r57` | **3.395 W** | 1.530 W | 8.52 | 16.03 | 518 | 0.530/0.138 | 9c/6p | 359 | 2× Ø142 × 4.76 mm (3/16") mild-steel discs | 408.0×408.0 | PASS / geom PASS |
| 3 | **Gen-BW** `gen-bw-dual-rotor-4p-stacked10-6c` | **2.471 W** | 1.404 W | 7.32 | 16.26 | 586 | 0.725/0.117 | 6c/4p | 364 | 2× Ø134 × 6.35 mm (1/4") mild-steel discs | 407.9×408.0 | PASS / geom PASS |

## Design ideas

- **Gen-BU**: New pole/coil ratio on a much bigger ring: twelve narrow 26.4° bobbins (r 52–82 mm, 13.5 mm build, 8.1 mm copper) under 8 poles pushed out to R66, so each coil spans 120° electrical with a short mean turn while the poles sit 52 mm apart (less pole-to-pole leakage) and move faster. 8p/12c was dismissed on earlier nights at 3.2 W because it was only scanned on the R50 ring; tonight it climbs steadily with ring radius (R50 3.39 → R57 4.58 → R59.5 5.18 → R66 6.08 W scan). Diametric Ø5 assists turned out to LOWER this layout, so none are fitted. A ring this big no longer fits a one-plate layout with disc endbells, so the endbells become two crossed 44 mm bar bearing bridges, which is what keeps it on one 410 mm plate.
- **Gen-BV**: Fewer, wider-spaced poles: 6 Ø20 per rotor (12 of the 16) on an R57 ring over nine 35.2° bobbins (r 39–74 mm, 15.7 mm build). Wider pole pitch means less pole-to-pole leakage and bigger coils, but the electrical frequency drops 25 % and 4 Ø20 sit idle; diametric Ø5 assists lowered the score here, so none are fitted. The scorer puts it at about 62 % of Gen-BR.
- **Gen-BW**: Stacked poles: two Ø20×5 per pocket (10 mm poles), 4 per rotor at R52, trading pole count for field — peak Bz at the copper rises to ≈0.73 T (vs 0.54 T on Gen-BR), which lets a thin 6.75 mm copper layer with a very deep 21 mm build carry the turns. But the electrical frequency halves, and the scorer puts it at about 45 % of Gen-BR: the thicker magnets do not make up for half the poles.

## Ø5 assists on/off (scorer, `--back-iron`)

- Gen-BU: no Ø5 fitted (6.101 W); with diametric Ø5 at R59.8/66/72.2 the scorer gives LESS (scan t6 5.705 W vs t7 6.081 W without, same geometry), so all 48 Ø5 are left out
- Gen-BV: no Ø5 fitted (3.395 W); with 36 diametric Ø5 (R47.5/57/66.5) the scorer gives LESS (3.205 W vs 3.419 W without, same kit, scan t7 + full scores), so none are fitted
- Gen-BW: no Ø5 fitted (2.471 W); scan t1 showed diametric Ø5 between 90°-spaced poles LOWER the score (e.g. 1.355 vs 1.421 W in the best t1 pair), so all 48 Ø5 are spare

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-BU: 6.101 W at fill 0.65 vs 5.632 W if only fill 0.60 is reached
- Gen-BV: 3.395 W at fill 0.65 vs 3.133 W if only fill 0.60 is reached
- Gen-BW: 2.471 W at fill 0.65 vs 2.281 W if only fill 0.60 is reached

## What the scans showed (`_design_scan/`, wire ≤ 370 m, all `--back-iron`)

- **8p/12c on a big ring is tonight's breakthrough.** Twelve narrow sector coils (coil pitch 30° = 120° electrical) were written off on
  10-07 at 3.2 W, but they had only been scanned on the R50 ring. Pushing the ring out lifts them steadily: R50 3.39 → R53 3.98 → R57 4.58 →
  R59 4.87 W (t3–t5, with Ø5). Bigger radius = poles 45–52 mm apart (less pole-to-pole leakage) moving faster, while each narrow coil
  keeps a short mean turn.
- **Diametric Ø5 assists HURT 12-coil and 6-pole layouts** (first time seen): the full scores of the first Gen-BU/BV drafts gave *more*
  with `--halbach none` (R59 12c 4.870 → 5.153 W; 6p/9c 3.205 → 3.419 W). Re-scanned without Ø5 (t7): R59.5 12c 5.18 W.
  They still help 8p/6c (+7.6 % on Gen-BR) and are kept there.
- **Past the one-plate disc limit the 12c line beats Gen-BR:** with no Ø5, R63 / r48–78 → 5.73 W and **R66 / r52–82 / 8.1 mm copper →
  6.08 W at 364 m** (t7). R70 drops again (5.43 W). With five disc parts (2 rotors, stator, 2 endbells) the 410 plate caps discs at
  ≈Ø166 (R ≤ 59.5 rings), so Gen-BU swaps the disc endbells for two crossed 44 mm **bar bearing bridges**, packed as small parts: that
  is what makes the R66 machine a one-plate kit.
- **4-pole stacked poles (all 16 Ø20 as 8 × 10 mm poles):** small rings R20–40 ≤ 1.42 W (t1; 4p/3c ≤ 1.01 W); bigger rings with a very
  deep, thin winding reach 2.47 W (R52, r26–74, 6.75 mm copper × 21.3 mm build, t5). Peak Bz at the copper rises to ≈0.73 T, but half
  the electrical frequency is not made up. Ø5 between 90°-spaced poles lower the score (t1). Built as Gen-BW so the topology is on record.
- **6-pole (12 Ø20) 6p/9c:** 2.82 W (t2) → 3.20 W on R57 with Ø5 (t4) → 3.42 W without Ø5 (t7). Built as Gen-BV.
- **Not modellable honestly tonight (not built):** paired / clustered poles (two Ø20 side by side per pole: the scorer has one magnet per
  pole on one ring), radially stacked Ø20 rings, Ø5 as axial poles or pole extenders, stator-side steel, single-sided rotor + facing steel
  mirror (needs multi-reflection images), mid rotor with steel (images are dual-rotor only), trapezoid coils. Steel thickness (3/16" vs 1/4")
  does not change the image-method score; it is sized by `_build/steel_flux.py`. Thinner flanges / lip would break the 0.8 mm wall rule.

## Champion

**Gen-BU** at **6.101 W** (`--back-iron`, air-core 2.808 W) — BEATS Gen-BR 5.507 W (1.108×, same scoring mode).

PUSH_PLACEHOLDER

Archive: `/workspace/generators/2026-10-10-generators.tar.gz`

