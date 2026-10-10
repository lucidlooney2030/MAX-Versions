# Current champion — MAX-Versions

**As of 2026-10-09-night (ET): Gen-BR dual-rotor Gen-BO rotor retrofit, tightest legal Ø5 map — physics_scorer MAX tip.**

Path: [`champions/2026-10-09-gen-br-dual-rotor-bo-retrofit-tight-o5/`](champions/2026-10-09-gen-br-dual-rotor-bo-retrofit-tight-o5/)  
Print pack: [`print-packs/gen-br-dual-rotor-bo-retrofit-tight-o5/`](print-packs/gen-br-dual-rotor-bo-retrofit-tight-o5/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-BR edges out Gen-BO on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T,
26 AWG @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-BO):

| Metric @ 200 RPM | Gen-BR (new) | Gen-BO (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R) | **5.507 W** | 5.497 W |
| Voc rms/phase | **11.01 V** | 11.00 V |
| R_phase @20 °C | **16.51 Ω** | 16.51 Ω |
| Turns fit / coil | **595** (fill 0.65) | 595 (fill 0.65) |
| Bz peak / mean window | **0.540 / 0.104 T** | 0.540 / 0.104 T |
| Topology | dual_rotor 8p/6c + 2× Ø134 × 4.76 mm steel | same |
| Copper | 370 m | 370 m |
| Air-core what-if (no `--back-iron`) | 2.727 W | 2.713 W |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **+0.2 %** — a hair. The 8p/6c flush-seat family is saturated under the ~370 m wire budget (a 197-row scan tonight found nothing bigger).

## What changed

Only the two rotor carriers: the diametric Ø5 assists move from ±7 mm to **±6.2 mm** around the R50 pole ring (R43.8/50/56.2), the closest
spacing that still leaves a 0.9 mm printed web between Ø5.3 pockets (rule ≥ 0.8). Bobbins, 595 t windings, stator, gap sleeve, endbells,
standoffs and the Ø134 × 4.76 mm steel discs/DXF are identical to Gen-BO — an existing Gen-BO upgrades by printing two rotors.
Ø5 assists: +7.6 % vs none (5.120 W without). Fill 0.60 what-if: 5.088 W. Clocking 0°, D-flat + notch, flip-symmetric holes, windable bobbins,
magnet→wound envelope 0.50 mm, one-plate 407.9 × 408.0 mm.

Night scorecard: [`WOUND_ENVELOPE_2026-10-09.md`](WOUND_ENVELOPE_2026-10-09.md) (= SCORECARD).

## Runners (same night, also PASS)

- Gen-BS compact R48 wire-saver — `champions/runners-2026-10-09/gen-bs-dual-rotor-compact-r48-wiresaver/` (**5.406 W**, 10.71 V rms/ph, air-core 2.708 W; only 356 m copper, 14 m spare on a ~390 m spool; same Ø134 steel)
- Gen-BT 8p/9c smooth-torque R53 — `champions/runners-2026-10-09/gen-bt-dual-rotor-9coil-r53-smooth/` (**4.481 W**, 9.92 V rms/ph, air-core 2.181 W; new Ø140 × 4.76 mm steel)

## Assembly warnings

- **Clap hazard** (steel-backed N52 across a 10.7 mm gap): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face.
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first).
- Brim on 0.8 mm flanges / 1.2 mm stator webs (and the 0.9 mm Ø5 pocket webs on the rotors).
- Ø5 assists must be **diametrically** magnetised, glued tangentially (axial Ø5 are not counted).
- Wind bobbins before assembly, dense and layer-by-layer (61.6 m per coil); do not raise turns. 370 m of a ~390 m spool — very little spare (Gen-BS leaves 14 m).

## Prior champion

Gen-BO dual-rotor flush-seat 6-coil wide-lip — `champions/2026-10-07-gen-bo-dual-rotor-flushseat-6coil-widelip/` (5.497 W). Superseded by Gen-BR 5.507 W.
Gen-BL dual-rotor steel-seat 6-coil dense-wind — `champions/2026-10-06-gen-bl-dual-rotor-steelseat-6coil-densewind/` (5.299 W). Superseded by Gen-BO 5.497 W.
Gen-BF dual-rotor steel-seat 6-coil tall-copper — `champions/2026-10-04-gen-bf-dual-rotor-steelseat-6coil-tallcopper/` (4.380 W). Superseded by Gen-BL 5.299 W.
Gen-BE dual-rotor backiron 9-coil mega — `champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/` (1.684 W). Superseded by Gen-BF 4.380 W.
Corrected Gen-BA mid-rotor (0.615 W) remains the air-core mid baseline in the generators workspace `2026-10-02-fixed/`.
