# 2026-10-27 nightly — physics_scorer ranking (Gen-DM / Gen-DN / Gen-DO)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (run once tonight at 9:07 PM ET, before the scans; PASS): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (2026-10-27, before ranking)

- Scorer code unchanged since the 2026-10-26 extension (`diff` vs `/workspace/generators/tools/physics_scorer_backup_2026-10-26/`: only model.py / checks.py / report.py differ, and only by the additive, opt-in `pole_o5_*` group — reviewed tonight: kits without `pole_o5_*` take exactly the old code path).
- **Gen-DG regression re-run tonight** (9:07–9:09 PM ET, `/tmp/dg_reg_1027`, log `_build/dg_regression_1027.log`): `--back-iron` **27.834 W**, 20.14 V rms/ph, 10.9 Ω, 223/223 t, Bz 0.640/0.176 T, PASS — identical to the shipped 2026-10-25 number.
- **24 AWG really used:** every kit has `wire_awg = 24`, `wire_od = 0.55`; SCORE.md Wire row shows bare 0.5106 mm / OD 0.55 mm and e.g. Gen-DM 389.6 m → 10.93 Ω/phase (≈ 4 × 32.5 m × 0.0842 Ω/m; 26 AWG would give ≈17.4 Ω). The "26 AWG copper" text in the SCORE.md header is a fixed cosmetic string in report.py.

### Scorer validation (2026-10-26 run, carried over)

