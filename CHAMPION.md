# Current champion — MAX-Versions

**As of 2026-10-27-night (ET): Gen-DM dual-rotor 8-pole / 12-coil triple pole (Ø20×5 N52 disc + N42 20×10×5 block + N52 60×10×3 bar) at R95.5 with the 48 Ø5×5 used as AXIAL POLE EXTENDERS (3 per pole, NOT Halbach assists), on the unchanged Gen-DG 8-layer 24 AWG stator and the unchanged Gen-DG Ø264 steel discs — physics_scorer MAX tip.**

Path: [`champions/2026-10-27-gen-dm-dual-rotor-8p12c-axial-o5-r95p5-arc-upgrade-on-gen-dg-dj-stator-and-steel/`](champions/2026-10-27-gen-dm-dual-rotor-8p12c-axial-o5-r95p5-arc-upgrade-on-gen-dg-dj-stator-and-steel/)  
Print pack: [`print-packs/gen-dm-dual-rotor-8p12c-axial-o5-r95p5-arc-upgrade-on-gen-dg-dj-stator-and-steel/`](print-packs/gen-dm-dual-rotor-8p12c-axial-o5-r95p5-arc-upgrade-on-gen-dg-dj-stator-and-steel/) (**one-plate** arcs-only upgrade for a Gen-DG owner + **two-plate** from-scratch pack + parts + `laser-cut/steel_backiron_disc.dxf`, byte-identical to the Gen-DG DXF)

Gen-DM beats Gen-DG on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T and N52 bars Br 1.43 T as magpylib Cuboids, Ø5×5 pole extenders as magpylib Cylinders (`pole_o5_*` group, added and validated 2026-10-26),
**24 AWG** (bare 0.5106 mm, OD 0.55 mm) @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-DG):

| Metric @ 200 RPM | Gen-DM (new) | Gen-DJ (2026-10-26, never pushed) | Gen-DG (prior champion) |
|---|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **29.091 W** | 29.048 W | 27.834 W |
| Air-core what-if (no `--back-iron`) | 11.664 W | 11.646 W | **12.220 W** |
| Voc rms/phase | **20.59 V** | 20.58 V | 20.14 V |
| R_phase @20 °C | 10.93 Ω | 10.93 Ω | 10.93 Ω |
| Wire | 24 AWG, 389.6 m (≈ the whole 390 m spool) | same | same |
| Turns fit / coil | 223 × 12 coils (fill 0.65, 8 layers) | same | same |
| Bz peak / mean window | 0.633 / 0.183 T | 0.633 / 0.183 T | 0.640 / 0.176 T |
| Ø5×5 use | 48 **axial pole extenders** (3/pole) | same, pole at R95 | 48 diametric Halbach assists between the poles |
| Magnet face gap (m2m) | 7.00 mm | 7.00 mm | 7.00 mm |
| Steel | 2× Ø264 × 4.76 mm (= Gen-DG DXF) | same | Ø264 |
| Print plates (measured STL bbox) | **ONE** 361.5 × 400.4 mm (16 arcs + fit coupons, Gen-DG/DJ owner) · from scratch TWO 359.0 × 329.0 + 384.2 × 399.2 mm | TWO 359.0 × 329.0 + 399.9 × 399.2 | TWO |
| Verdict | **PASS** (geometry check PASS) | PASS | PASS |

That is **×1.045** over Gen-DG in the `--back-iron` mode — but **×0.955 air-core**: the axial-Ø5 pole only wins WITH the steel discs (axial magnets are doubled by their steel image; tangential Halbach magnets are partly cancelled by theirs). The kit ships the steel. Versus Gen-DJ (last night's best, scored 2026-10-26 but never pushed) Gen-DM is only **+0.15 %**.
What-ifs (same kit): diametric Ø5 laid on their side 29.082 W; all 48 Ø5 left out 26.730 W; looser fill 0.60 wind (206 t fit) 26.847 W; hot copper 60 °C 25.14 W.
At 200 RPM a matched load draws 0.94 A/phase, above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥30.3 Ω/phase load (0.5 A → ≈22.7 W, Ohm's law on the scored 20.59 V / 10.93 Ω).

## What changed

2026-10-26 (Gen-DJ): the 48 Ø5×5 moved from the inter-pole Halbach columns INTO the poles as axial extenders — a pair flanking the N42 block + one inside the Ø20, same polarity as the pole (scorer extended with the opt-in `pole_o5_*` group; the Gen-DG regression stays 27.834 W before and after, re-confirmed 2026-10-27).
2026-10-27 (Gen-DM): scans j1–j4 (341 combos: 13 printable Ø5 sites, 6/7/8/9 copper layers on a full spool, stator window, pole radius) found the family converged. The best printable point moves the pole 0.5 mm out to R95.5 while the clamp-bolt circle stays at R95, so **the Gen-DG stator, bobbins, frame, hubs and Ø264 steel discs are reused unchanged — a Gen-DG owner prints only 16 arcs (one plate)** and moves the magnets (the 48 Ø5 go into the new square pole pockets).

**Honesty notes.** `score_kit sanity` PASS (0.3198 T, 9:07 PM ET); Gen-DG re-scores 27.834 W with the current scorer. The SCORE.md header sentence still prints "26 AWG" (fixed text); the Wire row shows the 24 AWG values used (10.93 Ω/phase for 389.6 m is 24 AWG).
**Ø5 rule:** these Ø5 are NOT counted as Halbach assists (the Halbach group is off); they are pole area. Axial Ø5 stand upright; diametric Ø5 lie on their side with M pointing into the gap (29.082 W). Check yours with a compass.
**Wire is tight:** 389.6 m incl. 0.15 m leads per coil. Measure your spool first; if it is short, wind fewer turns on all 12 coils equally (never more).
**8 layers in 4.40 mm** must be wound dense and layer-by-layer (fill 0.65); at fill 0.60 the kit scores 26.847 W.

Night scorecard: [`WOUND_ENVELOPE_2026-10-27.md`](WOUND_ENVELOPE_2026-10-27.md) (= SCORECARD, incl. the combined 2026-10-26 + 2026-10-27 ranking).

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks + N52 bars + 48 Ø5 across a **7.00 mm** gap, Ø264 rotors): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts. Brace before seating the second magnet face.
- Bars must be magnetised through the 3 mm thickness and blocks through 5 mm; every Ø5 shows its arc's pole letter to the stator. Check each with a compass before gluing, and seat one magnet at a time.
- Remove temporary braces and gap shims before spinning; the 0.50 mm wound-envelope clearance has no extra margin (caliper the magnets; flush seat).
- Brim on 0.8 mm flanges / 1.2 mm stator webs / annular stator inner rim.
- Wind bobbins before assembly, dense and layer-by-layer (8 layers of 24 AWG in 4.40 mm); do not raise turns (223). Continuous current ≲0.5 A per the scorer note.

## Prior champion

Gen-DG dual-rotor 8p/12c inverted triple pole 8-layer thin gap 24 AWG R95 — `champions/2026-10-25-gen-dg-dual-rotor-8p12c-inverted-triple-pole-8-layer-thin-gap-24awg-r95/` (27.834 W). Superseded by Gen-DM 29.091 W.
