# 2026-10-07 nightly — physics_scorer ranking (Gen-BO / BP / BQ)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all three kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is recorded next to it).
`score_kit sanity`: single Ø20×5 N52 surface Bz 0.3198 T (analytic 0.3198) → PASS.

Champion to beat: **Gen-BL** (`/workspace/generators/2026-10-06/gen-bl-dual-rotor-steelseat-6coil-densewind`) **5.299 W** matched-load @ 200 RPM with `--back-iron` (air-core what-if 2.570 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-BO** `gen-bo-dual-rotor-flushseat-6coil-widelip` | **5.497 W** | 2.713 W | 11.00 | 16.51 | 595 | 0.540/0.104 | 6c/8p | 370 | 2× Ø134 × 4.76 mm (3/16") mild-steel discs | 407.9×408.0 | PASS / geom PASS |
| 2 | **Gen-BP** `gen-bp-dual-rotor-flushseat-bl-retrofit` | **5.460 W** | 2.688 W | 10.92 | 16.39 | 566 | 0.540/0.104 | 6c/8p | 367 | 2× Ø134 × 4.76 mm (3/16") mild-steel discs | 407.9×408.0 | PASS / geom PASS |
| 3 | **Gen-BQ** `gen-bq-dual-rotor-flushseat-9coil-widelip` | **4.420 W** | 2.150 W | 9.80 | 16.30 | 486 | 0.489/0.156 | 9c/8p | 365 | 2× Ø138 × 4.76 mm (3/16") mild-steel discs | 407.9×408.0 | PASS / geom PASS |

## Design ideas

- **Gen-BO**: Flush seat + wider copper + tight assists: the magnets sit on the steel in 5.00 mm through-pockets (carrier = magnet height, recess 0 instead of 0.10 mm), so the magnet faces are 0.2 mm closer while still exactly 0.50 mm from the wound envelope; the bobbin lip beyond the copper is trimmed 1.0 → 0.8 mm (still the 0.8 mm wall minimum, stator web still 1.2 mm), which widens each copper sector by ~0.6° on 28–70 mm × 18.0 mm-build bobbins; and the diametric Ø5 assists are pulled in to R43/50/57 (±7 mm) where they add most flux under the copper. Same Ø134 × 4.76 mm steel discs as Gen-BL.
- **Gen-BP**: Cheapest upgrade of the champion: keep Gen-BL's wound bobbins, stator, gap sleeve, endbells and Ø134 steel, and print only two new rotor carriers — 5.00 mm thick (flush magnet seat, recess 0 instead of 0.10 mm, magnet→wound envelope still 0.50 mm) with the diametric Ø5 assists moved from R40/50/60 to R43/50/57. Modular: the rotor is the only swapped module.
- **Gen-BQ**: Smooth-torque 8-pole / 9-coil line (winding factor 0.945, much lower cogging than 6-coil) with tonight's gap levers: flush 5.00 mm through-pocket seat, 0.8 mm bobbin lip (wider 35–70 mm sectors) and a ±8 mm Ø5 map at R44/52/60, on the Gen-BN Ø138 × 4.76 mm steel. Improves Gen-BN 4.166 W but 9 coils still lose to 6 coils under the wire budget.

## Ø5 assists on/off (scorer, `--back-iron`)

- Gen-BO: 5.497 W with diametric Ø5 vs 5.120 W without (+7.4 %)
- Gen-BP: 5.460 W with diametric Ø5 vs 5.087 W without (+7.3 %)
- Gen-BQ: 4.420 W with diametric Ø5 vs 4.178 W without (+5.8 %)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-BO: 5.497 W at fill 0.65 vs 5.079 W if only fill 0.60 is reached
- Gen-BP: 5.460 W at fill 0.65 vs 5.032 W if only fill 0.60 is reached
- Gen-BQ: 4.420 W at fill 0.65 vs 4.080 W if only fill 0.60 is reached

## What the scans showed (`_design_scan/`, wire ≤ 370 m, all `--back-iron`)

- **Flush magnet seat is tonight's lever (+2.2 %).** Last night's through-pockets were 5.10 mm deep for 5.00 mm magnets, so each magnet
  face sat 0.10 mm below the rotor face and 0.60 mm from the wound envelope (rule: ≥ 0.50). Printing the carrier exactly magnet-height
  (5.00 mm, magnets still sitting on the steel) removes that 0.2 mm of total gap with the clearance still at the 0.50 mm minimum:
  Gen-BL geometry 5.296 → 5.415 W in the scan (t1 reference rows). Needs calipered magnets (README).
- **0.8 mm bobbin lip (+0.6 %).** The flange lip beyond the copper was 1.0 mm; 0.8 mm still meets the 0.8 mm wall rule and keeps the
  1.2 mm stator web, and widens each 6-coil copper sector 52.7° → 53.2°: best flush + lip row 5.447 W (t1, 28–70 mm × 18.0 build).
- **Tighter diametric Ø5 map (+0.7 %).** Pulling the three assists per gap from R40/50/60 (±10) to R43/50/57 (±7) puts their flux under
  the copper's high-turn-density middle: 5.447 → 5.488 W (t3/t4). ±6 (R44/50/56) would leave a 0.7 mm pocket web (< 0.8 mm rule) and
  was not used; asymmetric maps like R42/48/58 score 5.481 W but also break the 0.8 mm web rule.
- **Coil/pole ratio — 6 coils still wins under the wire budget.** 8p/12c (small sector bobbins, short MLT): best 3.20 W (t2) — the narrow
  sectors waste window on webs/lips and the inradius limit caps the build at ≈10.7 mm. 8p/3c: 0.10 W (each 120° coil spans 2⅔ poles and
  its flux almost cancels). 8p/9c with tonight's levers: 4.43 W (vs Gen-BN 4.17 W) — built as Gen-BQ for its smoother torque.
- **4-pole with stacked Ø20 (10 mm poles, same 16 magnets):** 2.3–2.5 W and over the wire budget (t2) — thicker poles do not make up for
  half the electrical frequency.
- **Not modellable honestly tonight (not built):** trapezoid/parallel-web coils (the scorer only integrates radial-sided sectors, so a
  trapezoid would be scored as something it is not), Ø5 stacked on/around the Ø20 as axial pole extenders (the scorer only counts
  diametric Ø5 between poles), 16-pole layouts (need 32 Ø20 for a dual rotor; Ø5 axial clusters as poles are not modelled), steel pole
  shoes / steel on a mid rotor. Steel thickness does not change the image-method score; it is sized by `_build/steel_flux.py` instead.
- **Series vs parallel** still does not change matched-load watts (P = Σ V²/4R); it only moves the matching point.

## Champion

**Gen-BO** at **5.497 W** (`--back-iron`, air-core 2.713 W) — BEATS Gen-BL 5.299 W (1.037×, same scoring mode).

Pushed to lucidlooney2030/MAX-Versions (see CHAMPION.md).

Archive: `/workspace/generators/2026-10-07-generators.tar.gz`

