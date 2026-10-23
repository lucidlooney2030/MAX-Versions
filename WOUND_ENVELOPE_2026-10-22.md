# 2026-10-22 nightly — physics_scorer ranking (Gen-CX / Gen-CY / Gen-CZ)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (start of tonight's job, 9:19 PM ET): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS
Thu Oct 22 21:19:28 EDT 2026

### Scorer validation (2026-10-22 run, before ranking)

- **Sanity** (`score_kit sanity`, 9:19 PM ET): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- **Regression on the champion Gen-CS** (`/workspace/generators/2026-10-20/gen-cs-dual-rotor-8p12c-t-pole-24awg-tall-copper-r88`, re-scored into /tmp tonight): `--back-iron` **19.306 W**,
  16.72 V rms/ph, 10.9 Ω, 306 t, Bz 0.568/0.154 T, PASS — identical to the number shipped on 2026-10-20. The scorer was not modified tonight (the N52-bar `block2` group was added and validated on 2026-10-21).
- Wire: every kit uses `wire_awg = 24` (bare 0.5106 mm → resistance) and `wire_od = 0.55` (insulated → turns-fit) at fill 0.65. Cosmetic: the header line of every SCORE.md still prints
  "26 AWG copper" (fixed text in the scorer's report.py); the Wire row of the same SCORE.md shows the 24 AWG bare/OD actually used.
- Why last night (2026-10-21) failed: Gen-CV / Gen-CW were generated but `pick_plate.sh` found no one-plate layout (NO ROOM for the coil lids / 16 larger triple-pole arcs, 24 packer variants), and
  `night_kit.sh` exits before scoring when the plate fails, so nothing was scored or documented. Tonight: scoring runs independently of packing; the kits whose parts physically do not fit
  one 410 mm plate ship an honest **two-plate** pack (stator plate + rotor-arc plate). Also: OpenSCAD had disappeared from the box and was re-installed (apt, 2021.01) before building.


Champion to beat: **Gen-CS** (`/workspace/generators/2026-10-20/gen-cs-dual-rotor-8p12c-t-pole-24awg-tall-copper-r88`) **19.306 W** matched-load @ 200 RPM with `--back-iron` (air-core 9.139 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-CZ** `gen-cz-dual-rotor-8p12c-inverted-triple-pole-24awg-r77` | **24.262 W** | 10.945 W | 18.55 | 10.64 | 250 | 0.580/0.201 | 12c/8p | 379 | 2× Ø229 × 4.76 mm (3/16") mild-steel discs | TWO plates 354.3×385.6 + 392.6×401.0 | PASS / geom PASS |
| 2 | **Gen-CX** `gen-cx-dual-rotor-8p12c-triple-pole-bar-24awg-r87` | **23.718 W** | 10.661 W | 18.45 | 10.76 | 262 | 0.567/0.202 | 12c/8p | 383 | 2× Ø227 × 4.76 mm (3/16") mild-steel discs | TWO plates 374.1×399.7 + 279.0×401.0 | PASS / geom PASS |
| 3 | **Gen-CY** `gen-cy-dual-rotor-8p12c-triple-pole-gen-cs-upgrade-r84` | **21.751 W** | 9.922 W | 17.75 | 10.86 | 306 | 0.545/0.215 | 12c/8p | 387 | 2× Ø222 × 4.76 mm (3/16") mild-steel discs | one plate 385.8×388.7 (re-uses Gen-CS bobbins) | PASS / geom PASS |

## Design ideas

- **Gen-CZ**: Inverted triple pole: the Ø20×5 N52 disc is the INNER magnet (R77), the N42 20×10×5 block sits outside it (R92.6, 20 mm tangential) and the N52 60×10×3 bar is outermost (R103.2, 60 mm tangential), so the widest magnet sits where the coil sides are longest and fastest. The 48 diametric Ø5 Halbach assists sit between the poles at R78.6/84.8/91. New 24 AWG stator (r58–111.5 × 6.1 mm copper) from scan a6 (best of 216 inverted-triple combos, 2026-10-21).
- **Gen-CX**: Every pole now uses all three magnet types Austin owns: the N42 20×10×5 block inside, the Ø20×5 N52 disc in the middle and one of his 20× N52 60×10×3 bars OUTSIDE it with the 60 mm side tangential, so each pole is a wide radial stack of magnet from R66.4 to R107.6. More magnet per pole (+70 % volume) lifts the voltage at the same resistance; the 24 AWG stator is re-optimised for it (6.1 mm tall × 15.75 mm copper on r59–111.5 bobbins, one ≈390 m spool). The bars sit in 3 mm blind pockets with their face flush with the discs.
- **Gen-CY**: Upgrade path for a built Gen-CS: keep its 12 wound 306-turn 24 AWG bobbins exactly as they are and move them into a larger stator ring, and build new triple-pole rotors (N42 block + Ø20 disc + N52 60×10×3 bar per pole) with the poles at R84 so they line up with the Gen-CS copper (r58–105.5). No re-winding, same 387 m of wire.

## Ø5 assists (count only if DIAMETRICALLY magnetised)

- Gen-CZ: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R78.6/84.8/91), Halbach-oriented (rule engraved on every arc)
- Gen-CX: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R79.6/85.8/92), Halbach-oriented (rule engraved on every arc)
- Gen-CY: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R76.6/82.8/89), Halbach-oriented (rule engraved on every arc)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-CZ: 24.262 W at fill 0.65 vs 22.427 W if only fill 0.60 is reached
- Gen-CX: 23.718 W at fill 0.65 vs 21.888 W if only fill 0.60 is reached
- Gen-CY: 21.751 W at fill 0.65 vs 20.111 W if only fill 0.60 is reached

## Scans behind tonight's kits (2026-10-21 scan files, re-used)

- **a5** (768 jobs): triple pole (N42 block inside + Ø20 + N52 60×10×3 bar outside). Best 23.790 W scan at R87, r59–111.5, 6.1 × 15.75 mm copper → **Gen-CX** (= the unscored 10-21 Gen-CV, finished tonight; full scorer 23.718 W).
- **a6** (216 jobs): INVERTED triple pole (Ø20 inside, N42 block outside, bar outermost). Best 24.304 W scan at R77, r58–111.5, 6.1 × 15.0 mm → **Gen-CZ** (full scorer 24.262 W).
  (a8, a finer inverted grid at R76–80 with rin 57/59, peaked at only 22.54 W at R79 — tonight's first Gen-CZ draft used that and scored 22.543 W; it was superseded by the a6 point, kept in `_superseded/`.)
- **a1/a2/a4/a7**: bars replacing blocks (≤12.7 W), 9/6-coil stators (≤8.3 W), first triple grid (≤18.3 W), triple wire-saver ≤345 m (≤19.6 W) — not built.
- **Gen-CY** is not a scan point: it is Gen-CS's existing stator/bobbins (r58–105.5 × 6.8 × 16.5 mm, 306 t) with triple-pole rotors at R84 (the 10-21 Gen-CW, finished tonight).

## Champion

**Gen-CZ** at **24.262 W** (`--back-iron`, air-core 10.945 W) — BEATS Gen-CS 19.306 W (1.257×, same scoring mode).

Push: **Gen-CZ** (24.262 W) is the new champion and is pushed to lucidlooney2030/MAX-Versions (champions/2026-10-22-gen-cz-…; Gen-CX and Gen-CY as runners). Commit: PENDING.

Archive: `/workspace/generators/2026-10-22-generators.tar.gz`

