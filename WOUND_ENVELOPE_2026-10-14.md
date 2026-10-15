# 2026-10-14 nightly — physics_scorer ranking (Gen-CD / CE / CF)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (start of tonight's job, ≈9:12 PM ET): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

Champion to beat: **Gen-CA** (`/workspace/generators/2026-10-13/gen-ca-dual-rotor-8p12c-r84-arcs-nested`) **8.492 W** matched-load @ 200 RPM with `--back-iron` (air-core 3.771 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-CD** `gen-cd-dual-rotor-8p12c-r86-frontier-tip` | **8.555 W** | 3.784 W | 14.03 | 17.25 | 370 | 0.656/0.133 | 12c/8p | 386 | 2× Ø198 × 4.76 mm (3/16") mild-steel discs | 403.1×403.5 | PASS / geom PASS |
| 2 | **Gen-CF** `gen-cf-dual-rotor-8p12c-ca-retrofit-r84` | **8.385 W** | 3.713 W | 13.68 | 16.75 | 347 | 0.670/0.132 | 12c/8p | 375 | 2× Ø194 × 4.76 mm (3/16") mild-steel discs | 403.4×403.4 | PASS / geom PASS |
| 3 | **Gen-CE** `gen-ce-dual-rotor-8p12c-r86-wiresaver-300m` | **7.490 W** | 3.329 W | 11.57 | 13.41 | 288 | 0.704/0.146 | 12c/8p | 301 | 2× Ø198 × 4.76 mm (3/16") mild-steel discs | 403.4×404.0 | PASS / geom PASS |

## Design ideas

- **Gen-CD**: Push past Gen-CA on the same arc-nested one-plate architecture: poles out to R86, bobbins r65–105 × 4.95 mm copper. Full-resolution scorer picks this window at ≈8.56 W (386 m, at the wire budget) with a Ø229 stator that still packs; thinner-copper R86 tips (r65–107 × 4.65) need Ø232+ and would not pack. Same 8 bolt-on arcs/rotor + D-flat hub + open-centre stator + in-place bobbin bases that unlocked Gen-CA.
- **Gen-CF**: Stator-only upgrade for an existing Gen-CA: the R84 arcs, hubs and Ø194 steel stay as they are; a new annular 12-bobbin stator with 4.65 mm copper and r63–105 bobbins replaces the old r64–104 × 4.95 mm stator, together with a shorter gap sleeve and matching frame rods / bridges (rods at R108.5 for ≥1.0 mm web to the bays). No new magnets or steel. Scans showed no R84 stator beats Gen-CA’s own 8.492 W; this kit is the best distinct modular swap (≈8.39 W, ≈375 m, easier thin-copper wind).
- **Gen-CE**: Wire-saver stator for the Gen-CD rotors: only 3.9 mm of copper (≈9 layers), magnet faces ≈6.5 mm apart, peak Bz ≈0.70 T. Uses ≈300 m of wire (≈86 m less than Gen-CD) and still clears Gen-BX; shares every rotor part, the steel, the frame rods and the bearing bridges with Gen-CD, so the two stators swap on the same machine.

## Ø5 assists

- Gen-CD: none fitted (all 48 Ø5 spare); scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out
- Gen-CF: none fitted (all 48 Ø5 spare); scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out
- Gen-CE: none fitted (all 48 Ø5 spare); scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out

## Dense-wind dependence (scorer, `--back-iron --fill 0.60` = same windows, fewer turns)

- Gen-CD: 8.555 W at fill 0.65 vs 7.879 W if only fill 0.60 is reached
- Gen-CF: 8.385 W at fill 0.65 vs 7.731 W if only fill 0.60 is reached
- Gen-CE: 7.490 W at fill 0.65 vs 6.873 W if only fill 0.60 is reached

## What the scans showed (`_design_scan/`, wire ≤ 386 m, all `--back-iron`)

- **R86 is the new one-plate tip.** Fine scan around R84–86 (copper 4.2–4.95, rin 62–66, rout 102–108) puts the best PASS rows at **R86 r65–107 × 4.65 mm = 8.569 W** (385 m) and **R86 r64–106 × 4.65 mm = 8.531 W** (380 m) — both above Gen-CA’s 8.492 W. R85 tip 8.509 W. Same R84 as Gen-CA tops out at 8.491 W (already saturated). Peak Bz climbs to ≈0.67 T at 4.65 mm copper (m2m ≈7.25 mm).
- **R87/R88 still scan higher (8.60 W) but the plate/wire bind.** t4 best R88 r67–109 × 4.5 = 8.604 W at 383 m; stator ≈Ø234–236 and Ø202 steel — outside the proven arc-nested pack envelope that barely fit Gen-CA at Ø226 / 402.6 mm. Not shipped.
- **Wire-saver on the R86 rotors (≤300 m):** best **r64–104 × 3.9 mm = 7.474 W at 300 m** (Bz pk ≈0.70 T). Still above Gen-BX 7.304 W and within ~1 % of Gen-CB’s R84 wire-saver, with a clear swap onto Gen-CD rotors/steel/bridges. Absolute ≤300 m tip on R84 (7.546 W) was left as a scan note — tonight’s #2 shares the #1 rotors.
- **Gen-CA stator retrofit (R84 rotors kept):** no row beats Gen-CA’s own 8.492 W (max 8.491 = same window). Best *distinct* modular swap is **r63–105 × 4.65 mm = 8.412 W at 375 m** — thin-copper stator for Gen-CA keepers (≈6 m less wire, easier 4.65 mm wind, same arcs/hubs/Ø194 steel). Clear bolt-on path, no new magnets or steel.
- **Not rescanned:** other coil counts and diametric Ø5 (still hurt 8p/12c). Mid-rotor / single-sided not modellable honestly under `--back-iron`.

## Champion

**Gen-CD** at **8.555 W** (`--back-iron`, air-core 3.784 W) — BEATS Gen-CA 8.492 W (1.007×, same scoring mode).

Push: lucidlooney2030/MAX-Versions (2026-10-14 night).

Archive: `/workspace/generators/2026-10-14-generators.tar.gz`

