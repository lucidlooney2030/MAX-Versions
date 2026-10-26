# Current champion — MAX-Versions

**As of 2026-10-25-night (ET): Gen-DG dual-rotor 8-pole / 12-coil INVERTED triple pole on an 8-LAYER thin-gap 24 AWG stator — Gen-DD's pole (Ø20×5 N52 disc inside, N42 20×10×5 block outside it, N52 60×10×3 bar outermost, + 48 diametric Ø5 Halbach assists) pushed out to R95, with 8 layers of copper (4.40 mm) instead of 10 (5.5 mm) closing the magnet gap to 7.00 mm and the saved wire spent on wider bobbins r74–134 × 18.6 mm — physics_scorer MAX tip.**

Path: [`champions/2026-10-25-gen-dg-dual-rotor-8p12c-inverted-triple-pole-8-layer-thin-gap-24awg-r95/`](champions/2026-10-25-gen-dg-dual-rotor-8p12c-inverted-triple-pole-8-layer-thin-gap-24awg-r95/)  
Print pack: [`print-packs/gen-dg-dual-rotor-8p12c-inverted-triple-pole-8-layer-thin-gap-24awg-r95/`](print-packs/gen-dg-dual-rotor-8p12c-inverted-triple-pole-8-layer-thin-gap-24awg-r95/) (**two-plate** STL pack + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-DG beats Gen-DD on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T and N52 bars Br 1.43 T as magpylib Cuboids,
**24 AWG** (bare 0.5106 mm, OD 0.55 mm) @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-DD):

