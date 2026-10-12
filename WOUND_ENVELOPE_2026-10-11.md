# 2026-10-11 nightly — physics_scorer ranking (Gen-BX / BY / BZ)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all three kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is recorded next to it).
`score_kit sanity` (run at the start of tonight's job, ≈9:13 PM ET): single Ø20×5 N52 surface Bz 0.3198 T (analytic 0.3198) → PASS.

Champion to beat: **Gen-BU** (`/workspace/generators/2026-10-10/gen-bu-dual-rotor-8p12c-r66-bigring`) **6.101 W** matched-load @ 200 RPM with `--back-iron` (air-core what-if 2.808 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-BX** `gen-bx-dual-rotor-8p12c-r71-thincopper` | **7.304 W** | 3.340 W | 12.75 | 16.69 | 410 | 0.583/0.158 | 12c/8p | 374 | 2× Ø168 × 4.76 mm (3/16") mild-steel discs | 408.0×408.0 | PASS / geom PASS |
| 2 | **Gen-BZ** `gen-bz-dual-rotor-8p12c-r71-lowgap-wiresaver` | **6.902 W** | 3.183 W | 11.09 | 13.36 | 328 | 0.640/0.171 | 12c/8p | 300 | 2× Ø168 × 4.76 mm (3/16") mild-steel discs | 408.0×408.0 | PASS / geom PASS |
| 3 | **Gen-BY** `gen-by-dual-rotor-8p12c-bu-retrofit-r66` | **6.658 W** | 3.058 W | 12.23 | 16.84 | 410 | 0.567/0.161 | 12c/8p | 377 | 2× Ø158 × 4.76 mm (3/16") mild-steel discs | 408.0×408.0 | PASS / geom PASS |

## Design ideas

- **Gen-BX**: Gap reduction paid for by a bigger ring: the Gen-BU 8p/12c layout with the copper cut from 8.1 to 6.75 mm (magnet face to magnet face 10.70 → 9.35 mm, so Bz at the copper rises) and the lost window area won back radially, with the poles moved out to R71 and the bobbins stretched to r53–88. The scans show the thin-copper optimum only appears on the bigger ring (on R66 it gains far less), and R71 / Ø194 stator is the largest machine that still packs on one 410 mm plate.
- **Gen-BZ**: Minimum-gap, wire-saver stator for the Gen-BX rotors: only 5.4 mm of copper (12 layers), so the magnet faces are just 8.0 mm apart and peak Bz at the copper reaches ≈0.64 T. It holds ~20 % less copper than Gen-BX (≈300 m, leaving ~90 m of the spool spare and much less winding), and loses only ≈5.5 % of the watts vs Gen-BX — the best watts-per-metre of wire tonight.
- **Gen-BY**: Stator-only upgrade for an existing Gen-BU: the R66 rotors and Ø158 steel are reused unchanged, and a new 12-bobbin stator with thinner 7.2 mm copper (gap 10.70 → 9.80 mm) and longer r48–84 bobbins (more copper outside the magnet ring) replaces the old one, together with a shorter gap sleeve and wider-spaced frame rods. It is the modular swap path: no new magnets or steel.

## Ø5 assists on/off (scorer, `--back-iron`)

- Gen-BX: no Ø5 fitted (7.304 W); scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out
- Gen-BZ: no Ø5 fitted (6.902 W); scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out
- Gen-BY: no Ø5 fitted (6.658 W); diametric Ø5 lower 8p/12c on R66 (2026-10-10 scans t6/t7: 5.705 vs 6.081 W) and again on R70/R74 tonight (t6), so all 48 Ø5 are left out

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-BX: 7.304 W at fill 0.65 vs 6.731 W if only fill 0.60 is reached
- Gen-BZ: 6.902 W at fill 0.65 vs 6.354 W if only fill 0.60 is reached
- Gen-BY: 6.658 W at fill 0.65 vs 6.130 W if only fill 0.60 is reached

## What the scans showed (`_design_scan/`, wire ≤ 386 m, all `--back-iron`)

- **Thinner copper is tonight's lever, and it needs the bigger ring.** In t1 (8p/12c around Gen-BU) the thinnest copper scanned (7.2 mm) won every
  ring size; t3/t5 pushed lower: at R72–76 the optimum copper height is 5.85–6.75 mm (magnet gap 8.45–9.35 mm instead of 10.70 mm), with
  the lost window area won back radially (bobbins r52–56 → r88–96). Bz at the copper rises from 0.53 T (Gen-BU) to 0.58–0.64 T.
  Unconstrained, the frontier keeps climbing with size (stator Ø190 7.06 W → Ø194 7.25 → Ø198 7.47 → Ø202 7.71 → Ø206 7.90 W, t5).
- **The 410 mm plate is now the binding limit, not the wire.** Trial kits were built and packed with the real plate packer: Ø190 and Ø194
  stators fit (408 × 408 mm, the Ø194 one with 3 mm part gaps / 5° rotations); Ø198 and Ø202 do not (no room for the fit coupon / last lids).
  Best inside the Ø194 / Ø≤172 rotor envelope (t8, 420 jobs): **R71, r53–88, 6.75 mm copper → 7.32 W at 374 m** → built as **Gen-BX**.
- **Gen-BU retrofit (R66 rotors kept):** thin copper helps much less on the small ring (t7): best 6.64 W (r48–84, 7.2 mm copper, 377 m), +9 %
  over Gen-BU with no new magnets or steel → built as **Gen-BY**.
- **Wire-saver:** on the Gen-BX rotors, 5.4 mm copper (gap 8.0 mm) gives 6.92 W at only 300 m (t8) → built as **Gen-BZ** (shares Gen-BX rotors/steel).
- **Other coil counts lose at the big ring:** 8p/9c best 4.43 W (t2), 8p/6c 4.73 W without Ø5 / 5.14 W with diametric Ø5 (t4, t6), 8p/15c 4.67 W (t4).
- **Diametric Ø5 assists still hurt 8p/12c** at the new thin-copper optimum (t6: R74 r56–90 6.3 mm 6.84 W with Ø5 vs 7.36 W without), so none are fitted.
- **Radial build below the maximum** (t9) changes the score by ≤ 0.2 %; the kits use the full build.
- **Not modellable honestly tonight (not built):** trapezoid / parallel-sided coils (scorer = radial-sided sectors), 16-pole rotors (only 8 Ø20 per rotor in a
  dual-rotor machine), Ø5 as axial poles, stator-side steel, single-sided rotor + steel mirror. Series vs parallel / 3φ connection does not change matched-load
  watts in the scorer (it only moves V and R), so no "connection" variant was built.

## Champion

**Gen-BX** at **7.304 W** (`--back-iron`, air-core 3.340 W) — BEATS Gen-BU 6.101 W (1.197×, same scoring mode).

Push: pending.

Archive: `/workspace/generators/2026-10-11-generators.tar.gz`

