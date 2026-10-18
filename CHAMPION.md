# Current champion — MAX-Versions

**As of 2026-10-17-night (ET): Gen-CJ dual-rotor 8-pole / 12-coil, RADIAL N42-block hybrid poles + diametric Ø5 Halbach (segmented magnet arcs + annular stator) — physics_scorer MAX tip.**

Path: [`champions/2026-10-17-gen-cj-dual-rotor-8p12c-radial-block-halbach-r86/`](champions/2026-10-17-gen-cj-dual-rotor-8p12c-radial-block-halbach-r86/)  
Print pack: [`print-packs/gen-cj-dual-rotor-8p12c-radial-block-halbach-r86/`](print-packs/gen-cj-dual-rotor-8p12c-radial-block-halbach-r86/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-CJ beats Gen-CD on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, **N42 blocks Br 1.29 T as magpylib Cuboids**,
26 AWG @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-CD):

| Metric @ 200 RPM | Gen-CJ (new) | Gen-CD (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **15.244 W** | 8.555 W |
| Air-core what-if (no `--back-iron`) | **7.586 W** | 3.784 W |
| Voc rms/phase | **18.70 V** | 14.03 V |
| R_phase @20 °C | **17.20 Ω** | 17.25 Ω |
| Turns fit / coil | **266** × 12 coils (fill 0.65) | 370 × 12 coils (fill 0.65) |
| Bz peak / mean window | **0.661 / 0.172 T** | 0.656 / 0.133 T |
| Magnets | 16× Ø20×5 N52 + **16× N42 20×10×5 blocks** + **48× diametric Ø5×5** | 16× Ø20×5 N52 (no Ø5) |
| Topology | dual_rotor 8p/12c, Ø20 @R86 + N42 block @R64.5 (20 mm side radial), bobbins r50–104 × 4.5 mm, 8 bolt-on arcs/rotor + D-flat hub, open-centre stator, bases in place, 2× Ø198 × 4.76 mm steel | dual_rotor 8p/12c, R86, r65–105 × 4.95 mm, same arc-nested architecture, 2× Ø198 × 4.76 mm steel |
| Magnet face gap (m2m) | **7.10 mm** | 7.55 mm |
| Copper | 385 m | 386 m |
| One-plate (measured STL bbox) | 403.7 × 402.2 mm | 403.1 × 403.5 mm |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.782** (+78 %) in the `--back-iron` mode and ×2.005 air-core. What-ifs (same kit): Ø5 left out / axial Ø5 (`--halbach none`) 14.302 W; looser fill 0.60 wind 14.095 W; hot copper 60 °C 13.17 W.
At 200 RPM a matched load draws 0.54 A/phase, just above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥20.2 Ω/phase (≈15.1 W, Ohm's law on the scorer's V and R).

## What changed

Austin's NEW N42 20×10×5 mm blocks extend every pole radially: each pole is the Ø20×5 N52 disc at R86 plus one N42 block (same polarity, axially magnetised through
the 5 mm thickness, 20 mm side RADIAL, r54.5–74.5) right inside it, both sitting on the steel. The bobbins reach in to r50, so each turn links ≈1.6× the magnet area.
Diametric Ø5×5 sit as Halbach columns (3 per gap, R79.8/86/92.2); arc clamp bolts move to ±13° from each pole. Same Ø229 stator OD and Ø198 steel as Gen-CD.
The 2026-10-16 tangential-block variant (Gen-CG, 15.126 W, never shipped) is superseded (+0.8 %). steel_flux.py: worst-case ≈1.13 T at 4.76 mm.
N52 60×10×3 bars are not used (only 10 confirmed; the 8-pole dual rotor needs 16 identical pole pieces).

**Scorer note (cuboid support).** The 2026-10-16 scorer change (optional `block_*` params → magpylib Cuboid, copied by the `--back-iron` image method) was validated on
2026-10-17 before use: `score_kit sanity` PASS (Ø20×5 N52 face 0.3198 T vs analytic 0.3198 T); Gen-CD re-scores unchanged (8.555 W `--back-iron`, 3.784 W air-core);
an independent check of a single N42 20×10×5 block (Br 1.29 T) matches the analytic rectangular-prism on-axis formula exactly (face 0.3638 T, 1 mm 0.3157 T, 5 mm 0.1490 T),
and the scorer's rotated-cuboid path equals a hand-built magpylib Cuboid to 0.0 T at 0/30/90/217.5°. No scorer changes on 2026-10-17. Block grade is conservative (Br 1.29 T, low end of N42).

