# 2026-10-06 nightly — physics_scorer ranking (Gen-BL / BM / BN)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all three kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is recorded next to it).
`score_kit sanity`: single Ø20×5 N52 surface Bz 0.3198 T (analytic 0.3198) → PASS.

Champion to beat: **Gen-BF** (`/workspace/generators/2026-10-04/gen-bf-dual-rotor-steelseat-6coil-tallcopper`) **4.380 W** matched-load @ 200 RPM with `--back-iron` (air-core what-if 2.152 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-BL** `gen-bl-dual-rotor-steelseat-6coil-densewind` | **5.299 W** | 2.570 W | 10.76 | 16.39 | 566 | 0.532/0.102 | 6c/8p | 367 | 2× Ø134 × 4.76 mm (3/16") mild-steel discs | 407.9×408.0 | PASS / geom PASS |
| 2 | **Gen-BM** `gen-bm-dual-rotor-steelseat-6coil-lowgap-quarterinch` | **5.189 W** | 2.503 W | 10.43 | 15.72 | 562 | 0.547/0.103 | 6c/8p | 352 | 2× Ø138 × 6.35 mm (1/4") mild-steel discs | 407.9×408.0 | PASS / geom PASS |
| 3 | **Gen-BN** `gen-bn-dual-rotor-steelseat-9coil-densewind` | **4.166 W** | 1.994 W | 9.45 | 16.06 | 486 | 0.482/0.158 | 9c/8p | 360 | 2× Ø138 × 4.76 mm (3/16") mild-steel discs | 407.9×408.0 | PASS / geom PASS |

## Design ideas

- **Gen-BL**: Dense-wind, smaller gap: the wire budget (not the window) limits these machines, so the same ~367 m of 26 AWG is laid layer-by-layer at fill 0.65 into a SHORTER 8.1 mm window (vs 9.0 mm on Gen-BI) with a 17.1 mm build on 29–71 mm sector bobbins. That shrinks the magnet-to-magnet gap 11.6 → 10.7 mm, so every turn sees more flux. Rotors, Ø5 tight-assist map and Ø134 × 4.76 mm steel are identical to Gen-BI (modular: swap in new bobbins, stator, gap sleeve and endbells).
- **Gen-BM**: Lowest-gap pancake: Ø20 ring at R52 (Ø5 assists R42/52/62) with low-profile 7.65 mm dense-wound copper and an 18 mm radial build on wide 29–71 mm sector bobbins — the smallest magnet gap of the series (10.25 mm) — on thick 1/4" (6.35 mm) steel so the higher flux per pole stays well clear of saturation.
- **Gen-BN**: 8-pole / 9-coil (winding factor 0.945, smoother torque and lower cogging than 6-coil) on the Gen-BK R52 rotors/steel, re-wound dense at fill 0.65 with 9.45 mm copper on 35–70 mm bobbins — more turns per metre than Gen-BK at the same ~360 m wire.

## Ø5 assists on/off (scorer, `--back-iron`)

- Gen-BL: 5.299 W with diametric Ø5 vs 4.975 W without (+6.5 %)
- Gen-BM: 5.189 W with diametric Ø5 vs 4.885 W without (+6.2 %)
- Gen-BN: 4.166 W with diametric Ø5 vs 3.970 W without (+4.9 %)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-BL: 5.299 W at fill 0.65 vs 4.884 W if only fill 0.60 is reached
- Gen-BM: 5.189 W at fill 0.65 vs 4.793 W if only fill 0.60 is reached
- Gen-BN: 4.166 W at fill 0.65 vs 3.846 W if only fill 0.60 is reached

## What the scans showed (`_design_scan/`, wire ≤ 370 m, all `--back-iron`)

- **Dense winding is tonight's lever.** The wire budget (≈370 m), not the bobbin window, limits these machines. Winding the same copper
  layer-by-layer at fill 0.65 (the scorer's cap; 0.60 was used through 10-05) packs it into a shorter window, so the magnet gap shrinks
  and every turn sees more flux: best 8p/6c row 4.996 W @ fill 0.60 (9.0 mm copper, = Gen-BI) → 5.27–5.31 W @ fill 0.65 with 7.65–8.1 mm
  copper (t1/t2), **+6 %** at the same wire length. The kits' `--fill 0.60` what-ifs below show what a looser hand wind gives.
- **The 8p/6c family has plateaued at ≈5.3 W** under this wire budget: RL 50 vs 52 vs 54, rin 26–32, rout 70–75, copper 6.75–8.55 mm and
  Ø5 radii ±9–11 mm all land within ±1 % of each other (t2/t3). Lower copper (7.2 mm) or R54 rings do not help.
- **8p/9c dense** improves Gen-BK's 3.86 W to ≈4.18–4.26 W (t2), still below 8p/6c.
- **6-pole** (12 Ø20, 6p/9c): 2.5–2.7 W (t3) — fewer magnets and lower frequency lose more than the reduced leakage gains.
- **Series vs parallel** coil connection does not change matched-load watts (P = Σ V²/4R; paralleling divides V by m and R by m²), it
  only moves the matching point, so it is not a power lever; series is kept for rectifier headroom.
- **Multi-stator / steel-mirror ideas (not built):** the midplane of an N-facing-S dual rotor is already a flux-symmetry plane, so splitting the gap
  into two single-sided machines with a steel mirror in the middle gives (ideally) the same field with twice the flanges/clearances — a loss.
  A 3-rotor / 2-stator stack needs 24 Ø20 for 8 poles (we have 16) and the scorer cannot model steel on a mid rotor.

## Champion

**Gen-BL** at **5.299 W** (`--back-iron`, air-core 2.570 W) — BEATS Gen-BF 4.380 W (1.210×, same scoring mode).

Pushed to lucidlooney2030/MAX-Versions (champions/2026-10-06-gen-bl-dual-rotor-steelseat-6coil-densewind, runners-2026-10-06, print-packs, CHAMPION.md, WOUND_ENVELOPE_2026-10-06.md) — commit "2026-10-06 night: Gen-BL ... dethrones Gen-BF".

Archive: `/workspace/generators/2026-10-06-generators.tar.gz`

