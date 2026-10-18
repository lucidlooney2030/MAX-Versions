# 2026-10-17 nightly — physics_scorer ranking (Gen-CJ / CK / CL)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (start of tonight's job, ≈9:14 PM ET): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (start of the 2026-10-17 run, before scoring anything)

- **Sanity** (`score_kit sanity`): single Ø20×5 N52 (Br 1.43 T) on-axis surface Bz — magpylib 0.3198 T vs analytic 0.3198 T (expected ≈0.32 T) → **PASS**.
- **Regression of the 2026-10-16 cuboid-enabled scorer on Gen-CD** (`/workspace/generators/2026-10-14/gen-cd-dual-rotor-8p12c-r86-frontier-tip`, no blocks):
  `--back-iron` **8.555 W**, 14.03 V rms/ph, 17.25 Ω, 370 t, Bz 0.656/0.133 T, PASS; air-core **3.784 W**, 9.33 V rms/ph — identical to the numbers shipped on 2026-10-14 (CHAMPION.md). The cylinder path is unchanged.
- **Code review of the 2026-10-16 change** (diff vs `2026-10-16/_build/physics_scorer_backup_before_cuboid/`): only additive — optional `block_*` params → magpylib `Cuboid` sources (polarization given in the global frame and rotated into the local frame), rotation about +Z by the pole angle, blocks flush with the disc's gap face, copied by the `--back-iron` image method with the same dims/rotation, block pockets added to the hole-vs-pocket check and to the Bz plot. No cylinder code path changed.
- **Independent cuboid check** (`_build/cuboid_check.py`, magpylib directly vs the textbook on-axis prism formula Bz = Br/π·[atan(LW/(2z√(4z²+L²+W²))) − same at z+h]):
  N42 20×10×5, Br 1.29 T: face 0.3638 / 0.3638 T, 1 mm 0.3157 / 0.3157 T, 2 mm 0.2661 / 0.2661 T, 5 mm 0.1490 / 0.1490 T; Br 1.32 T: face 0.3723 / 0.3723 T.
  N52 60×10×3 bar, Br 1.43 T: face 0.2497 / 0.2497 T. Scorer `Magnet`→`Cuboid` path vs a hand-built rotated magpylib Cuboid at 0°, 30°, 90°, 217.5° (20 off-axis points): max difference 0.0 T.