Night scorecard: [`WOUND_ENVELOPE_2026-10-17.md`](WOUND_ENVELOPE_2026-10-17.md) (= SCORECARD).

## Runners (same night, also PASS)

- Gen-CL — Gen-CJ rotors on a thin-copper (4.0 mm) wire-saver stator, ≈300 m — `champions/runners-2026-10-17/gen-cl-dual-rotor-8p12c-radial-block-wiresaver-300m/` (**13.252 W**, 15.58 V rms/ph, 13.74 Ω, 196 t, 308 m; air-core 6.572 W; plate 403.7 × 402.2 mm). Swaps onto the same rotors.
- Gen-CK — Gen-CD stator/winding kept, new hybrid-block (tangential N42 @R69.5) + diametric Ø5 arcs — `champions/runners-2026-10-17/gen-ck-dual-rotor-8p12c-cd-stator-block-retrofit-r86/` (**12.239 W**, 16.78 V rms/ph, 17.25 Ω, 370 t, 386 m; air-core 5.922 W; plate 402.3 × 399.6 mm). Upgrade path for a built Gen-CD.

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks across a 7.10 mm gap; Ø198 rotors, ≈1.6× Gen-CD's magnet area): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face. Seat ONE magnet at a time and let its epoxy grab; blocks and their disc repel sideways (same polarity) — hold them until set. Keep the two rotors > 30 cm apart until the jack-rod step.
- Diametric Ø5: mark N first, set to the engraved arrow with a non-magnetic pick, epoxy; leave them out if yours are axial (14.302 W).
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first).
- Brim on 0.8 mm flanges / 1.2 mm stator webs / annular stator inner rim.
- Wind bobbins before assembly, dense and layer-by-layer; do not raise turns (266). 385 m of a ~390 m spool. Bases print in place — wind, then drop them into the stator bays.
- No printed feet: cradle the stator rim or bolt long frame rods to a base; the bridges carry only shaft loads.

## Prior champion

Gen-CD dual-rotor 8p/12c R86 frontier tip — `champions/2026-10-14-gen-cd-dual-rotor-8p12c-r86-frontier-tip/` (8.555 W). Superseded by Gen-CJ 15.244 W.

Gen-CA dual-rotor 8p/12c R84 arcs-nested — `champions/2026-10-13-gen-ca-dual-rotor-8p12c-r84-arcs-nested/` (8.492 W). Superseded by Gen-CD 8.555 W.
Gen-BX dual-rotor 8p/12c R71 thin-copper — `champions/2026-10-11-gen-bx-dual-rotor-8p12c-r71-thincopper/` (7.304 W). Superseded by Gen-CA 8.492 W.
Gen-BU dual-rotor 8p/12c big ring R66 — `champions/2026-10-10-gen-bu-dual-rotor-8p12c-r66-bigring/` (6.101 W). Superseded by Gen-BX 7.304 W.
Gen-BR dual-rotor Gen-BO rotor retrofit, tight Ø5 map — `champions/2026-10-09-gen-br-dual-rotor-bo-retrofit-tight-o5/` (5.507 W). Superseded by Gen-BU 6.101 W.
Gen-BO dual-rotor flush-seat 6-coil wide-lip — `champions/2026-10-07-gen-bo-dual-rotor-flushseat-6coil-widelip/` (5.497 W). Superseded by Gen-BR 5.507 W.
Gen-BL dual-rotor steel-seat 6-coil dense-wind — `champions/2026-10-06-gen-bl-dual-rotor-steelseat-6coil-densewind/` (5.299 W). Superseded by Gen-BO 5.497 W.
Gen-BF dual-rotor steel-seat 6-coil tall-copper — `champions/2026-10-04-gen-bf-dual-rotor-steelseat-6coil-tallcopper/` (4.380 W). Superseded by Gen-BL 5.299 W.
Gen-BE dual-rotor backiron 9-coil mega — `champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/` (1.684 W). Superseded by Gen-BF 4.380 W.
Corrected Gen-BA mid-rotor (0.615 W) remains the air-core mid baseline in the generators workspace `2026-10-02-fixed/`.
