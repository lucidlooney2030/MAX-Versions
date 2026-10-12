# Current champion — MAX-Versions

**As of 2026-10-11-night (ET): Gen-BX dual-rotor 8-pole / 12-coil R71 THIN-COPPER big ring with bar bearing bridges — physics_scorer MAX tip.**

Path: [`champions/2026-10-11-gen-bx-dual-rotor-8p12c-r71-thincopper/`](champions/2026-10-11-gen-bx-dual-rotor-8p12c-r71-thincopper/)  
Print pack: [`print-packs/gen-bx-dual-rotor-8p12c-r71-thincopper/`](print-packs/gen-bx-dual-rotor-8p12c-r71-thincopper/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-BX beats Gen-BU on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T,
26 AWG @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-BU):

| Metric @ 200 RPM | Gen-BX (new) | Gen-BU (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R) | **7.304 W** | 6.101 W |
| Voc rms/phase | **12.75 V** | 11.50 V |
| R_phase @20 °C | **16.69 Ω** | 16.25 Ω |
| Turns fit / coil | **410** × 12 coils (fill 0.65) | 446 × 12 coils (fill 0.65) |
| Bz peak / mean window | **0.583 / 0.158 T** | 0.532 / 0.181 T |
| Topology | dual_rotor **8p/12c**, poles R71, bobbins r53–88 × 6.75 mm copper, no Ø5, 2× Ø168 × 4.76 mm steel | dual_rotor 8p/12c, R66, r52–82 × 8.1 mm copper, no Ø5, 2× Ø158 × 4.76 mm steel |
| Magnet face gap (m2m) | **9.35 mm** | 10.70 mm |
| Copper | 374 m | 364 m |
| Air-core what-if (no `--back-iron`) | **3.340 W** | 2.808 W |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **+19.7 %** (×1.197) in the `--back-iron` mode and +18.9 % air-core.

## What changed

Gap reduction paid for by a bigger ring. Copper height cut from 8.1 to 6.75 mm (magnet faces 10.70 → 9.35 mm apart, peak Bz at the copper
0.532 → 0.583 T) and the lost window area won back radially: poles moved out to R71, bobbins stretched to r53–88 mm
(14.9 mm build, 15 layers, 410 t). The 2026-10-11 scans showed thin copper pays much less on the R66 rotors (6.66 W, see Gen-BY)
and that the frontier keeps rising with size (Ø198 stator 7.47 W, Ø202 7.71 W scan) — but Ø198+ no longer packs on one 410 mm plate
(trial kits built and packed), so R71 / Ø194 stator is the largest one-plate machine. One-plate 408.0 × 408.0 mm measured from the STL (min 2.0 mm between parts).
Fill 0.60 what-if 6.731 W. Clocking 0°, D-flat + notch, flip-symmetric holes, magnet→wound envelope 0.50 mm.
Frame rods moved out to R91.5 (≥1.0 mm web to the long bobbin bays). New Ø168 × 4.76 mm steel (DXF in the pack);
steel_flux.py: ≈1.47 T worst-case band / 0.41 T spread. Diametric Ø5 still lower 8p/12c (all 48 spare).

Night scorecard: [`WOUND_ENVELOPE_2026-10-11.md`](WOUND_ENVELOPE_2026-10-11.md) (= SCORECARD).

## Runners (same night, also PASS — both also beat Gen-BU)

- Gen-BZ R71 min-gap wire-saver (Gen-BX rotors/steel, 5.4 mm copper, m2m 8.0 mm) — `champions/runners-2026-10-11/gen-bz-dual-rotor-8p12c-r71-lowgap-wiresaver/` (**6.902 W**, 11.09 V rms/ph, 13.36 Ω, 328 t, only 300 m wire; air-core 3.183 W)
- Gen-BY Gen-BU rotor retrofit (keeps the R66 rotors + Ø158 steel; new r48–84 × 7.2 mm stator) — `champions/runners-2026-10-11/gen-by-dual-rotor-8p12c-bu-retrofit-r66/` (**6.658 W**, 12.23 V rms/ph, 16.84 Ω, 410 t, 377 m; air-core 3.058 W)

## Assembly warnings

- **Clap hazard** (steel-backed N52 across a 9.35 mm gap — smaller than Gen-BU's, so the pull is stronger; Ø168 rotors): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face.
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first).
- Brim on 0.8 mm flanges / 1.2 mm stator webs.
- Wind bobbins before assembly, dense and layer-by-layer (31.2 m per coil, 12 coils); do not raise turns. 374 m of a ~390 m spool.
- No printed feet: cradle the stator rim or bolt long frame rods to a base; the bridges carry only shaft loads.

## Prior champion

Gen-BU dual-rotor 8p/12c big ring R66 — `champions/2026-10-10-gen-bu-dual-rotor-8p12c-r66-bigring/` (6.101 W). Superseded by Gen-BX 7.304 W.
Gen-BR dual-rotor Gen-BO rotor retrofit, tight Ø5 map — `champions/2026-10-09-gen-br-dual-rotor-bo-retrofit-tight-o5/` (5.507 W). Superseded by Gen-BU 6.101 W.
Gen-BO dual-rotor flush-seat 6-coil wide-lip — `champions/2026-10-07-gen-bo-dual-rotor-flushseat-6coil-widelip/` (5.497 W). Superseded by Gen-BR 5.507 W.
Gen-BL dual-rotor steel-seat 6-coil dense-wind — `champions/2026-10-06-gen-bl-dual-rotor-steelseat-6coil-densewind/` (5.299 W). Superseded by Gen-BO 5.497 W.
Gen-BF dual-rotor steel-seat 6-coil tall-copper — `champions/2026-10-04-gen-bf-dual-rotor-steelseat-6coil-tallcopper/` (4.380 W). Superseded by Gen-BL 5.299 W.
Gen-BE dual-rotor backiron 9-coil mega — `champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/` (1.684 W). Superseded by Gen-BF 4.380 W.
Corrected Gen-BA mid-rotor (0.615 W) remains the air-core mid baseline in the generators workspace `2026-10-02-fixed/`.