| Metric @ 200 RPM | Gen-DG (new) | Gen-DD (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **27.834 W** | 26.632 W |
| Air-core what-if (no `--back-iron`) | **12.220 W** | 11.805 W |
| Voc rms/phase | **20.14 V** | 19.70 V |
| R_phase @20 °C | **10.93 Ω** | 10.92 Ω |
| Wire | **24 AWG, 389.6 m** (≈ the whole 390 m spool) | 24 AWG, 389.3 m |
| Turns fit / coil | **223** × 12 coils (fill 0.65, 8 layers) | 240 × 12 (10 layers) |
| Bz peak / mean window | **0.640 / 0.176 T** | 0.599 / 0.187 T |
| Magnets | 16× Ø20×5 N52 + 16× N42 20×10×5 + 16× N52 60×10×3 bars + 48× diametric Ø5×5 (4 blocks + 4 bars spare) | same set |
| Topology | Ø20 @R95, N42 @R110.6 (keyhole), N52 bar @R121.2 (60 mm tangential, 3.05 mm blind pocket), Ø5 @R96.6/102.8/109; bobbins **r74–134** × **4.40 mm copper** × **18.6** mm build; 8 arcs/rotor + D-flat hub; open-centre stator Ø286; 2× **Ø264** × 4.76 mm steel | Ø20 @R86 …, bobbins r68–122.25 × 5.5 × 16.0, Ø247 steel |
| Magnet face gap (m2m) | **7.00 mm** | 8.10 mm |
| Print plates (measured STL bbox) | **TWO**: 359.0 × 329.0 (stator + hubs + frame) + 363.9 × 399.7 mm (16 arcs + 12 lids) | TWO: 403.2 × 402.9 + 387.3 × 387.0 |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.045** in the `--back-iron` mode and ×1.035 air-core.
What-ifs (same kit): Ø5 left out / axial Ø5 (`--halbach none`) 26.766 W; looser fill 0.60 wind (fewer turns fit) 25.680 W; hot copper 60 °C 24.05 W.
At 200 RPM a matched load draws 0.92 A/phase, above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥29.4 Ω/phase load (arithmetic from the scored 20.14 V / 10.93 Ω: 0.5 A → ≈22.0 W).

## What changed

Scans d1–d6 (619 combos, 2026-10-25) held the copper at a FULL 390 m spool for every candidate (radial build = the largest that keeps the scorer's wire ≤ 389.6 m) and varied the
**copper height**: 12/11/10/9/8 layers. Thicker copper loses (the magnet gap grows faster than turns help); **thinner copper wins once the coil moves outward**: 9 layers peaks ≈27.4 W, **8 layers ≈28.0 W** (scan grid),
7 layers falls back to ≈26.9 W. Gen-DG = 8 layers, gap 7.00 mm (same 0.5 mm run clearance and 0.8 mm flanges — only the copper is thinner), pole at R95, bobbins r74–134 × 18.6 mm (223 t).
New larger steel (**Ø264**) — the Ø247 Gen-DD discs do not fit. steel_flux.py: worst case ≈1.42 T in a one-pole band at 4.76 mm (≈0.37 T spread) — keep ≥4.76 mm.
Dead ends tonight (scored, not built): 10-pole rotors without the Ø20 discs (all 20 blocks + 20 bars) ≤12.8 W; Gen-DD rotors on the Gen-DG stator 19.6 W; 11/12-layer copper at a full spool 25.4/24.2 W.

**Honesty notes.** Scorer unchanged tonight; `score_kit sanity` PASS (0.3198 T, 9:06 PM and 9:50 PM ET) and Gen-DD re-scores unchanged (26.632 W).
The SCORE.md header sentence still prints "26 AWG" (fixed text); the Wire row shows the 24 AWG values used.
**Wire is tight:** 389.6 m incl. 0.15 m leads per coil — measure/weigh your spool first; if it is short, wind fewer turns on all 12 coils equally (never more) or build Gen-DH (387.6 m).
**8 layers in 4.40 mm** must be wound dense and layer-by-layer (fill 0.65); if only fill 0.60 is reached the kit scores 25.680 W.
**This champion needs two print plates** (18 one-plate packer variants with the Ø286 stator: NO ROOM).

Night scorecard: [`WOUND_ENVELOPE_2026-10-25.md`](WOUND_ENVELOPE_2026-10-25.md) (= SCORECARD).

## Runners (same night, also PASS, both also above Gen-DD)

- Gen-DI — **rotor-swap module for the Gen-DG stator**: block-inside order (N42 @R90.4 + Ø20 @R106 + N52 bar @R121.6) on the identical Gen-DG stator/frame/7.00 mm sleeve, Ø264 steel with R106 clamp holes — `champions/runners-2026-10-25/gen-di-dual-rotor-8p12c-block-inside-rotor-swap-for-gen-dg-r106/` (**27.093 W**, 19.87 V rms/ph, 10.93 Ω, 223 t, 389.6 m; air-core 11.870 W; Gen-DG owner prints the arcs from plate 2 only, 396.6 × 389.6 mm).
- Gen-DH — **Gen-DD stator upgrade (one plate)**: keeps both finished Gen-DD rotors (arcs, magnets, hubs, Ø247 steel) and the Gen-DD frame; new 9-layer stator r67–124 × 4.95 mm copper × 18.0 mm + a 7.55 mm gap sleeve — `champions/runners-2026-10-25/gen-dh-dual-rotor-8p12c-gen-dd-rotor-reuse-9-layer-stator-upgrade-r86/` (**26.999 W**, 19.79 V rms/ph, 10.88 Ω, 243 t, 387.6 m; air-core 12.032 W; **one plate** 399.0 × 372.3 mm).

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks + N52 bars across only a **7.00 mm** gap, Ø264 rotors — the strongest pull so far): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face. Seat ONE magnet at a time and let its epoxy grab; disc, block and bar of a pole repel each other inside the merged pocket and the block/bar try to flip — hold them flat with a non-magnetic stick until set. Keep the two rotors > 30 cm apart until the jack-rod step. Eye protection.
- Bars must be magnetised through the 3 mm thickness and blocks through 5 mm — check before gluing. Diametric Ø5: mark N first, set to the engraved arrow with a non-magnetic pick, epoxy; leave them out if yours are axial (26.766 W).
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first; 0.50 mm wound-envelope clearance has no extra margin).
- Brim on 0.8 mm flanges / 1.2 mm stator webs / annular stator inner rim.
- Wind bobbins before assembly, dense and layer-by-layer (8 layers of 24 AWG in 4.40 mm); do not raise turns (223). Bases print in place — wind, then drop them into the stator bays. Use the NEW 7.00 mm gap sleeve.

## Prior champion

Gen-DD dual-rotor 8p/12c inverted triple pole wide stator 24 AWG R86 — `champions/2026-10-24-gen-dd-dual-rotor-8p12c-inverted-triple-pole-wide-stator-24awg-r86/` (26.632 W). Superseded by Gen-DG 27.834 W.
