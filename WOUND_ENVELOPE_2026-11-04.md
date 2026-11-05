# 2026-11-04 nightly — physics_scorer ranking (Gen-EB / Gen-EC / Gen-ED)

Scorer: `/workspace/generators/tools/physics_scorer/score_kit score <kit> --out <kit> --back-iron` (all kits ship mild-steel back-iron discs, so the headline is the `--back-iron` number = the scorer's **optimistic image-method upper bound**; the air-core number without `--back-iron` is next to it and in each kit's `aircore_score/`).
`score_kit sanity` (run at 9:08 PM ET before scoring and again at 9:52 PM ET before the docs; both PASS): single O20x5 N52 (Br 1.43 T) on-axis surface Bz: magpylib 0.3198 T, analytic 0.3198 T, expected ~0.32 T -> PASS

### Scorer validation (2026-11-04 night)

- `score_kit sanity` at 9:08 PM ET (before any scoring): single Ø20×5 N52 on-axis surface Bz = 0.3198 T magpylib vs 0.3198 T analytic (expected ≈0.32 T) → **PASS**.
- Champion regression: Gen-DZ (2026-11-02 champion) re-scored tonight from its kit folder with `--back-iron` at the official grid: **102.730 W**, 38.70 V rms/ph, 10.9 Ω/ph, 156/156 turns, Bz 0.631 / 0.178 T, PASS — identical to the pushed number. Scorer unchanged.
- Grid note (from 2026-11-02): the official grid is good to about ±2 %; ranking gaps below ~2 % are noise.


Champion to beat: **Gen-DZ** (`/workspace/generators/2026-11-02/gen-dz-dual-rotor-8p12c-r300-pedestal-frame-6seg-stator-24awg`) **102.730 W** matched-load @ 200 RPM with `--back-iron` (air-core 48.920 W).

## Ranking (PASS kits by matched-load W @ 200 RPM, `--back-iron`)

