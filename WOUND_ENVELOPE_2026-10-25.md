# 2026-10-25 nightly — physics_scorer ranking (Gen-DG / Gen-DH / Gen-DI)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (run at 9:06 PM ET before the scans and again at 9:50 PM ET before the docs; both PASS): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (2026-10-25 run, before ranking)

- **Sanity** (`score_kit sanity`, 9:06 PM ET before the scans and again before the docs): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- **Regression on the champion Gen-DD** (`/workspace/generators/2026-10-24/gen-dd-dual-rotor-8p12c-inverted-triple-pole-wide-stator-24awg-r86`, re-scored into /tmp tonight): `--back-iron` **26.632 W**,
  19.70 V rms/ph, 10.9 Ω, 240 t, Bz 0.599/0.187 T, PASS — identical to the number shipped on 2026-10-24. The scorer was **not modified** tonight.
- Wire: every kit uses `wire_awg = 24` (bare 0.5106 mm → resistance) and `wire_od = 0.55` (insulated → turns-fit) at fill 0.65 (cap, never raised). Cosmetic: the header line of every SCORE.md still prints
  "26 AWG copper" (fixed text in the scorer's report.py); the Wire row of the same SCORE.md shows the 24 AWG bare/OD actually used.
- The `--fill 0.60` what-if rows print verdict FAIL only because the kit's claimed turns (fill 0.65) exceed what fits at 0.60 — expected for that what-if; the kits themselves PASS.
- Scan vs. final: the scans use a coarser grid (dr 0.6 mm / 1.5°); the full-resolution kit scores are 0.3–0.7 % lower (Gen-DG 28.023 → 27.834 W, Gen-DI 27.267 → 27.093 W, Gen-DH 27.080 → 26.999 W). Only the full-resolution numbers are reported/ranked.
- Tonight's gain is **thinner copper, wider coils** at a fixed 390 m spool: 8 layers of 24 AWG (4.40 mm) instead of 10 (5.50 mm) shrinks the magnet gap 8.10 → 7.00 mm (peak Bz 0.599 → 0.640 T) and the
  saved wire goes into a wider, further-out coil. Wound-envelope clearance 0.50 mm PASS on all three (same 0.5 mm run clearance and 0.8 mm flanges as before; the gap shrinks only because the copper is thinner).


Champion to beat: **Gen-DD** (`/workspace/generators/2026-10-24/gen-dd-dual-rotor-8p12c-inverted-triple-pole-wide-stator-24awg-r86`) **26.632 W** matched-load @ 200 RPM with `--back-iron` (air-core 11.805 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-DG** `gen-dg-dual-rotor-8p12c-inverted-triple-pole-8-layer-thin-gap-24awg-r95` | **27.834 W** | 12.220 W | 20.14 | 10.93 | 223 | 0.640/0.176 | 12c/8p | 390 | 2× Ø264 × 4.76 mm (3/16") mild-steel discs | TWO plates 359.0×329.0 + 363.9×399.7 | PASS / geom PASS |
| 2 | **Gen-DI** `gen-di-dual-rotor-8p12c-block-inside-rotor-swap-for-gen-dg-r106` | **27.093 W** | 11.870 W | 19.87 | 10.93 | 223 | 0.621/0.174 | 12c/8p | 390 | 2× Ø264 × 4.76 mm (3/16") mild-steel discs | TWO plates 359.0×329.0 + 396.6×389.6 (Gen-DG owner: plate 2 arcs only) | PASS / geom PASS |
| 3 | **Gen-DH** `gen-dh-dual-rotor-8p12c-gen-dd-rotor-reuse-9-layer-stator-upgrade-r86` | **26.999 W** | 12.032 W | 19.79 | 10.88 | 243 | 0.620/0.186 | 12c/8p | 388 | 2× Ø247 × 4.76 mm (3/16") mild-steel discs | ONE plate 399.0×372.3 (re-uses Gen-DD rotors) | PASS / geom PASS |

## Design ideas

- **Gen-DG**: Trade copper HEIGHT for copper WIDTH at a fixed 390 m spool: 8 layers of 24 AWG (4.40 mm copper instead of 10 layers / 5.5 mm) shrink the magnet-to-magnet gap from 8.10 to 7.00 mm (peak Bz 0.60 → 0.64 T), and the wire saved per turn goes into a wider, further-out coil (bobbins r74–134 × 18.6 mm build, 223 t) under Gen-DD's inverted triple pole pushed out to R95 (scans d1/d3/d4/d5: 9 layers peaks ≈27.4 W, 8 layers ≈28.0 W, 7 layers falls back to ≈26.9 W).
- **Gen-DI**: A swappable ROTOR module for the Gen-DG 8-layer stator: the other magnet order (N42 block INSIDE at R90.4, Ø20 N52 at R106, N52 bar outermost at R121.6) on the identical Gen-DG stator, 7.00 mm gap sleeve, frame and Ø264 steel OD — a Gen-DG owner prints only the 16 arcs (plate 2 — delete the 12 lids in the slicer) and swaps rotor pairs with the jack rods to A/B-test the two pole orders on the same coils (scan d6: the block-inside order peaks at R106 on this stator).
- **Gen-DH**: Stator-only upgrade for a built Gen-DD (the current champion): keep both Gen-DD rotors exactly as they are (16 triple-pole arcs, hubs, Ø247 steel, magnets glued) and swap in a 9-layer stator — 4.95 mm copper instead of 5.5 mm closes the magnet gap from 8.10 to 7.55 mm, and the bobbins go to r67–124 × 18.0 mm (243 t) so the spool is still used to the last metre (scans d3/d5 'ddrot', 54 stators on the fixed Gen-DD rotor; 8 layers is worse on this smaller rotor). Only the stator, bobbins, a shorter gap sleeve and shims are printed — one plate.

## Ø5 assists (count only if DIAMETRICALLY magnetised)

- Gen-DG: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R96.6/102.8/109), Halbach-oriented (rule engraved on every arc); if yours are AXIAL, leave them out (see the --halbach none what-if)
- Gen-DI: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R98.6/104.8/111), Halbach-oriented (rule engraved on every arc); if yours are AXIAL, leave them out (see the --halbach none what-if)
- Gen-DH: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R87.6/93.8/100), Halbach-oriented (rule engraved on every arc); if yours are AXIAL, leave them out (see the --halbach none what-if)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-DG: 27.834 W at fill 0.65 vs 25.680 W if only fill 0.60 is reached
- Gen-DI: 27.093 W at fill 0.65 vs 24.997 W if only fill 0.60 is reached
- Gen-DH: 26.999 W at fill 0.65 vs 24.953 W if only fill 0.60 is reached

## Scans behind tonight's kits

- **d1** (180 jobs): copper HEIGHT vs gap at a full spool — 8 / 9 / 10 / 11 / 12 layers (4.40 / 4.95 / 5.50 / 6.05 / 6.60 mm copper → 7.00 / 7.55 / 8.10 / 8.65 / 9.20 mm magnet gap), rin 62–74, rout 118–126, RL 84/86/88, Gen-DD pole. Best per layer count: 8 L 26.31 W · **9 L 27.343 W** (RL88, r70–126, at the grid corner) · 10 L (Gen-DD's) 26.48 W · 11 L 25.42 W · 12 L 24.18 W — once the wire is held at 390 m, thicker copper loses (the gap grows faster than the turns help); thinner copper wins if the coil moves outward.
- **d3** (137 jobs): past the d1 corner — RL 88–94, rin 68–76, rout 124–132 (9 layers) + a few 8-layer rows → 27.633 W (8 layers, RL92, r70–130). Plus **'ddrot'** = the finished Gen-DD rotor (R86) FIXED, 25 new 9-layer stators → 27.058 W.
- **d4** (216 jobs): 7 / 8 / 9 layers × RL 90–96 × rin 68–74 × rout 128–135 → 8 layers wins (27.920 W, RL94, r74–132); 7 layers (3.85 mm) tops out at 26.91 W in this grid (RL96, r74–135; its build hits the sector's inradius limit at only 383 m, so 7 layers would need an even bigger, off-plate stator). 'ddrot' with 7/8 layers on the R86 rotor: ≤ 25.81 W (8 layers is worse than 9 on the smaller rotor).
- **d5** (39 jobs): final edge check → **28.023 W** (8 layers, RL95, r74–134 × 18.6 mm, 223 t, 390 m; scan grid) → **Gen-DG** (full-resolution score 27.834 W). 'ddrot' refine → 27.080 W (r67–124 × 4.95 × 18.0, 243 t) → **Gen-DH** (full score 26.999 W).
- **d6** (11 jobs): rotors on the Gen-DG stator — block-inside order (N42 inside, Ø20, bar outside) RL 100–112 peaks at **R106 27.267 W** → **Gen-DI** (full score 27.093 W); Gen-DG's own order at R96/97: 27.92/27.57 W; the finished Gen-DD rotor (R86) on the Gen-DG stator: 19.58 W (not recommended).
- **d2** new direction (36 jobs): **10-pole rotors without the Ø20 disc** (pole = N42 block + N52 bar, 10 per rotor = all 20 blocks and 20 bars), no Ø5: 10p/15c ≤ 11.21 W; 10p/12c ≤ 12.84 W and flagged unbalanced by the scorer's phase grouping. Less than half of 8p/12c — the 16 Ø20 discs carry too much of the flux to drop. Not built.
- **Not re-scanned (settled on earlier nights):** 8p/9c, 8p/6c, 8p/15c, 6p/9c (all far below 8p/12c), Ø5 column relocations, 30 AWG (≈4× the resistance for the same turns in one spool: caps ≈6.7 W).

## Champion

**Gen-DG** at **27.834 W** (`--back-iron`, air-core 12.220 W) — BEATS Gen-DD 26.632 W (1.045×, same scoring mode).

Push: **Gen-DG** (27.834 W) is the new champion — pushed to lucidlooney2030/MAX-Versions (champions/2026-10-25-gen-dg-dual-rotor-8p12c-inverted-triple-pole-8-layer-thin-gap-24awg-r95/, print-packs/…, CHAMPION.md; Gen-DI and Gen-DH in champions/runners-2026-10-25/).

Archive: `/workspace/generators/2026-10-25-generators.tar.gz`

