# Current champion — MAX-Versions

**As of 2026-10-10-night (ET): Gen-BU dual-rotor 8-pole / 12-coil BIG RING (R66) with bar bearing bridges — physics_scorer MAX tip.**

Path: [`champions/2026-10-10-gen-bu-dual-rotor-8p12c-r66-bigring/`](champions/2026-10-10-gen-bu-dual-rotor-8p12c-r66-bigring/)  
Print pack: [`print-packs/gen-bu-dual-rotor-8p12c-r66-bigring/`](print-packs/gen-bu-dual-rotor-8p12c-r66-bigring/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-BU beats Gen-BR on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T,
26 AWG @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-BR):

| Metric @ 200 RPM | Gen-BU (new) | Gen-BR (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R) | **6.101 W** | 5.507 W |
| Voc rms/phase | **11.50 V** | 11.01 V |
| R_phase @20 °C | **16.25 Ω** | 16.51 Ω |
| Turns fit / coil | **446** × 12 coils (fill 0.65) | 595 × 6 coils (fill 0.65) |
| Bz peak / mean window | **0.532 / 0.181 T** | 0.540 / 0.104 T |
| Topology | dual_rotor **8p/12c**, poles R66, no Ø5, 2× Ø158 × 4.76 mm steel | dual_rotor 8p/6c, R50, 48 diametric Ø5, 2× Ø134 × 4.76 mm steel |
| Copper | 364 m | 370 m |
| Air-core what-if (no `--back-iron`) | **2.808 W** | 2.727 W |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **+10.8 %** (×1.108) in the `--back-iron` mode and +3.0 % air-core — the first real step since the 8p/6c family saturated.

## What changed

A different topology, not a re-tweak: twelve narrow 26.4° windable bobbins (r 52–82 mm, 13.5 mm build, 8.1 mm copper, 446 t) under
8 poles per rotor pushed out to R66 (each coil spans 120° electrical). 8p/12c had been written off at 3.2 W because it was only scanned
on the R50 ring; on 2026-10-10 it climbed steadily with ring radius (R50 3.39 → R57 4.58 → R59.5 5.18 → R66 6.08 W scan). Diametric
Ø5 assists *lower* this layout in the scorer (5.705 vs 6.081 W in the scan), so none are fitted — all 48 Ø5 are spare.
A ring this big no longer fits one 410 mm plate with disc endbells, so the endbells became two crossed 44 mm **bar bearing bridges**
(608 boss, rods at 45/225° and 135/315°): one-plate 408.0 × 408.0 mm measured from the STL. Fill 0.60 what-if 5.632 W.
Clocking 0°, D-flat + notch, flip-symmetric holes, magnet→wound envelope 0.50 mm. New Ø158 × 4.76 mm steel (DXF in the pack);
steel_flux.py: ≈1.46 T worst-case band / 0.44 T spread.

Night scorecard: [`WOUND_ENVELOPE_2026-10-10.md`](WOUND_ENVELOPE_2026-10-10.md) (= SCORECARD).

## Runners (same night, also PASS — new topologies, both well below Gen-BR)

- Gen-BV 6-pole / 9-coil R57 — `champions/runners-2026-10-10/gen-bv-dual-rotor-6p9c-r57/` (**3.395 W**, 8.52 V rms/ph, air-core 1.530 W; 12 of 16 Ø20, no Ø5, 359 m, Ø142 steel)
- Gen-BW 4-pole STACKED 10 mm poles / 6-coil — `champions/runners-2026-10-10/gen-bw-dual-rotor-4p-stacked10-6c/` (**2.471 W**, 7.32 V rms/ph, air-core 1.404 W; all 16 Ø20 as 8 stacks, Ø134 × 6.35 mm steel)

## Assembly warnings

- **Clap hazard** (steel-backed N52 across a 10.7 mm gap, bigger Ø158 rotors): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face.
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first).
- Brim on 0.8 mm flanges / 1.2 mm stator webs.
- Wind bobbins before assembly, dense and layer-by-layer (30.3 m per coil, 12 coils); do not raise turns. 364 m of a ~390 m spool.
- No printed feet: cradle the stator rim or bolt long frame rods to a base; the bridges carry only shaft loads.

## Prior champion

Gen-BR dual-rotor Gen-BO rotor retrofit, tight Ø5 map — `champions/2026-10-09-gen-br-dual-rotor-bo-retrofit-tight-o5/` (5.507 W). Superseded by Gen-BU 6.101 W.
Gen-BO dual-rotor flush-seat 6-coil wide-lip — `champions/2026-10-07-gen-bo-dual-rotor-flushseat-6coil-widelip/` (5.497 W). Superseded by Gen-BR 5.507 W.
Gen-BL dual-rotor steel-seat 6-coil dense-wind — `champions/2026-10-06-gen-bl-dual-rotor-steelseat-6coil-densewind/` (5.299 W). Superseded by Gen-BO 5.497 W.
Gen-BF dual-rotor steel-seat 6-coil tall-copper — `champions/2026-10-04-gen-bf-dual-rotor-steelseat-6coil-tallcopper/` (4.380 W). Superseded by Gen-BL 5.299 W.
Gen-BE dual-rotor backiron 9-coil mega — `champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/` (1.684 W). Superseded by Gen-BF 4.380 W.
Corrected Gen-BA mid-rotor (0.615 W) remains the air-core mid baseline in the generators workspace `2026-10-02-fixed/`.
