# 2026-11-02 nightly — physics_scorer ranking (Gen-DZ / Gen-EA / Gen-DY)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (run at 9:11 PM ET 2026-11-02 before scoring; PASS):
single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (2026-11-02 night)

- `score_kit sanity` at 9:11 PM ET (before any scoring): single Ø20×5 N52 on-axis surface Bz = 0.3198 T magpylib vs 0.3198 T analytic (expected ≈0.32 T) → **PASS**.
- Champion regression: Gen-DW (2026-11-01 champion) re-scored tonight from its kit folder with `--back-iron` at the official grid (dr 0.4 mm, dphi 1.0°): **74.327 W**, 32.77 V rms/ph, 10.84 Ω/ph, 152/152 turns, Bz 0.631 / 0.174 T, PASS — identical to the pushed number. Scorer unchanged since last night.
- Grid convergence (design scan, not official): R300 c26 102.57 W @dphi 1.0° → 103.19 W @0.5°; c24 → 100.53 W; Gen-DW 74.02 → 74.31 W. The official grid is good to about ±2 %; ranking gaps below ~2 % are noise.


Champion to beat: **Gen-DW** (`/workspace/generators/2026-11-01/gen-dw-dual-rotor-8p12c-r220-split-stator-bar-flank-o5-24awg`) **74.327 W** matched-load @ 200 RPM with `--back-iron` (air-core 34.901 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-DZ** `gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg` | **102.730 W** | 48.920 W | 38.70 | 10.93 | 156 | 0.631/0.178 | 12c/8p | 390 | 2× Ø660 × 4.76 mm (3/16") mild-steel discs | 6 plates (6-seg split stator) 400.6×386.6 + 400.6×386.6 + 400.6×386.6 + 388.0×398.0 + 384.1×385.1 + 332.0×70.0 + one-plate rotor-carrier module | PASS / geom PASS |
| 2 | **Gen-EA** `gen-ea-fill060-scramble-wind-6seg-stator-for-gen-dz-rotors-24awg` | **99.019 W** | 46.233 W | 37.95 | 10.91 | 155 | 0.631/0.178 | 12c/8p | 389 | 2× Ø660 × 4.76 mm (3/16") mild-steel discs | 6 plates (6-seg split stator) 399.0×386.8 + 399.0×386.8 + 399.0×386.8 + 388.0×398.0 + 384.1×385.1 + 332.0×70.0 + one-plate rotor-carrier module | PASS / geom PASS |
| 3 | **Gen-DY** `gen-dy-dual-rotor-8p12c-r260-pedestal-frame-6seg-stator-24awg` | **89.121 W** | 41.904 W | 35.89 | 10.84 | 152 | 0.631/0.180 | 12c/8p | 386 | 2× Ø580 × 4.76 mm (3/16") mild-steel discs | 6 plates (6-seg split stator) 400.9×361.5 + 400.9×361.5 + 400.9×361.5 + 400.1×399.6 + 400.1×399.6 + 292.0×70.0 + one-plate rotor-carrier module | PASS / geom PASS |

## Design ideas

- **Gen-DZ**: A new frame — shaft vertical, the lower 608 in a pedestal screwed to a base board (rotor weight in pure compression), stator on 6 posts, a 3-arm top spider — replaces the printed bar bridges that cannot carry 10+ kg rotors, so the Gen-DW pole grows from R220 to R300 with a 6-segment split stator; at 200 RPM the larger radius raises surface speed while the bobbins keep a fixed ≈26 mm chord, so the 390 m spool still gives ≈10.9 Ω.
- **Gen-EA**: Same rotors, steel and pedestal frame as Gen-DZ, with a 6-segment stator sized for the fill a hand/scramble wind really reaches (0.60, not the 0.65 cap); scored honestly at fill 0.60 — the no-jig build of Gen-DZ (swap stators only).
- **Gen-DY**: The compact pedestal-frame machine: the same pole at R260 (Ø580 steel, ≈9.9 kg per disc instead of ≈12.8 kg for Gen-DZ) on a 6-segment stator and the new vertical-shaft pedestal frame — less steel and a smaller base board for most of the gain.

## Ø5×5 usage (tonight: AXIAL pole extenders — counted for axial OR diametric Ø5, see each README)

- Gen-DZ: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N52 bar at its centre R259.4 ±8.75 mm + 1 at R324.25 just outside the N42 block), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score.
- Gen-EA: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N52 bar at its centre R259.4 ±8.75 mm + 1 at R324.25 just outside the N42 block), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score.
- Gen-DY: 48 O5x5 used as AXIAL POLE EXTENDERS, 3 per pole per rotor (pair flanking the N52 bar at its centre R219.4 ±8.75 mm + 1 at R284.25 just outside the N42 block), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score.

## Fill dependence (scorer what-ifs, same windows)

- Gen-DZ: 102.730 W at fill 0.65 vs 95.017 W if only fill 0.60 is reached (`--fill 0.60`)
- Gen-EA: scored at fill 0.60 (headline, realistic hand wind) = 99.019 W; `--fill 0.65` what-if on the same window = 105.155 W (same turns — the spool, not the window, is the limit)
- Gen-DY: 89.121 W at fill 0.65 vs 82.490 W if only fill 0.60 is reached (`--fill 0.60`)

### Why tonight's kits look the way they do

**Main idea — the pedestal frame removes the size limit.** The 2026-11-01 kits used printed bearing-bridge bars across a Ø500 rotor; a beam estimate (not a scorer output) showed those bars sag ≈3–13 mm under ≈15 kg of rotors. Tonight the shaft stands vertical: the lower 608 sits in a printed **base pedestal** screwed to a base board (rotor weight in pure compression), the stator stands on **6 posts** (one per 60° segment, printed one 0.4 mm shim short so the gap can be set with shims), and a **3-arm top spider** on 3 standoffs carries the upper 608. Race spacers make the shaft collars bear only on the inner races. With nothing printed spanning the rotor, the machine can grow in radius, and power rises with radius (surface speed) as long as each coil keeps a fixed width in mm.

**Radius scan (fill 0.65, 24 AWG, ≈389 m, Gen-DW radial-strip pole: N52 bar radial inside the Ø20, N42 keyhole block outside, 3 axial/diametric Ø5).** Best per radius at the official grid: R260 c26 **91.75 W**, R280 c22 **97.1 W**, R300 c24 **102.6 W** (c26 101.6, c27 102.4, c28 102.0, c30 97.9). The coarse scan had R300 peaking at 105.1 W; that difference is grid noise. Convergence at dphi 0.5°: R300 c26 103.19 W, c24 100.53 W, so c24 and c26 are tied within noise. **c26 was chosen for Gen-DZ** (156 turns, more stable at the fine grid).

**Fill 0.60 (scramble wind) at R300:** c24 (span_m 45.1, b 14.0) 96.14 W; c22 96.11 W (but only 375.8 m of wire); c26 94.53 W → **Gen-EA uses c24**.

**Why stop at R300:** at R300 the steel disc is already Ø660 × 4.76 mm (≈12.8 kg each), the stator Ø682, and the base board ≥ 742 mm. Each stator segment just fits the bed two-per-plate. Going larger would need a 7–8 segment stator and even heavier, harder-to-source steel, while the fixed 390 m spool means fewer turns per coil.

## Champion

**Gen-DZ** at **102.730 W** (`--back-iron`, air-core 48.920 W) — BEATS Gen-DW 74.327 W (1.382×, same scoring mode).

Push: pending.

Archive: `/workspace/generators/2026-11-02-generators.tar.gz`

