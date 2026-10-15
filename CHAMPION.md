# Current champion — MAX-Versions

**As of 2026-10-13-night (ET, rescued 2026-10-14): Gen-CA dual-rotor 8-pole / 12-coil R84 segmented magnet arcs + annular stator (nested one-plate) — physics_scorer MAX tip.**

Path: [`champions/2026-10-13-gen-ca-dual-rotor-8p12c-r84-arcs-nested/`](champions/2026-10-13-gen-ca-dual-rotor-8p12c-r84-arcs-nested/)  
Print pack: [`print-packs/gen-ca-dual-rotor-8p12c-r84-arcs-nested/`](print-packs/gen-ca-dual-rotor-8p12c-r84-arcs-nested/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-CA beats Gen-BX on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T,
26 AWG @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-BX):

| Metric @ 200 RPM | Gen-CA (new) | Gen-BX (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R) | **8.492 W** | 7.304 W |
| Voc rms/phase | **13.88 V** | 12.75 V |
| R_phase @20 °C | **17.02 Ω** | 16.69 Ω |
| Turns fit / coil | **366** × 12 coils (fill 0.65) | 410 × 12 coils (fill 0.65) |
| Bz peak / mean window | **0.657 / 0.135 T** | 0.583 / 0.158 T |
| Topology | dual_rotor **8p/12c**, poles R84, bobbins r64–104 × 4.95 mm copper, 8 bolt-on arcs/rotor + D-flat hub, open-centre stator, bases in place, no Ø5, 2× Ø194 × 4.76 mm steel | dual_rotor 8p/12c, R71, r53–88 × 6.75 mm copper, one-piece carriers, no Ø5, 2× Ø168 × 4.76 mm steel |
| Magnet face gap (m2m) | **7.55 mm** | 9.35 mm |
| Copper | 381 m | 374 m |
| Air-core what-if (no `--back-iron`) | **3.771 W** | 3.340 W |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **+16.3 %** (×1.163) in the `--back-iron` mode and +12.9 % air-core.

## What changed

Size past the old one-piece Ø194 plate limit. Thin copper (4.95 mm, 11 layers) + bigger ring (R84) raises peak Bz at the copper 0.583 → 0.657 T and magnet faces
9.35 → 7.55 mm apart; wire still fits (381 m ≤ 386 m). The plate fits because: (1) steel discs are the structural rotors and PLA magnet carriers are **8 bolt-on arcs per rotor**
plus a separate D-flat hub; (2) the stator centre is opened (frame rods outside the rotor); (3) the 12 bobbin bases print in place inside their stator bays (0.35 mm gap);
(4) true-silhouette packer. One-plate **402.6 × 403.6 mm** measured from the STL. Fill 0.60 what-if 7.837 W (FAIL turns-fit vs claimed — dense wind required).
Clocking 0°, D-flat + notch, flip-symmetric holes, magnet→wound envelope 0.50 mm. New Ø194 × 4.76 mm steel (DXF in the pack);
steel_flux.py: ≈1.49 T worst-case band / 0.35 T spread. Diametric Ø5 still lower 8p/12c (all 48 spare).

Night scorecard: [`WOUND_ENVELOPE_2026-10-13.md`](WOUND_ENVELOPE_2026-10-13.md) (= SCORECARD).

## Runners (same night, also PASS — both also beat Gen-BX)

- Gen-CB Gen-CA rotors / MIN-GAP wire-saver stator (≈300 m) — `champions/runners-2026-10-13/gen-cb-dual-rotor-8p12c-r84-wiresaver-298m/` (**7.495 W**, 11.52 V rms/ph, 13.29 Ω, 292 t, only 298 m wire; air-core 3.353 W; plate 403.6 × 391.4 mm)
- Gen-CC Gen-BX rotor retrofit (keeps R71 rotors + Ø168 steel; new r52–90 × 6.3 mm annular stator) — `champions/runners-2026-10-13/gen-cc-dual-rotor-8p12c-bx-retrofit-r71/` (**7.404 W**, 12.94 V rms/ph, 16.97 Ω, 391 t, 380 m; air-core 3.374 W; plate 408.0 × 408.0 mm)

## Assembly warnings

- **Clap hazard** (steel-backed N52 across a 7.55 mm gap — smaller than Gen-BX's, so the pull is stronger; Ø194 rotors): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face.
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first).
- Brim on 0.8 mm flanges / 1.2 mm stator webs / annular stator inner rim.
- Wind bobbins before assembly, dense and layer-by-layer (31.8 m per coil, 12 coils); do not raise turns. 381 m of a ~390 m spool. Bases print in place — wind the bobbins, then drop them into the stator bays.
- Bolt each magnet arc to the steel with countersunk M3 at the joints; hub D-flat / notch / steel notch all at +X.
- No printed feet: cradle the stator rim or bolt long frame rods to a base; the bridges carry only shaft loads.

## Prior champion

Gen-BX dual-rotor 8p/12c R71 thin-copper — `champions/2026-10-11-gen-bx-dual-rotor-8p12c-r71-thincopper/` (7.304 W). Superseded by Gen-CA 8.492 W.
Gen-BU dual-rotor 8p/12c big ring R66 — `champions/2026-10-10-gen-bu-dual-rotor-8p12c-r66-bigring/` (6.101 W). Superseded by Gen-BX 7.304 W.
Gen-BR dual-rotor Gen-BO rotor retrofit, tight Ø5 map — `champions/2026-10-09-gen-br-dual-rotor-bo-retrofit-tight-o5/` (5.507 W). Superseded by Gen-BU 6.101 W.
Gen-BO dual-rotor flush-seat 6-coil wide-lip — `champions/2026-10-07-gen-bo-dual-rotor-flushseat-6coil-widelip/` (5.497 W). Superseded by Gen-BR 5.507 W.
Gen-BL dual-rotor steel-seat 6-coil dense-wind — `champions/2026-10-06-gen-bl-dual-rotor-steelseat-6coil-densewind/` (5.299 W). Superseded by Gen-BO 5.497 W.
Gen-BF dual-rotor steel-seat 6-coil tall-copper — `champions/2026-10-04-gen-bf-dual-rotor-steelseat-6coil-tallcopper/` (4.380 W). Superseded by Gen-BL 5.299 W.
Gen-BE dual-rotor backiron 9-coil mega — `champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/` (1.684 W). Superseded by Gen-BF 4.380 W.
Corrected Gen-BA mid-rotor (0.615 W) remains the air-core mid baseline in the generators workspace `2026-10-02-fixed/`.