- **Sanity** (`score_kit sanity`, 9:11 PM ET before the scans, again at 9:24 PM ET after the scorer extension, and before the docs): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**; `tests/test_sanity.py` OK.
- **Regression on the champion Gen-DG** (`/workspace/generators/2026-10-25/gen-dg-dual-rotor-8p12c-inverted-triple-pole-8-layer-thin-gap-24awg-r95`, re-scored into /tmp): `--back-iron` **27.834 W**, 20.14 V rms/ph, 10.9 Ω, 223/223 t, Bz 0.640/0.176 T, PASS — identical to the number shipped on 2026-10-25, both **before** (9:12 PM) and **after** (9:24 PM) tonight's scorer extension.
- **Scorer extension tonight (disclosed; backup of the unmodified scorer in `/workspace/generators/tools/physics_scorer_backup_2026-10-26/`).** New OPTIONAL magnet group `pole_o5_*` (model.py / checks.py / report.py): small cylinders d×h placed AT the poles (per-pole radius + angle lists), axially magnetised with the pole's polarity, gap face flush with the disc face; `pole_o5_mode = "upright"` (axis Z = an axially magnetised Ø5×5, magpylib Cylinder) or `"lying"` (axis tangential, M along Z = a diametrically magnetised Ø5×5 on its side; magpylib Cylinder with orientation). The back-iron image method and the holes-vs-pockets check include them. Kits without `pole_o5_*` parameters are scored exactly as before (Gen-DG regression above unchanged to the last digit).
- **Validation of the new group** (`_build/pole_o5_check.py`, log `pole_o5_check.log`): lying Ø5×5 vs an independent stack of 400 thin axial magpylib Cuboid slabs of the same cylinder — max |ΔBz| 0.00033 T at 27 points (max |Bz| 0.55 T); upright vs a plain magpylib Cylinder — identical (0 T) → **PASS**. Kit what-ifs: every kit scored upright (headline) and lying (`--set pole_o5_mode="lying"`): within 0.03 %.
- Wire: every kit uses `wire_awg = 24` (bare 0.5106 mm → resistance) and `wire_od = 0.55` (insulated → turns-fit) at fill 0.65 (cap, never raised). Cosmetic: the header line of every SCORE.md still prints "26 AWG copper" (fixed text in the scorer's report.py); the Wire row of the same SCORE.md shows the 24 AWG bare/OD actually used.
- The `--fill 0.60` what-if rows print verdict FAIL only because the kit's claimed turns (fill 0.65) exceed what fits at 0.60 — expected for that what-if; the kits themselves PASS.
- Scan vs. final: scans use a coarser grid (dr 0.6 mm / 1.5°); the full-resolution kit scores are ≈0.7 % lower. Only the full-resolution numbers are reported/ranked.
- **Air-core caveat:** the new pole is better only WITH the steel discs. Air-core (no `--back-iron`) Gen-DJ scores 11.65 W vs Gen-DG 12.22 W (axial magnets are doubled by their steel image, tangential Halbach magnets are partly cancelled by theirs). All kits ship the steel; the `--back-iron` number remains the scorer's optimistic image-method upper bound.


Champion to beat: **Gen-DJ** (`/workspace/generators/2026-10-26/gen-dj-dual-rotor-8p12c-axial-o5-pole-extender-triple-pole-8-layer-24awg-r95`) **29.048 W** matched-load @ 200 RPM with `--back-iron` (air-core 11.646 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-DM** `gen-dm-dual-rotor-8p12c-axial-o5-r95p5-arc-upgrade-on-gen-dg-dj-stator-and-steel` | **29.091 W** | 11.664 W | 20.59 | 10.93 | 223 | 0.633/0.183 | 12c/8p | 390 | 2× Ø264 × 4.76 mm (3/16") mild-steel discs | ONE plate 361.5×400.4 (Gen-DG/DJ owner: 16 arcs) · from scratch TWO 359.0×329.0 + 384.2×399.2 | PASS / geom PASS |
| 2 | **Gen-DN** `gen-dn-dual-rotor-8p12c-axial-o5-r96-227t-wide-bobbin-8-layer-24awg` | **29.045 W** | 11.640 W | 20.58 | 10.93 | 227 | 0.633/0.185 | 12c/8p | 390 | 2× Ø266 × 4.76 mm (3/16") mild-steel discs | TWO plates 361.0×331.0 + 399.3×400.3 | PASS / geom PASS |
| 3 | **Gen-DO** `gen-do-dual-rotor-8p12c-axial-o5-r92-9-layer-wide-gap-refine-24awg` | **28.349 W** | 11.395 W | 20.31 | 10.92 | 226 | 0.612/0.188 | 12c/8p | 389 | 2× Ø260 × 4.76 mm (3/16") mild-steel discs | TWO plates 354.0×324.0 + 382.0×399.0 | PASS / geom PASS |

## Design ideas

- **Gen-DM**: Gen-DJ's pole moved out 0.5 mm (R95 -> R95.5, the flat top of scans j3/j4) while keeping the Gen-DG/DJ Ø264 steel-disc hole map (clamp bolts stay at R95 ±13°) and the identical 8-layer stator: a Gen-DG or Gen-DJ owner prints only 16 new arcs. Scans j1-j4 (365 combos) re-searched the Ø5 placement (13 printable sites), 6/7/8/9 layers and the stator window: the Gen-DJ family is converged — this is the best printable point, a small honest gain.
- **Gen-DN**: Full new machine at the other flat-top point of scan j4: pole at R96 and bobbins moved out 1 mm (r75–134) with a deeper 18.9 mm radial build, 227 turns on the same 390 m spool (389.4 m). New Ø266 steel (the pole no longer fits the Ø264 discs).
- **Gen-DO**: The forgiving-gap option, refined: 9 layers of 24 AWG (4.95 mm copper, 7.55 mm magnet gap = 0.55 mm more room than Gen-DJ/DM/DN for wind bulge and rotor run-out) on bobbins r72–129 × 16.7 mm (226 t, full spool) under the axial-Ø5 triple pole at R92 (scan j4: best 9-layer point; replaces Gen-DK r71–129/R91).

## Ø5×5 usage (tonight: AXIAL pole extenders — counted for axial OR diametric Ø5, see each README)

- Gen-DM: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N42 block at R112.3 ±13.65 mm + 1 at R81.85 inside the O20), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if within 0.05 %).
- Gen-DN: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N42 block at R112.8 ±13.65 mm + 1 at R82.35 inside the O20), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if within 0.05 %).
- Gen-DO: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N42 block at R108.8 ±13.65 mm + 1 at R78.35 inside the O20), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if within 0.05 %).

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-DM: 29.091 W at fill 0.65 vs 26.847 W if only fill 0.60 is reached
- Gen-DN: 29.045 W at fill 0.65 vs 26.764 W if only fill 0.60 is reached
- Gen-DO: 28.349 W at fill 0.65 vs 26.156 W if only fill 0.60 is reached

## Scans behind tonight's kits

