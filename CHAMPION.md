# Current champion — MAX-Versions

**As of 2026-10-23-night (ET): Gen-DA dual-rotor 8-pole / 12-coil INVERTED triple pole with a THIN-GAP, long-copper 24 AWG stator — Gen-CZ's pole (Ø20×5 N52 disc inside, N42 20×10×5 block outside it, N52 60×10×3 bar outermost, + 48 diametric Ø5 Halbach assists) moved out to R81 on 5.5 mm-tall copper bobbins r61–117 — physics_scorer MAX tip.**

Path: [`champions/2026-10-23-gen-da-dual-rotor-8p12c-inverted-triple-pole-thin-gap-24awg-r81/`](champions/2026-10-23-gen-da-dual-rotor-8p12c-inverted-triple-pole-thin-gap-24awg-r81/)  
Print pack: [`print-packs/gen-da-dual-rotor-8p12c-inverted-triple-pole-thin-gap-24awg-r81/`](print-packs/gen-da-dual-rotor-8p12c-inverted-triple-pole-thin-gap-24awg-r81/) (**two-plate** STL pack + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-DA beats Gen-CZ on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T and N52 bars Br 1.43 T as magpylib Cuboids,
**24 AWG** (bare 0.5106 mm, OD 0.55 mm) @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-CZ):

| Metric @ 200 RPM | Gen-DA (new) | Gen-CZ (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **25.809 W** | 24.262 W |
| Air-core what-if (no `--back-iron`) | **11.626 W** | 10.945 W |
| Voc rms/phase | **19.38 V** | 18.55 V |
| R_phase @20 °C | **10.92 Ω** | 10.64 Ω |
| Wire | **24 AWG, 389 m** (≈ the whole 390 m spool) | 24 AWG, 379 m |
| Turns fit / coil | **252** × 12 coils (fill 0.65, 10 layers) | 250 × 12 (11 layers) |
| Bz peak / mean window | **0.601 / 0.194 T** | 0.580 / 0.201 T |
| Magnets | 16× Ø20×5 N52 + 16× N42 20×10×5 + 16× N52 60×10×3 bars + 48× diametric Ø5×5 (4 blocks + 4 bars spare) | same set |
| Topology | Ø20 @R81, N42 @R96.6 (keyhole), N52 bar @R107.2 (60 mm tangential, 3.05 mm blind pocket), Ø5 @R82.6/88.8/95; bobbins r61–117 × **5.5 mm** copper × 16.8 mm build; 8 arcs/rotor + D-flat hub; open-centre Ø258 stator, bases in place; 2× **Ø236** × 4.76 mm steel | Ø20 @R77 …, bobbins r58–111.5 × 6.1 × 15.0, Ø229 steel |
| Magnet face gap (m2m) | **8.10 mm** | 8.70 mm |
| Print plates (measured STL bbox) | **TWO**: 382.4 × 383.0 (stator plate) + 391.3 × 387.0 mm (rotor arcs) | TWO: 354.3 × 385.6 + 392.6 × 401.0 |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.064** in the `--back-iron` mode and ×1.062 air-core.
What-ifs (same kit): Ø5 left out / axial Ø5 (`--halbach none`) 24.700 W; looser fill 0.60 wind (fewer turns fit) 23.841 W; hot copper 60 °C 22.30 W.
At 200 RPM a matched load draws 0.89 A/phase, above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥27.8 Ω/phase load (arithmetic from the scored 19.38 V / 10.92 Ω: 0.5 A → ≈20.9 W).

## What changed

Scans b1/b5/b7 (390 combos) showed Gen-CZ's stator was the limit, not its rotor (rotor-only retrofits, scan b2, could not beat it): a **thinner copper layer (5.5 mm, gap 8.10 mm)** raises the gap field,
and **longer bobbins (r61–117)** with the pole moved out to R81 put more coil side under the magnets — at the same ≈390 m of 24 AWG. New larger steel (**Ø236**) — the Ø229 Gen-CZ discs do not fit.
steel_flux.py: worst case ≈1.42 T in a one-pole band at 4.76 mm (≈0.41 T spread) — keep ≥4.76 mm.

**Honesty notes.** Scorer unchanged tonight; `score_kit sanity` PASS (0.3198 T) and Gen-CZ re-scores unchanged (24.262 W).
The SCORE.md header sentence still prints "26 AWG" (fixed text); the Wire row shows the 24 AWG values used.
**Wire is tight:** 389.0 m incl. 0.15 m leads per coil — measure/weigh your spool first; if it is short, wind Gen-DB (387.7 m) or wind fewer turns (never more).
**This champion needs two print plates** (one-plate attempts with the stator centred and in a corner and pre-nested arc pairs: NO ROOM for the 16 triple-pole arcs).

Night scorecard: [`WOUND_ENVELOPE_2026-10-23.md`](WOUND_ENVELOPE_2026-10-23.md) (= SCORECARD).

## Runners (same night, also PASS)

- Gen-DB — **Gen-CZ stator upgrade**: keeps both finished Gen-CZ rotors (arcs, magnets, hubs, Ø229 steel) and swaps in a new 24 AWG stator r60–113 × 6.1 × 15.4 mm, same 8.70 mm gap — `champions/runners-2026-10-23/gen-db-dual-rotor-8p12c-gen-cz-rotor-reuse-stator-upgrade-r77/` (**24.839 W**, 18.98 V rms/ph, 10.88 Ω, 257 t, 388 m; air-core 11.098 W; **one plate** 352.7 × 385.9 mm).
- Gen-DC — triple pole in the other order (N42 block inside @R74.4 + Ø20 @R90 + N52 bar @R105.6) on a thin-gap stator r60–115 × 5.8 × 16.0, Ø233 steel — `champions/runners-2026-10-23/gen-dc-dual-rotor-8p12c-triple-pole-thin-gap-24awg-r90/` (**24.619 W**, 18.94 V rms/ph, 10.93 Ω, 253 t, 389 m; air-core 11.036 W; two plates 372.7 × 360.7 + 273.5 × 395.0 mm).

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks + N52 bars across an 8.10 mm gap, Ø236 rotors — the strongest pull so far): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face. Seat ONE magnet at a time and let its epoxy grab; disc, block and bar of a pole repel each other inside the merged pocket and the block/bar try to flip — hold them flat with a non-magnetic stick until set. Keep the two rotors > 30 cm apart until the jack-rod step. Eye protection.
- Bars must be magnetised through the 3 mm thickness and blocks through 5 mm — check before gluing.
- Diametric Ø5: mark N first, set to the engraved arrow with a non-magnetic pick, epoxy; leave them out if yours are axial (24.700 W).
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first; 0.50 mm wound-envelope clearance has no extra margin).
- Brim on 0.8 mm flanges / 1.2 mm stator webs / annular stator inner rim.
- Wind bobbins before assembly, dense and layer-by-layer (10 layers of 24 AWG in 5.5 mm); do not raise turns (252). Bases print in place — wind, then drop them into the stator bays.

## Prior champion

Gen-CZ dual-rotor 8p/12c inverted triple pole 24 AWG R77 — `champions/2026-10-22-gen-cz-dual-rotor-8p12c-inverted-triple-pole-24awg-r77/` (24.262 W). Superseded by Gen-DA 25.809 W.
