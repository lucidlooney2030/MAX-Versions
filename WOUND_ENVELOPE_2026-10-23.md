# 2026-10-23 nightly — physics_scorer ranking (Gen-DA / Gen-DB / Gen-DC)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (run at 9:07 PM ET before the scans and again at 9:36 PM ET before the docs; both PASS): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (2026-10-23 run, before ranking)

- **Sanity** (`score_kit sanity`, 9:07 PM ET and again 9:36 PM ET): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- **Regression on the champion Gen-CZ** (`/workspace/generators/2026-10-22/gen-cz-dual-rotor-8p12c-inverted-triple-pole-24awg-r77`, re-scored into /tmp tonight): `--back-iron` **24.262 W**,
  18.55 V rms/ph, 10.6 Ω, 250 t, Bz 0.580/0.201 T, PASS — identical to the number shipped on 2026-10-22. The scorer was **not modified** tonight.
- Wire: every kit uses `wire_awg = 24` (bare 0.5106 mm → resistance) and `wire_od = 0.55` (insulated → turns-fit) at fill 0.65 (cap, never raised). Cosmetic: the header line of every SCORE.md still prints
  "26 AWG copper" (fixed text in the scorer's report.py); the Wire row of the same SCORE.md shows the 24 AWG bare/OD actually used.
- Tonight's gain is a **thinner gap / longer copper** stator family (copper height 5.5–5.8 mm instead of 6.1; bobbins out to r115–117) found by scans b1/b5/b7; the scorer's
  wound-envelope check (magnet face → wound envelope ≥ 0.5 mm with the as-built 0.00 mm recess) PASSES on all three, so the smaller gap is the flange + 0.5 mm running clearance, not a squeezed one.


Champion to beat: **Gen-CZ** (`/workspace/generators/2026-10-22/gen-cz-dual-rotor-8p12c-inverted-triple-pole-24awg-r77`) **24.262 W** matched-load @ 200 RPM with `--back-iron` (air-core 10.945 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-DA** `gen-da-dual-rotor-8p12c-inverted-triple-pole-thin-gap-24awg-r81` | **25.809 W** | 11.626 W | 19.38 | 10.92 | 252 | 0.601/0.194 | 12c/8p | 389 | 2× Ø236 × 4.76 mm (3/16") mild-steel discs | TWO plates 382.4×383.0 + 391.3×387.0 | PASS / geom PASS |
| 2 | **Gen-DB** `gen-db-dual-rotor-8p12c-gen-cz-rotor-reuse-stator-upgrade-r77` | **24.839 W** | 11.098 W | 18.98 | 10.88 | 257 | 0.580/0.200 | 12c/8p | 388 | 2× Ø229 × 4.76 mm (3/16") mild-steel discs | one plate 352.7×385.9 (re-uses Gen-CZ rotors) | PASS / geom PASS |
| 3 | **Gen-DC** `gen-dc-dual-rotor-8p12c-triple-pole-thin-gap-24awg-r90` | **24.619 W** | 11.036 W | 18.94 | 10.93 | 253 | 0.576/0.194 | 12c/8p | 389 | 2× Ø233 × 4.76 mm (3/16") mild-steel discs | TWO plates 372.7×360.7 + 273.5×395.0 | PASS / geom PASS |

## Design ideas

- **Gen-DA**: Gen-CZ's inverted triple pole (Ø20 N52 inside, N42 block, N52 60×10×3 bar outermost) moved out to R81 and paired with a THIN-GAP, long-copper 24 AWG stator: copper height 5.5 mm (was 6.1 → magnet gap 8.10 mm instead of 8.70) and bobbins stretched to r61–117 × 16.8 mm build, so the stronger gap field and the longer active coil sides both lift EMF while the wire stays inside one 390 m spool (scans b1/b5/b7, 390 combos).
- **Gen-DB**: Stator-only upgrade for a built Gen-CZ: keep both Gen-CZ rotors exactly as they are (16 inverted triple-pole arcs, hubs, Ø229 steel, magnets glued) and swap in a re-optimised 24 AWG stator — bobbins moved to r60–113 mm with a 15.4 mm build (scan b5 'czrot', 54 stators on the fixed Gen-CZ rotor), so the copper sits where Gen-CZ's outer bar flux is. Nothing magnetic is touched; only the stator, bobbins and gap sleeve are printed.
- **Gen-DC**: The other magnet order: N42 block INSIDE (R74.4), Ø20 N52 in the middle (R90) and the N52 bar outermost (R105.6), i.e. Gen-CX's pole pushed out to R90 on a thinner-gap stator (5.8 mm copper, bobbins r60–115 × 16.0 mm) — the Ø20 discs, the strongest magnets per area, move to a larger radius where they sweep the coil sides faster (scans b6/b7).

## Ø5 assists (count only if DIAMETRICALLY magnetised)

- Gen-DA: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R82.6/88.8/95), Halbach-oriented (rule engraved on every arc)
- Gen-DB: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R78.6/84.8/91), Halbach-oriented (rule engraved on every arc)
- Gen-DC: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R82.6/88.8/95), Halbach-oriented (rule engraved on every arc)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-DA: 25.809 W at fill 0.65 vs 23.841 W if only fill 0.60 is reached
- Gen-DB: 24.839 W at fill 0.65 vs 22.890 W if only fill 0.60 is reached
- Gen-DC: 24.619 W at fill 0.65 vs 22.746 W if only fill 0.60 is reached

## Scans behind tonight's kits

- **b1** (216 jobs): inverted triple pole (Ø20 inside, N42 block, N52 bar outermost) fine grid around Gen-CZ — RL 76–79, rin 57–59, rout 111.5–115, copper 5.8/6.1 mm, build 14.6–15.4. Best 25.113 W (R79, r59–115, 5.8 × 15.4) — at the grid edge, so extended in b5/b7.
- **b5** (126 jobs): extension RL 79–81, rin 59/60, rout 115–119, copper 5.5/5.8, build 15.4/16.0 → 25.485 W; plus **'czrot'** = Gen-CZ rotors FIXED (R77), 54 new stators → best 24.972 W (r60–113 × 6.1 × 15.4) → **Gen-DB** (full scorer 24.839 W).
- **b7** (48 jobs): last edge refine rin 60–62, build 16.0/16.8, copper 5.2/5.5 → best **25.890 W** (R81, r61–117, 5.5 × 16.8 mm) → **Gen-DA** (full scorer 25.809 W). Copper 5.2 mm was lower (≤25.22 W): the window loss beats the field gain.
- **b6/b7** (72 + 24 jobs): Gen-CX magnet order (N42 block inside + Ø20 + bar outside) on the thin-gap family → best 24.664 W (R90, r60–115, 5.8 × 16.0) → **Gen-DC** (full scorer 24.619 W).
- **b2** (48 jobs): rotor-only retrofit on the FIXED Gen-CZ stator (pole radius 73–80 and 88, Ø5 column moved in/out/spread, both magnet orders) → nothing beats Gen-CZ (best 24.304 W scan = Gen-CZ itself; Ø5 radius changes ±0.1 %). Not built.
- **b3** (90 jobs): N42 block turned 20 mm RADIAL (inverted and inside orders) → radial-block inverted rows all exceed the 390 m spool; block-inside radial ≤23.19 W. Not built.
- **b4** (108 jobs): 8p/9c inverted triple → ≤16.56 W (winding/phase mismatch). Not built.

## Champion

**Gen-DA** at **25.809 W** (`--back-iron`, air-core 11.626 W) — BEATS Gen-CZ 24.262 W (1.064×, same scoring mode).

Push: pending.

Archive: `/workspace/generators/2026-10-23-generators.tar.gz`

