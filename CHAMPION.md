# Current champion — MAX-Versions

**As of 2026-10-24-night (ET): Gen-DD dual-rotor 8-pole / 12-coil INVERTED triple pole on a WIDE outer 24 AWG stator — Gen-DA's pole (Ø20×5 N52 disc inside, N42 20×10×5 block outside it, N52 60×10×3 bar outermost, + 48 diametric Ø5 Halbach assists) pushed out to R86, with the bobbins moved outward to r68–122.25 × 5.5 mm copper × 16.0 mm build — physics_scorer MAX tip.**

Path: [`champions/2026-10-24-gen-dd-dual-rotor-8p12c-inverted-triple-pole-wide-stator-24awg-r86/`](champions/2026-10-24-gen-dd-dual-rotor-8p12c-inverted-triple-pole-wide-stator-24awg-r86/)  
Print pack: [`print-packs/gen-dd-dual-rotor-8p12c-inverted-triple-pole-wide-stator-24awg-r86/`](print-packs/gen-dd-dual-rotor-8p12c-inverted-triple-pole-wide-stator-24awg-r86/) (**two-plate** STL pack + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-DD beats Gen-DA on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T and N52 bars Br 1.43 T as magpylib Cuboids,
**24 AWG** (bare 0.5106 mm, OD 0.55 mm) @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-DA):