- **Grade / Br per magnet type:** Ø20×5 and Ø5×5 discs use `magnet_Br = 1.43` T (N52); N42 blocks use `block_Br = 1.29` T (low end of N42's 1.29–1.32 T, conservative; at 1.32 T the block contribution would be ≈2 % higher). Tonight's kits set both explicitly in `parameters.scad`. The 60×10×3 N52 bars are not used (see below), so no bar grade enters any score.
- **Verdict: the cuboid path is correct; no scorer change was needed tonight** (the scorer was not modified on 2026-10-17).


Champion to beat: **Gen-CD** (`/workspace/generators/2026-10-14/gen-cd-dual-rotor-8p12c-r86-frontier-tip`) **8.555 W** matched-load @ 200 RPM with `--back-iron` (air-core 3.784 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-CJ** `gen-cj-dual-rotor-8p12c-radial-block-halbach-r86` | **15.244 W** | 7.586 W | 18.70 | 17.20 | 266 | 0.661/0.172 | 12c/8p | 385 | 2× Ø198 × 4.76 mm (3/16") mild-steel discs | 403.7×402.2 | PASS / geom PASS |
| 2 | **Gen-CL** `gen-cl-dual-rotor-8p12c-radial-block-wiresaver-300m` | **13.252 W** | 6.572 W | 15.58 | 13.74 | 196 | 0.682/0.179 | 12c/8p | 308 | 2× Ø198 × 4.76 mm (3/16") mild-steel discs | 403.7×402.2 | PASS / geom PASS |
| 3 | **Gen-CK** `gen-ck-dual-rotor-8p12c-cd-stator-block-retrofit-r86` | **12.239 W** | 5.922 W | 16.78 | 17.25 | 370 | 0.638/0.188 | 12c/8p | 386 | 2× Ø198 × 4.76 mm (3/16") mild-steel discs | 402.3×399.6 | PASS / geom PASS |

## Design ideas

- **Gen-CJ**: Gen-CG refined: each N42 20×10×5 block is turned so its 20 mm side runs RADIALLY (centre R64.5, r54.5–74.5) right inside the Ø20 N52 disc at R86, giving a long, narrow 42 mm radial pole (r54.5–96). The narrow block leaves wide inter-pole gaps at the inner radius (less pole-to-pole leakage) and lets the bobbins reach in to r50, so each turn links more pole for the same 390 m spool. 48 diametric Ø5 Halbach columns in the gaps; same Ø229 annular stator OD, same Ø198 steel / clamp map as Gen-CG, one plate.
- **Gen-CL**: Modular swap: exactly the Gen-CJ rotors, arcs and steel, on a thinner-copper stator (4.0 mm copper, so the magnet faces close in by 0.5 mm) that needs only ≈300 m of 26 AWG — the rest of the spool stays free. Swap stators by changing the gap sleeve only.
- **Gen-CK**: Upgrade path for a built Gen-CD: keep its stator, bobbins and 386 m winding; reprint only the 16 magnet arcs to hold the Ø20 N52 disc PLUS an N42 20×10×5 block (20 mm tangential, R69.5, overlapping the bobbins' inner copper edge at r65) and a column of 3 diametric Ø5 in every gap. Arc clamp bolts move to ±13° from each pole, so the steel discs need the Gen-CG/CI hole map (re-drill Gen-CD discs or cut new ones).

## Ø5 assists (count only if DIAMETRICALLY magnetised)

- Gen-CJ: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R79.8/86/92.2), Halbach-oriented (rule engraved on every arc)
- Gen-CL: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R79.8/86/92.2), Halbach-oriented (rule engraved on every arc)
- Gen-CK: 48 DIAMETRIC Ø5×5 fitted, 3 per inter-pole gap (R79.8/86/92.2), Halbach-oriented (rule engraved on every arc)

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-CJ: 15.244 W at fill 0.65 vs 14.095 W if only fill 0.60 is reached
- Gen-CL: 13.252 W at fill 0.65 vs 12.220 W if only fill 0.60 is reached
- Gen-CK: 12.239 W at fill 0.65 vs 11.271 W if only fill 0.60 is reached

## What tonight's scans showed (`_design_scan/`, all `--back-iron`)

- **Block orientation:** turning each N42 20×10×5 block so the 20 mm side runs RADIALLY (centre R64.5, r54.5–74.5, directly inside the Ø20 disc at R86) and growing the bobbins in to r50 gives **15.19 W coarse at 385 m** (r50–104 × 4.5 mm, b 14.5, 266 t) vs **15.16 W coarse** for Gen-CG's tangential block (R69.5, r56–105). A tie within the grid accuracy (+0.2 %) — the radial block is built as Gen-CJ because it frees the inter-pole space at the inner radius and is the better base for the wire-saver; it is NOT a big step over Gen-CG.
- Without the 390 m cap the radial-block machine keeps climbing (15.5–15.7 W at 410–440 m, r50 × 4.65 mm), i.e. **wire is the limit again**, not magnets.
- **Thinner copper** (3.8–4.2 mm, deeper radial build) does not beat 4.5 mm at 390 m (best 15.01 W at 4.2 mm).
- **Wire-saver:** thin 4.0 mm copper on the same rotors, r50–104, b 12 → **13.21 W coarse at 308 m** (Gen-CL); r52–102 × 4.0 gives 13.14 W at 303 m.
- **Gen-CD stator + hybrid rotors (retrofit):** N42 block (tangential) at R69.5 + diametric Ø5 column on Gen-CD's exact window r65–105 × 4.95 mm (370 t) → **12.31 W coarse** (R68.5: 11.67 W). Built as Gen-CK.
- **Ø5:** in every row the diametric Ø5 column (R79.8/86/92.2) is worth ≈ +1 W (j1: 15.08 vs 14.14 W with/without); the no-Ø5 score of each kit is in its README (`--halbach none`).
- **N42 count:** 16 of the 20 blocks are used (one per pole, 8 poles × 2 rotors); the 4 spares can't be used symmetrically.
- **N52 60×10×3 bars not used:** only 10 are confirmed and every pole of the 8-pole dual rotor needs an identical piece on both rotors (16); a bar machine built from 8 bars (4 poles) is far below the hybrid numbers, and the scorer's block option is one block type per kit. If 20 more bars arrive (≥16), a bar-extended rotor is worth scanning; nothing is claimed for it tonight.

## Earlier failed nights (context)

- The 2026-10-15 and 2026-10-16 runs never finished (no SCORECARD/README/preview/push). The 2026-10-16 folder holds three scored but unshipped kits —
  Gen-CG hybrid-block Halbach R86 (15.126 W `--back-iron`, PASS), Gen-CH hybrid-block R87 no-Ø5 (14.303 W), Gen-CI Gen-CD Halbach retrofit (9.320 W). They were not
  re-shipped tonight; Gen-CJ is Gen-CG's direct successor (15.244 W vs 15.126 W full-res, same magnets/steel/stator OD) and Gen-CK supersedes Gen-CI as the Gen-CD upgrade path (12.239 W vs 9.320 W).
- Tonight's pipeline reused the 2026-10-16 `_build/` scripts (make_kits / night_kit / check_geom / steel_flux / make_preview / make_docs); the only changes were output paths,
  data-driven block-orientation text, the thermal-current note, and the per-kit modular/retrofit README sections.

## Champion

**Gen-CJ** at **15.244 W** (`--back-iron`, air-core 7.586 W) — BEATS Gen-CD 8.555 W (1.782×, same scoring mode).

Push: **Gen-CJ pushed** to lucidlooney2030/MAX-Versions @ `a516395` (main, fast-forward, no force) — `champions/2026-10-17-gen-cj-dual-rotor-8p12c-radial-block-halbach-r86/`, `print-packs/gen-cj-dual-rotor-8p12c-radial-block-halbach-r86/`, runners Gen-CL/Gen-CK in `champions/runners-2026-10-17/`, CHAMPION.md updated (back-iron + air-core, V, Ω, wire, cuboid-validation scorer note), scorecard = `WOUND_ENVELOPE_2026-10-17.md`.

Archive: `/workspace/generators/2026-10-17-generators.tar.gz`

