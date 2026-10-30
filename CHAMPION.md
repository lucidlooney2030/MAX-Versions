# Current champion — MAX-Versions

**As of 2026-10-29-night (ET): Gen-DP dual-rotor 8-pole / 12-coil axial-Ø5 triple pole (Ø20×5 N52 disc + N42 20×10×5 block + N52 60×10×3 bar + 3 axial Ø5×5 per pole) at R114 on a NEW narrow-bobbin / wide-web 24 AWG stator (bobbins r90–152, 241 t) with 2× Ø302 × 4.76 mm steel discs — physics_scorer MAX tip.**

Path: [`champions/2026-10-29-gen-dp-dual-rotor-8p12c-narrow-bobbin-wide-web-r114-241t-24awg/`](champions/2026-10-29-gen-dp-dual-rotor-8p12c-narrow-bobbin-wide-web-r114-241t-24awg/)  
Print pack: [`print-packs/gen-dp-dual-rotor-8p12c-narrow-bobbin-wide-web-r114-241t-24awg/`](print-packs/gen-dp-dual-rotor-8p12c-narrow-bobbin-wide-web-r114-241t-24awg/) (**two-plate** from-scratch pack + **one-plate stator module** (stator with in-place bobbin bases + 12 lids — also what a Gen-DR owner prints to switch stators) + parts + `laser-cut/steel_backiron_disc.dxf` (NEW Ø302 discs))

Gen-DP beats Gen-DM on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T and N52 bars Br 1.43 T as magpylib Cuboids, Ø5×5 pole extenders as magpylib Cylinders,
**24 AWG** (bare 0.5106 mm, OD 0.55 mm) @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-DM; scorer code unchanged since 2026-10-26, Gen-DM re-scores 29.091 W tonight):

| Metric @ 200 RPM | Gen-DP (new) | Gen-DM (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **35.743 W** | 29.091 W |
| Air-core what-if (no `--back-iron`) | **14.612 W** | 11.664 W |
| Voc rms/phase | **22.81 V** | 20.59 V |
| R_phase @20 °C | 10.92 Ω | 10.93 Ω |
| Wire | 24 AWG, 389.0 m (12 × 32.4 m incl. leads) | 24 AWG, 389.6 m |
| Turns fit / coil | 241 × 12 coils (fill 0.65, 8 layers, window 4.40 × 20.10 mm) | 223 × 12 |
| Bz peak / mean window | 0.630 / 0.187 T | 0.633 / 0.183 T |
| Pole radius / coils | R114, bobbins r90–152 × 21.33°, 11.3 mm stator webs | R95.5, r74–134 × 1.2 mm webs |
| Magnet face gap (m2m) | 7.00 mm | 7.00 mm |
| Steel | 2× **Ø302** × 4.76 mm (new DXF) | 2× Ø264 × 4.76 mm |
| Print plates (measured STL bbox) | from scratch TWO 363.0 × 358.0 + 399.0 × 400.4 mm · ONE-plate stator module 376.9 × 397.6 mm | TWO (+ one-plate arc upgrade) |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.229** over Gen-DM in the `--back-iron` mode and **×1.253 air-core** (the gain does not depend on the steel model).
What-ifs (same kit): diametric Ø5 laid on their side 35.728 W; looser fill 0.60 wind (223 t fit) 33.075 W; hot copper 60 °C 30.89 W.
At 200 RPM a matched load draws 1.04 A/phase, above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥34.7 Ω/phase load (0.5 A → ≈26.0 W, Ohm's law on the scored 22.81 V / 10.92 Ω).

## What changed

2026-10-28 scans (that night's run failed before scoring; rebuilt and scored 2026-10-29): every earlier kit held the bobbins at the minimum 1.2 mm stator web. **Narrow bobbins with wide webs** shorten every turn, so the same 390 m spool gives more turns at lower Ω/turn for a small flux-linkage loss; with that, the best machine on one spool is larger — the whole Gen-DM pole moves out to R114 (higher surface speed at 200 RPM) with r90–152 coils, Ø302 steel and a Ø324 stator (still inside the 410 mm plate as a two-plate build).
Runners-up the same night: **Gen-DR** (same rotors/steel, stator sized for a realistic fill-0.60 hand wind, 250 t, 386 m) 33.009 W; **Gen-DQ** (stator-only narrow-bobbin upgrade for the unchanged Gen-DM rotors, 245 t) 30.034 W.

**Honesty notes.** `score_kit sanity` PASS (0.3198 T, 9:09 PM ET and 9:25 PM ET). The SCORE.md header sentence still prints "26 AWG" (fixed text); the Wire row shows the 24 AWG values used (10.92 Ω/phase for 389 m is 24 AWG).
**Ø5 rule:** the 48 Ø5 are pole extenders (3 per pole, same polarity), NOT Halbach assists. Axial Ø5 stand upright; diametric Ø5 lie on their side (35.728 W). Check yours with a compass.
**Wire is tight:** 389 m incl. 0.15 m leads per coil. Measure your spool first; if it is short, wind fewer turns on all 12 coils equally (never more).
**8 layers in 4.40 mm** must be wound dense and layer-by-layer (fill 0.65); if you can only scramble-wind, build the Gen-DR stator instead (33.009 W at fill 0.60, same rotors).

Night scorecard: [`WOUND_ENVELOPE_2026-10-29.md`](WOUND_ENVELOPE_2026-10-29.md) (= SCORECARD).

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks + N52 bars + 48 Ø5 across a **7.00 mm** gap, Ø302 rotors): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts. Brace before seating the second magnet face.
- **Big rotors:** check axial run-out at the arc rim < 0.3 mm before closing up (0.50 mm wound-envelope clearance per side); frame standoffs clear the spinning rotor by 1.5 mm.
- Bars magnetised through 3 mm, blocks through 5 mm; every Ø5 shows its arc's pole letter to the stator. Compass-check, seat one magnet at a time.
- Remove temporary braces and gap shims before spinning; caliper the magnets (flush seat).
- Brim on 0.8 mm flanges / lids / annular stator inner rim.
- Wind bobbins before assembly (241 t, 8 dense layers); do not raise turns. Continuous current ≲0.5 A per the scorer note.

## Prior champion

Gen-DM dual-rotor 8p/12c axial-Ø5 triple pole R95.5 — `champions/2026-10-27-gen-dm-dual-rotor-8p12c-axial-o5-r95p5-arc-upgrade-on-gen-dg-dj-stator-and-steel/` (29.091 W). Superseded by Gen-DP 35.743 W.
