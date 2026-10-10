# 2026-10-09 nightly — physics_scorer ranking (Gen-BR / BS / BT)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all three kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is recorded next to it).
`score_kit sanity`: single Ø20×5 N52 surface Bz 0.3198 T (analytic 0.3198) → PASS.

Champion to beat: **Gen-BO** (`/workspace/generators/2026-10-07/gen-bo-dual-rotor-flushseat-6coil-widelip`) **5.497 W** matched-load @ 200 RPM with `--back-iron` (air-core what-if 2.713 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-BR** `gen-br-dual-rotor-bo-retrofit-tight-o5` | **5.507 W** | 2.727 W | 11.01 | 16.51 | 595 | 0.540/0.104 | 6c/8p | 370 | 2× Ø134 × 4.76 mm (3/16") mild-steel discs | 407.9×408.0 | PASS / geom PASS |
| 2 | **Gen-BS** `gen-bs-dual-rotor-compact-r48-wiresaver` | **5.406 W** | 2.708 W | 10.71 | 15.90 | 612 | 0.542/0.111 | 6c/8p | 356 | 2× Ø134 × 4.76 mm (3/16") mild-steel discs | 407.9×408.0 | PASS / geom PASS |
| 3 | **Gen-BT** `gen-bt-dual-rotor-9coil-r53-smooth` | **4.481 W** | 2.181 W | 9.92 | 16.47 | 521 | 0.489/0.159 | 9c/8p | 369 | 2× Ø140 × 4.76 mm (3/16") mild-steel discs | 407.9×408.0 | PASS / geom PASS |

## Design ideas

- **Gen-BR**: Rotor-only swap for Gen-BO: the diametric Ø5 assists move from ±7 mm to ±6.2 mm around the R50 pole ring (R43.8/50/56.2), the closest spacing that still leaves a 0.9 mm printed web between Ø5.3 pockets (rule ≥0.8). Everything else — bobbins, 595 t windings, stator, Ø134 steel — is Gen-BO. Tonight's 138-row refine scan (ring radius 49–51, coil radii ±0.5, build ±0.4, copper height 7.9–8.3) found nothing better: the 8p/6c flush-seat family is saturated under the ~370 m wire budget, so this is a hair-width step (about +0.2 % over Gen-BO), not a breakthrough.
- **Gen-BS**: Pull the whole machine 2 mm inward: poles at R48 (was R50) with 26–68 mm bobbins and an 18.5 mm build. Shorter mean turn length lets each coil hold 612 turns on about 356 m of copper — ~14 m less than Gen-BO, which leaves real slack on a ~390 m spool for leads, a re-wind or a short spool — for about 1.7 % less power. Same Ø134 steel discs as Gen-BO.
- **Gen-BT**: The low-cogging 8-pole / 9-coil line (winding factor 0.945) moved to a larger R53 pole ring with 36–70 mm bobbins and a 13.5 mm build, the best 9-coil row in tonight's scans (Gen-BQ was R52 / 35–70 / 12.6). Smoother to spin by hand and quieter, but still well below 6 coils under the wire budget.

## Ø5 assists on/off (scorer, `--back-iron`)

- Gen-BR: 5.507 W with diametric Ø5 vs 5.120 W without (+7.6 %)
- Gen-BS: 5.406 W with diametric Ø5 vs 4.997 W without (+8.2 %)
- Gen-BT: 4.481 W with diametric Ø5 vs 4.241 W without (+5.7 %)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-BR: 5.507 W at fill 0.65 vs 5.088 W if only fill 0.60 is reached
- Gen-BS: 5.406 W at fill 0.65 vs 4.988 W if only fill 0.60 is reached
- Gen-BT: 4.481 W at fill 0.65 vs 4.133 W if only fill 0.60 is reached

## What the scans showed (`_design_scan/`, wire ≤ 370 m, all `--back-iron`)

- **The 8p/6c flush-seat family is saturated.** A 138-row refine around Gen-BO (pole ring R49/50/51 with the Ø5 map following it,
  bobbin inner/outer radius ±0.5 mm, radial build 17.6–18.4 mm, copper height 7.9–8.3 mm) found no row more than +0.02 % above Gen-BO.
  Every extra turn either needs more than the ~370 m wire budget or sits in weaker field.
- **Tightest legal Ø5 map:** ±6.2 mm (R43.8/50/56.2) leaves a 0.9 mm web between Ø5.3 pockets (rule ≥ 0.8) and is the only change that
  scored above Gen-BO in the scan (5.498 vs 5.488 scan-resolution) — built as Gen-BR, a rotor-only swap.
- **Taller, thinner copper loses:** 8.4–9.4 mm copper with 15.5–17 mm build: best 5.405 W (the extra gap costs more field than the turns gain).
- **Smaller ring saves copper:** poles at R48 with 26–68 mm bobbins: 5.410 W on only ≈356 m (R47: 5.38 W; R46 and 65–66.5 mm outer radius worse) —
  built as Gen-BS for wire margin on a ~390 m spool.
- **9 coils:** best R53 / 36–70 mm / 13.5 build 4.478 W (Gen-BQ 4.420 W) — built as Gen-BT for smooth torque; 9 coils still lose to 6 under the wire budget.
- **Not modellable honestly tonight (not built):** single-phase 8-coil layouts (scorer requires balanced 3φ), stator-side steel, axial Ø5 pole
  extenders, trapezoid coils. To go meaningfully past ~5.5 W the next levers are outside tonight's fixed kit: more copper (a second spool),
  higher RPM, or thicker magnets.

## Champion

**Gen-BR** at **5.507 W** (`--back-iron`, air-core 2.727 W) — BEATS Gen-BO 5.497 W (1.002×, same scoring mode).

PUSH_PLACEHOLDER

Archive: `/workspace/generators/2026-10-09-generators.tar.gz`