| Rank | Kit | P matched (steel) | P air-core | Voc rms/ph | R Ω/ph | Turns/coil | Bz pk/mean T | Coils/poles | Wire m | Steel | Plate mm | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Gen-EB** `gen-eb-dual-rotor-8p12c-r360-inline-o5-pole-pedestal-6seg-24awg` | **118.064 W** | 54.906 W | 41.44 | 10.91 | 133 | 0.630/0.161 | 12c/8p | 389 | 2× Ø792 × 4.76 mm (3/16") mild-steel discs | 10 plates (6-seg split stator) 398.0×401.0 + 398.0×401.0 + 398.0×401.0 + 394.8×316.2 + 391.7×397.6 + 394.8×316.2 + 344.9×401.0 + 344.9×385.0 + 344.9×385.0 + 344.9×385.0 + one-plate rotor-carrier module | PASS / geom PASS |
| 2 | **Gen-ED** `gen-ed-fill060-scramble-wind-6seg-stator-for-gen-eb-rotors-24awg` | **113.273 W** | 51.942 W | 40.58 | 10.90 | 132 | 0.630/0.144 | 12c/8p | 388 | 2× Ø792 × 4.76 mm (3/16") mild-steel discs | 10 plates (6-seg split stator) 398.0×401.0 + 398.0×401.0 + 398.0×401.0 + 396.2×397.6 + 391.7×401.0 + 396.2×397.6 + 344.9×401.0 + 344.9×385.0 + 344.9×385.0 + 344.9×385.0 + one-plate rotor-carrier module | PASS / geom PASS |
| 3 | **Gen-EC** `gen-ec-dual-rotor-8p12c-r340-inline-o5-pole-pedestal-6seg-24awg` | **112.459 W** | 52.402 W | 40.40 | 10.88 | 132 | 0.630/0.150 | 12c/8p | 388 | 2× Ø752 × 4.76 mm (3/16") mild-steel discs | 9 plates (6-seg split stator) 386.9×401.0 + 386.9×401.0 + 386.9×401.0 + 390.9×374.7 + 390.9×374.7 + 390.9×374.7 + 396.2×389.5 + 396.2×389.5 + 233.0×256.0 + one-plate rotor-carrier module | PASS / geom PASS |

## Design ideas

- **Gen-EB**: New pole layout: the 3 Ø5 per pole move from beside the N52 bar onto the pole axis (2 beyond the N42 block, 1 inside the bar's inner end), turning each pole into one ≈111 mm long, 20 mm wide radial strip; with the pole at R360 (the largest size whose 60° stator segment still fits the 410 mm bed one per plate) and ≈28 mm-chord bobbins r284–394, the sharper, longer flux pulse plus higher surface speed beat Gen-DZ on the same 390 m spool.
- **Gen-ED**: Same rotors, steel and pedestal frame as Gen-EB, with a 6-segment stator whose bobbins are sized for the fill a hand/scramble wind really reaches (0.60, not the 0.65 cap); scored honestly at fill 0.60 — the no-jig build of Gen-EB (swap stators only).
- **Gen-EC**: The same in-line Ø5 pole one size down at R340 (Ø752 steel, ≈16.6 kg per disc instead of ≈18.4 kg for Gen-EB): less steel, a smaller base board and stator, still above Gen-DZ.

## Ø5×5 usage (tonight: AXIAL pole extenders — counted for axial OR diametric Ø5, see each README)

- Gen-EB: 48 O5x5 used as AXIAL POLE EXTENDERS IN LINE with the pole, 3 per pole per rotor (2 on the pole axis just outside the N42 block at R384.25 and R390.4 + 1 on the pole axis just inside the N52 bar's inner end at R285.75), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score (no-Ø5 what-if reported).
- Gen-ED: 48 O5x5 used as AXIAL POLE EXTENDERS IN LINE with the pole, 3 per pole per rotor (2 on the pole axis just outside the N42 block at R384.25 and R390.4 + 1 on the pole axis just inside the N52 bar's inner end at R285.75), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score (no-Ø5 what-if reported).
- Gen-EC: 48 O5x5 used as AXIAL POLE EXTENDERS IN LINE with the pole, 3 per pole per rotor (2 on the pole axis just outside the N42 block at R364.25 and R370.4 + 1 on the pole axis just inside the N52 bar's inner end at R265.75), same polarity as the pole — NOT Halbach assists (no inter-pole Ø5). AXIAL O5: stand upright. DIAMETRIC O5: lay on its side (axis tangential) with the pole-letter side up — both fit the 5.3 mm square pocket; the scorer counts them either way (upright scored, lying what-if reported). If your Ø5 are neither axial nor diametric (unknown magnetisation), leave them out and expect a lower score (no-Ø5 what-if reported).

## Fill dependence (scorer what-ifs, same windows)

- Gen-EB: 118.064 W at fill 0.65 vs 109.105 W if only fill 0.60 is reached (`--fill 0.60`)
- Gen-ED: scored at fill 0.60 (headline, realistic hand wind) = 113.273 W; `--fill 0.65` what-if on the same window = 115.813 W (same turns — the spool, not the window, is the limit)
- Gen-EC: 112.459 W at fill 0.65 vs 103.914 W if only fill 0.60 is reached (`--fill 0.60`)

### Why tonight's kits look the way they do

**Main idea — the IN-LINE Ø5 pole.** Since 2026-11-01 each pole has been: N52 60×10×3 bar RADIAL inside the Ø20, N42 block outside, and the 3 Ø5 as a pair FLANKING the bar + 1 beyond the block ("BF"). Tonight the three Ø5 were moved onto the pole axis so the pole becomes one straight, narrow radial strip. Variants scanned (same coil chord ≈26 mm at the bobbin inner radius, bobbins re-sized radially to cover the longer pole):

| Pole variant (scan) | R300 | R340 | R360 |
|---|---|---|---|
| BF — Gen-DZ pole (pair flanking the bar + 1 beyond block) | **101.6 W** (c26) | 111.8 W (c26) | 114.2 W (c26) |
| BLO — 3 Ø5 in line beyond the block | 97.5 W | 112.2 W | 108.7 W (c24) |
| BLI — 1 beyond block + 2 in line inside the bar | 96.2 W | 114.7 W | 109.3 W (c24) |
| **BL2 — 2 in line beyond the block + 1 inside the bar** | 98.9 W | 115.4 W (c26) / **118.3 W (c28)** | 116.8 W (c26) / **120.7 W (c28)** |

So at the Gen-DZ radius the in-line pole LOSES (the extra coil length costs turns from the fixed 390 m spool), but from R340 up — where the flux pulse per pole pass is shortest — the longer, narrower pole wins by ≈3–6 % over the bar-flank pole at the same radius. Chord scan for BL2 (c = copper chord at the bobbin inner radius): R360 c27 119.1 / c28 120.7 / c29 120.0 / c30 118.9 / c32 100.9 W; R340 c27 118.2 / c28 118.3 / c29 110.4 / c30 101.4 W → **c28 for Gen-EB and Gen-EC**. Fill 0.60 at R360: c26 109.4 / c28 116.0 / **c30 118.8** / c32 100.7 W → **Gen-ED uses c30**. (The steep drop above c29–30 is real: the wire budget then forces a thinner radial build, b ≈ 10.6 mm.)

**Radius.** At 200 RPM power rises with pole radius (surface speed) while each bobbin keeps a fixed chord in mm, so the 390 m spool still gives ≈10.9 Ω. **R360 is the largest pole radius whose 60° stator segment still fits the 410 mm bed** (segment bbox 358.2 mm square; one segment per plate); the steel disc is then Ø792 × 4.76 mm (≈18.4 kg each) — the honest cost of the gain. R340 (Gen-EC, Ø752 steel, ≈16.6 kg each) gives almost the same scan number with less steel.

**What did not change:** 8 poles / 12 coils per stator (only 16 Ø20 → 8 poles per rotor), 24 AWG (fixed wire length: the thicker wire always wins on P ∝ L·A/MLT²), 4.4 mm copper / 7.00 mm magnet-face gap, fill cap 0.65, clocking 0° (N faces S), pedestal frame, half-lap 6-segment split stator, 8 bolt-on arcs per rotor.


### Official vs scan, and an electrical note

- Scan (q.py) vs official `score_kit` at the same grid: Gen-EB 120.7 → **118.064 W**, Gen-EC 118.3 → **112.459 W**, Gen-ED 118.8 → **113.273 W**. The scan's chord optimum is grid-sensitive (±5 % between neighbouring chords); only the official numbers are ranked.
- The in-line pole makes the EMF a sharp pulse: open-circuit phase PEAK ≈146 V (Gen-EB) at 200 RPM although the rms is ≈41 V. Every README now says: leads live while spinning, rectifier diodes ≥400 V (the 60 V Schottkys listed in older kits are not enough for these big machines).

## Champion

**Gen-EB** at **118.064 W** (`--back-iron`, air-core 54.906 W) — BEATS Gen-DZ 102.730 W (1.149×, same scoring mode).

Push: pending (see final report).

Archive: `/workspace/generators/2026-11-04-generators.tar.gz`