- **j1** (88 jobs): WHERE should the 3 axial Ø5 per pole go? 13 printable sites (inside the disc on-axis and at 35/50/65°, flanking the disc at three radii, flanking the N42 block, a second flank further out, outside the N52 bar on-axis and at 3.5/12/24 mm) × pair+single combos × RL 94–97 on the Gen-DJ stator. **Gen-DJ's choice (pair flanking the block + 1 inside the disc) wins at every RL** (RL96 29.242 / RL95 29.207 W scan); outside-the-bar sites ≤ 28.78 W, inside-the-disc pairs ≤ 28.99 W.
- **j2** (130 jobs): copper layer count with the new pole, full 390 m spool for every window: **8 layers (Gen-DJ stator) 29.24 W** > 7 layers best 28.62 W (r72–136) > 6 layers (lower still). The 8-layer 7.00 mm gap stays.
- **j3** (72 jobs): fine refine RL 95–96.5 × flank radial shift 0–1.2 mm × flank offset 13.6/14.3 mm × inner-Ø5 radius: flat top, **RL95.5 29.280 W**, RL96 29.265 W, Gen-DJ point (RL95) 29.230 W; flank pair as far out (dr 1.2) and as close to the block (13.6–13.65 mm) as the webs allow; moving the inner Ø5 inward always loses.
- **j4** (51 jobs): stator window around r74–134 under the refined pole (full spool): r74–134 × 18.6 (Gen-DG/DJ) 29.280 W @RL95.5, **r75–134 × 18.9 (227 t) 29.276 W @RL96**; every other window lower. 9-layer (7.55 mm gap) best: **RL92 r72–129 × 16.7, 28.465 W** (vs Gen-DK point 28.441 W).
- **Conclusion:** the Gen-DJ family is converged under this scorer — tonight's best printable points are ≈ +0.2 % over Gen-DJ. Full-resolution kit scores are ≈0.6–0.7 % below the scan grid; only full-resolution numbers are ranked.
- **Not re-scanned (settled earlier):** 8p/9c, 8p/6c, 8p/15c, 6p/9c, 10-pole without Ø20 discs (≤12.8 W), 30 AWG (≈6.7 W cap), 10/11/12-layer copper, hybrid axial + diametric Ø5 (≤28.92 W, 10-26 h1).


## Combined ranking 2026-10-26 + 2026-10-27 (all PASS, `--back-iron`) vs pushed champion Gen-DG 27.834 W

| Rank | Kit | P matched | air-core | Voc rms/ph | R Ω | vs Gen-DG |
|---|---|---|---|---|---|---|
| 1 | Gen-DM `/workspace/generators/2026-10-27/gen-dm-dual-rotor-8p12c-axial-o5-r95p5-arc-upgrade-on-gen-dg-dj-stator-and-steel` | **29.091 W** | 11.664 W | 20.59 | 10.93 | 1.045× |
| 2 | Gen-DJ `/workspace/generators/2026-10-26/gen-dj-dual-rotor-8p12c-axial-o5-pole-extender-triple-pole-8-layer-24awg-r95` | **29.048 W** | 11.646 W | 20.58 | 10.93 | 1.044× |
| 3 | Gen-DN `/workspace/generators/2026-10-27/gen-dn-dual-rotor-8p12c-axial-o5-r96-227t-wide-bobbin-8-layer-24awg` | **29.045 W** | 11.640 W | 20.58 | 10.93 | 1.044× |
| 4 | Gen-DO `/workspace/generators/2026-10-27/gen-do-dual-rotor-8p12c-axial-o5-r92-9-layer-wide-gap-refine-24awg` | **28.349 W** | 11.395 W | 20.31 | 10.92 | 1.019× |
| 5 | Gen-DK `/workspace/generators/2026-10-26/gen-dk-dual-rotor-8p12c-axial-o5-pole-9-layer-wide-gap-stator-24awg-r91` | **28.230 W** | 11.345 W | 20.23 | 10.87 | 1.014× |
| 6 | Gen-DL `/workspace/generators/2026-10-26/gen-dl-dual-rotor-8p12c-axial-o5-rotor-arc-upgrade-for-gen-dh-r86` | **27.727 W** | 11.287 W | 20.05 | 10.88 | 0.996× |
| — | Gen-DG (pushed champion 2026-10-25) | 27.834 W | 12.220 W | 20.14 | 10.93 | 1.000× |

## Champion

**Gen-DM** at **29.091 W** (`--back-iron`, air-core 11.664 W) — BEATS Gen-DJ 29.048 W (1.001×, same scoring mode).

Push: Gen-DM pushed to github lucidlooney2030/MAX-Versions @9b8ed75 (champions/2026-10-27-gen-dm-…/, print-packs/gen-dm-…/, CHAMPION.md, WOUND_ENVELOPE_2026-10-27.md). Gen-DJ (2026-10-26) was not pushed: Gen-DM supersedes it (+0.15 %) with the same stator/steel.

Archive: `/workspace/generators/2026-10-27-generators.tar.gz`

