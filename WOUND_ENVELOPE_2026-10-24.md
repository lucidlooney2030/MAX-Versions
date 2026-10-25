# 2026-10-24 nightly — physics_scorer ranking (Gen-DD / Gen-DE / Gen-DF)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (run at 9:08 PM ET before the scans and again at 9:39 PM ET before the docs; both PASS): Sat Oct 24 21:08:53 EDT 2026
single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (2026-10-24 run, before ranking)

- **Sanity** (`score_kit sanity`, 9:08 PM ET before the scans and again 9:39 PM ET before the docs): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- **Regression on the champion Gen-DA** (`/workspace/generators/2026-10-23/gen-da-dual-rotor-8p12c-inverted-triple-pole-thin-gap-24awg-r81`, re-scored into /tmp tonight): `--back-iron` **25.809 W**,
  19.38 V rms/ph, 10.9 Ω, 252 t, Bz 0.601/0.194 T, PASS — identical to the number shipped on 2026-10-23. The scorer was **not modified** tonight.
- Wire: every kit uses `wire_awg = 24` (bare 0.5106 mm → resistance) and `wire_od = 0.55` (insulated → turns-fit) at fill 0.65 (cap, never raised). Cosmetic: the header line of every SCORE.md still prints
  "26 AWG copper" (fixed text in the scorer's report.py); the Wire row of the same SCORE.md shows the 24 AWG bare/OD actually used.
- The `--fill 0.60` what-if rows print verdict FAIL only because the kit's claimed turns (fill 0.65) exceed what fits at 0.60 — expected for that what-if (same as last night); the kits themselves PASS.
- Tonight's gain is a **coil moved outward** (bobbins r68–122.25 instead of r61–117, build 16.0 instead of 16.8 mm, 240 t) under a pole pushed out to R86 (scans c1/c2/c4/c5): with the wire pinned at ≈390 m, the
  outer, faster-moving coil sides under the N52 bars earn more volts per metre of copper. Same 5.5 mm copper / 8.10 mm magnet gap as Gen-DA; wound-envelope check 0.50 mm PASS on all three.


Champion to beat: **Gen-DA** (`/workspace/generators/2026-10-23/gen-da-dual-rotor-8p12c-inverted-triple-pole-thin-gap-24awg-r81`) **25.809 W** matched-load @ 200 RPM with `--back-iron` (air-core 11.626 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-DD** `gen-dd-dual-rotor-8p12c-inverted-triple-pole-wide-stator-24awg-r86` | **26.632 W** | 11.805 W | 19.70 | 10.92 | 240 | 0.599/0.187 | 12c/8p | 389 | 2× Ø247 × 4.76 mm (3/16") mild-steel discs | TWO plates 403.2×402.9 + 387.3×387.0 | PASS / geom PASS |
| 2 | **Gen-DE** `gen-de-dual-rotor-8p12c-gen-da-rotor-reuse-stator-upgrade-r81` | **25.999 W** | 11.630 W | 19.43 | 10.89 | 252 | 0.601/0.195 | 12c/8p | 388 | 2× Ø236 × 4.76 mm (3/16") mild-steel discs | one plate 383.5×393.3 (re-uses Gen-DA rotors) | PASS / geom PASS |
| 3 | **Gen-DF** `gen-df-dual-rotor-8p12c-block-inside-triple-pole-rotor-swap-for-gen-dd-r97` | **25.809 W** | 11.415 W | 19.39 | 10.92 | 240 | 0.584/0.185 | 12c/8p | 389 | 2× Ø247 × 4.76 mm (3/16") mild-steel discs (R97 clamp holes) | TWO plates 403.2×402.9 + 395.2×392.0 (Gen-DD owner: plate 2 only) | PASS / geom PASS |

Gen-DF ties the old champion to 3 decimals but does NOT beat it: 25.8086 W vs Gen-DA 25.8091 W (scorer score.json, same mode).

## Design ideas

- **Gen-DD**: Gen-DA's inverted triple pole (Ø20 N52 inside, N42 block, N52 60×10×3 bar outermost) pushed out to R86 with the whole coil moved OUTWARD (bobbins r68–122.25 instead of r61–117) and a slightly SHORTER radial build (16.0 mm, 240 t): the coil sides now sit under the faster, larger-radius outer bar flux while the shorter build keeps the wire inside one 390 m spool (scans c1/c2/c4/c5, 528 combos past last night's grid edge).
- **Gen-DE**: Stator-only upgrade for a built Gen-DA (the current champion): keep both Gen-DA rotors exactly as they are (16 inverted triple-pole arcs, hubs, Ø236 steel, magnets glued) and swap in a re-optimised stator — bobbins moved outward to r63–118 mm (was r61–117) at the same 5.5 mm copper / 8.10 mm gap and 16.8 mm build (scan c1/c2 'darot', 81 stators on the fixed Gen-DA rotor). Only the stator, bobbins, gap sleeve and shims are printed — one plate.
- **Gen-DF**: A swappable ROTOR module for the Gen-DD stator: the other magnet order (N42 block INSIDE at R81.4, Ø20 N52 at R97, N52 bar outermost at R112.6) on the identical Gen-DD stator, gap sleeve, frame and Ø247 steel — a Gen-DD owner prints only the 16 arcs (plate 2 = ONE plate; the two hubs move over to the new steel, or reprint them from plate 1) and swaps rotor pairs with the jack rods to A/B-test the two pole orders on the same coils (scan c6: the block-inside order peaks at R96–97 on this stator).

## Ø5 assists (count only if DIAMETRICALLY magnetised)

- Gen-DD: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R87.6/93.8/100), Halbach-oriented (rule engraved on every arc); if yours are AXIAL, leave them out (see the --halbach none what-if)
- Gen-DE: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R82.6/88.8/95), Halbach-oriented (rule engraved on every arc); if yours are AXIAL, leave them out (see the --halbach none what-if)
- Gen-DF: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R89.6/95.8/102), Halbach-oriented (rule engraved on every arc); if yours are AXIAL, leave them out (see the --halbach none what-if)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-DD: 26.632 W at fill 0.65 vs 24.608 W if only fill 0.60 is reached
- Gen-DE: 25.999 W at fill 0.65 vs 24.005 W if only fill 0.60 is reached
- Gen-DF: 25.809 W at fill 0.65 vs 23.847 W if only fill 0.60 is reached

## Scans behind tonight's kits

- **c1** (216 jobs): Gen-DA inverted triple pole past last night's grid edge — RL 81/83/85, rin 60–65, rout 115–121, build 16.8/17.6/18.4, copper 5.5. Best 26.330 W (R83, r65–119, 16.8) — rin at the grid edge again: with the wire pinned at ≈390 m, moving the whole coil OUTWARD wins.
- **c2** (168 jobs): RL 82–84, rin 65–68, rout 119–122, build 16.4–17.2 → 26.604 W (R84, r66–120.5, 16.4); plus **'darot'** = Gen-DA rotors FIXED (R81), 60 new stators → best 26.027 W (r63–118 × 5.5 × 16.8, 388.2 m) → **Gen-DE** (stator-only upgrade).
- **c4/c5** (96 + 48 jobs): RL 84–87, rin 65.5–68, rout 120–123, build 15.6–16.4 → flat top 26.6–26.7 W; picked R86, r68–122.25 × 5.5 × 16.0 (240 t, 389.3 m, 26.689 W scan) → **Gen-DD**. (26.693 W at R85 r66.5–121.5 used 389.9 m — no spool margin; within 0.02 %.)
- **c6** (36 jobs) + c3/c4 'tb' rows: Gen-DC magnet order (N42 block INSIDE, Ø20, bar outside) on the wide stators → peaks 25.895 W at R96 (r66.5–121.5); on the exact Gen-DD stator (r68–122.25 × 16.0) R97 gives 25.862 W → **Gen-DF** (rotor-swap module for the Gen-DD stator).
- **c3** new directions (94 jobs):
  - **6-pole / 9-coil** inverted triple pole (12 Ø20 + 12 blocks + 12 bars + 36 Ø5): ≤ 12.81 W — half of 8p/12c (lower frequency, fewer magnets, longer end turns). Not built.
  - **Ø5 column relocated** (into the bar gap, spread, inner, mid) on the c1 tip: all lower (26.07–26.27 W vs 26.33 W base). Not built.
  - **11-layer copper (6.05 mm)**: up to 27.58 W but every combo needs 416–431 m of wire (> one 390 m spool). Not built.
- **Not possible with the inventory:** 10p/15c or 16p/12c with one Ø20 per pole needs 20 or 32 Ø20 discs (Austin has 16); the scorer models identical poles only, so mixed disc/bar poles were not scored.

## Champion

**Gen-DD** at **26.632 W** (`--back-iron`, air-core 11.805 W) — BEATS Gen-DA 25.809 W (1.032×, same scoring mode).

Push: pending.

Archive: `/workspace/generators/2026-10-24-generators.tar.gz`