| Metric @ 200 RPM | Gen-DD (new) | Gen-DA (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **26.632 W** | 25.809 W |
| Air-core what-if (no `--back-iron`) | **11.805 W** | 11.626 W |
| Voc rms/phase | **19.70 V** | 19.38 V |
| R_phase @20 °C | **10.92 Ω** | 10.92 Ω |
| Wire | **24 AWG, 389.3 m** (≈ the whole 390 m spool) | 24 AWG, 389.0 m |
| Turns fit / coil | **240** × 12 coils (fill 0.65, 10 layers) | 252 × 12 (10 layers) |
| Bz peak / mean window | **0.599 / 0.187 T** | 0.601 / 0.194 T |
| Magnets | 16× Ø20×5 N52 + 16× N42 20×10×5 + 16× N52 60×10×3 bars + 48× diametric Ø5×5 (4 blocks + 4 bars spare) | same set |
| Topology | Ø20 @R86, N42 @R101.6 (keyhole), N52 bar @R112.2 (60 mm tangential, 3.05 mm blind pocket), Ø5 @R87.6/93.8/100; bobbins **r68–122.25** × 5.5 mm copper × **16.0** mm build; 8 arcs/rotor + D-flat hub; open-centre Ø269 stator, bases in place; 2× **Ø247** × 4.76 mm steel | Ø20 @R81 …, bobbins r61–117 × 5.5 × 16.8, Ø236 steel |
| Magnet face gap (m2m) | **8.10 mm** | 8.10 mm |
| Print plates (measured STL bbox) | **TWO**: 403.2 × 402.9 (stator plate) + 387.3 × 387.0 mm (rotor arcs) | TWO: 382.4 × 383.0 + 391.3 × 387.0 |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.032** in the `--back-iron` mode and ×1.015 air-core.
What-ifs (same kit): Ø5 left out / axial Ø5 (`--halbach none`) 25.539 W; looser fill 0.60 wind (fewer turns fit) 24.608 W; hot copper 60 °C 23.01 W.
At 200 RPM a matched load draws 0.90 A/phase, above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥28.5 Ω/phase load (arithmetic from the scored 19.70 V / 10.92 Ω: 0.5 A → ≈21.4 W).

## What changed

Scans c1/c2/c4/c5 (528 combos, 2026-10-24) went past last night's grid edge: with the copper pinned at ≈390 m of 24 AWG, moving the **whole coil outward** (r68–122.25 instead of r61–117)
with a slightly **shorter radial build (16.0 mm, 240 t)** and the pole out to **R86** puts the active coil sides under the faster, larger-radius bar flux and earns more volts per metre of wire.
Same 5.5 mm copper / 8.10 mm gap. New larger steel (**Ø247**) — the Ø236 Gen-DA discs do not fit. steel_flux.py: worst case ≈1.41 T in a one-pole band at 4.76 mm (≈0.39 T spread) — keep ≥4.76 mm.
Dead ends tonight (scored, not built): 6p/9c triple pole ≤12.8 W; Ø5 column moved into the bar gap / spread / inner −0.2…−1 %; 11-layer copper needs 416–431 m (over the spool).

**Honesty notes.** Scorer unchanged tonight; `score_kit sanity` PASS (0.3198 T) and Gen-DA re-scores unchanged (25.809 W).
The SCORE.md header sentence still prints "26 AWG" (fixed text); the Wire row shows the 24 AWG values used.
**Wire is tight:** 389.3 m incl. 0.15 m leads per coil — measure/weigh your spool first; if it is short, wind fewer turns (never more) or build Gen-DE (388.2 m).
**This champion needs two print plates** (one-plate attempts with the stator centred and in a corner with pre-nested arc pairs: NO ROOM).

Night scorecard: [`WOUND_ENVELOPE_2026-10-24.md`](WOUND_ENVELOPE_2026-10-24.md) (= SCORECARD).

## Runners (same night, also PASS)

- Gen-DE — **Gen-DA stator upgrade**: keeps both finished Gen-DA rotors (arcs, magnets, hubs, Ø236 steel) and swaps in a new 24 AWG stator r63–118 × 5.5 × 16.8 mm, same 8.10 mm gap and frame — `champions/runners-2026-10-24/gen-de-dual-rotor-8p12c-gen-da-rotor-reuse-stator-upgrade-r81/` (**25.999 W**, 19.43 V rms/ph, 10.89 Ω, 252 t, 388.2 m; air-core 11.630 W; **one plate** 383.5 × 393.3 mm).
- Gen-DF — **rotor-swap module for the Gen-DD stator**: block-inside order (N42 @R81.4 + Ø20 @R97 + N52 bar @R112.6) on the identical Gen-DD stator/frame, Ø247 steel with R97 clamp holes — `champions/runners-2026-10-24/gen-df-dual-rotor-8p12c-block-inside-triple-pole-rotor-swap-for-gen-dd-r97/` (**25.809 W** = ties Gen-DA, 25.8086 vs 25.8091 W; 19.39 V rms/ph, 10.92 Ω, 240 t, 389.3 m; air-core 11.415 W; Gen-DD owner prints plate 2 only, 395.2 × 392.0 mm).

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks + N52 bars across an 8.10 mm gap, Ø247 rotors — the strongest pull so far): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face. Seat ONE magnet at a time and let its epoxy grab; disc, block and bar of a pole repel each other inside the merged pocket and the block/bar try to flip — hold them flat with a non-magnetic stick until set. Keep the two rotors > 30 cm apart until the jack-rod step. Eye protection.
- Bars must be magnetised through the 3 mm thickness and blocks through 5 mm — check before gluing.
- Diametric Ø5: mark N first, set to the engraved arrow with a non-magnetic pick, epoxy; leave them out if yours are axial (25.539 W).
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first; 0.50 mm wound-envelope clearance has no extra margin).
- Brim on 0.8 mm flanges / 1.2 mm stator webs / annular stator inner rim.
- Wind bobbins before assembly, dense and layer-by-layer (10 layers of 24 AWG in 5.5 mm); do not raise turns (240). Bases print in place — wind, then drop them into the stator bays.

## Prior champion

Gen-DA dual-rotor 8p/12c inverted triple pole thin-gap 24 AWG R81 — `champions/2026-10-23-gen-da-dual-rotor-8p12c-inverted-triple-pole-thin-gap-24awg-r81/` (25.809 W). Superseded by Gen-DD 26.632 W.
