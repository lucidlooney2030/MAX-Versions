# Current champion — MAX-Versions

**As of 2026-10-31-night (ET): Gen-DT dual-rotor 8-pole / 12-coil with a NEW radial-strip pole — N52 60×10×3 bar turned RADIAL inside the Ø20×5 N52 disc + N42 20×10×5 block outside it + 3 axial Ø5×5 per pole — at R160 on a narrow-bobbin 24 AWG stator (bobbins r90–188, 164 t) with 2× Ø380 × 4.76 mm steel discs — physics_scorer MAX tip.**

Path: [`champions/2026-10-31-gen-dt-dual-rotor-8p12c-radial-bar-inside-pole-r160-24awg/`](champions/2026-10-31-gen-dt-dual-rotor-8p12c-radial-bar-inside-pole-r160-24awg/)  
Print pack: [`print-packs/gen-dt-dual-rotor-8p12c-radial-bar-inside-pole-r160-24awg/`](print-packs/gen-dt-dual-rotor-8p12c-radial-bar-inside-pole-r160-24awg/) (**three-plate** from-scratch pack in `multi-plate/` + **one-plate stator module** (stator with in-place bobbin bases + hubs + frame small parts) + parts + `laser-cut/steel_backiron_disc.dxf` (NEW Ø380 discs))

Gen-DT beats Gen-DP on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T and N52 bars Br 1.43 T as magpylib Cuboids, Ø5×5 pole extenders as magpylib Cylinders,
**24 AWG** (bare 0.5106 mm, OD 0.55 mm) @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-DP; scorer unchanged — Gen-DP re-scores **35.743 W** tonight):

| Metric @ 200 RPM | Gen-DT (new) | Gen-DP (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **51.338 W** | 35.743 W |
| Air-core what-if (no `--back-iron`) | **24.692 W** | 14.612 W |
| Voc rms/phase | **27.35 V** | 22.81 V |
| R_phase @20 °C | 10.93 Ω | 10.92 Ω |
| Wire | 24 AWG, 389.4 m (12 × 32.45 m incl. leads) | 24 AWG, 389.0 m |
| Turns fit / coil | 164 × 12 coils (fill 0.65, 8 layers, window 4.40 × 13.70 mm) | 241 × 12 |
| Bz peak / mean window | 0.629 / 0.185 T | 0.630 / 0.187 T |
| Pole radius / coils | R160, bobbins r90–188 × 12.36° | R114, r90–152 × 21.33° |
| Magnet face gap (m2m) | 7.00 mm | 7.00 mm |
| Steel | 2× **Ø380** × 4.76 mm (new DXF) | 2× Ø302 × 4.76 mm |
| Print plates (measured STL bbox) | from scratch THREE 402.0 × 402.0 + 397.6 × 371.8 + 373.1 × 395.5 mm · ONE-plate stator module 402.0 × 402.0 mm | TWO + one-plate stator module |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.436** over Gen-DP in the `--back-iron` mode and **×1.690 air-core** (the gain does not depend on the steel model).
What-ifs (same kit): diametric Ø5 laid on their side 51.346 W; all 48 Ø5 left out 50.310 W; looser fill 0.60 wind (152 t fit) 47.492 W; hot copper 60 °C 44.36 W.
At 200 RPM a matched load draws 1.25 A/phase, ≈2.5× the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥43.8 Ω/phase load (0.5 A → ≈32.8 W, Ohm's law on the scored 27.35 V / 10.93 Ω).

## What changed

2026-10-30 scans (that night's run failed — scans only; tonight a parallel scorer batch was OOM-killed on the 15 GB box, the probable cause — rebuilt and scored 2026-10-31 with ≤2 scorer processes at a time):
the 60×10×3 N52 bar was moved from tangential-outside to **RADIAL-inside** the Ø20 disc, so each pole is one ≈98 mm radial magnet strip (bar + disc + N42 block + Ø5) that runs along the long radial coil side; with even narrower bobbins (13 mm extra stator web per side) the best machine on one 390 m spool grows to R160 / coils r90–188.
Runners-up the same night (local, not pushed): **Gen-DU** (same Gen-DT rotors/steel, stator sized for a realistic fill-0.60 hand wind, 158 t, 387 m) **48.930 W**; **Gen-DS** (the unchanged Gen-DP pole grown to R150, r126–188 bobbins, 222 t, Ø372 steel) **45.831 W**.
A cheap arcs-only upgrade for Gen-DP owners (radial-bar pole on the unchanged Gen-DP stator + Ø302 steel) was scanned and peaks at 32.6 W (below Gen-DP), so none is offered; Gen-DP owners re-use all magnets, shaft, bearings and (if undamaged) the wire.

**Honesty notes.** `score_kit sanity` PASS (0.3198 T, 9:12 PM ET and 9:28 PM ET). The SCORE.md header sentence still prints "26 AWG" (fixed text); the Wire row shows the 24 AWG values used.
**Ø5 rule:** the 48 Ø5 are pole extenders (3 per pole, same polarity), NOT Halbach assists; counted because the diametric-lying what-if (51.346 W) matches the headline; without them 50.310 W.
**Wire is tight:** 389.4 m incl. 0.15 m leads per coil. Measure your spool first; if it is short, wind fewer turns on all 12 coils equally (never more).
**8 layers in 4.40 mm** must be wound dense and layer-by-layer (fill 0.65); if you can only scramble-wind, build the Gen-DU stator (48.930 W at fill 0.60, same rotors).

Night scorecard: [`WOUND_ENVELOPE_2026-10-31.md`](WOUND_ENVELOPE_2026-10-31.md) (= SCORECARD).

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks + N52 bars + 48 Ø5 across a **7.00 mm** gap, Ø380 rotors): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts. Brace before seating the second magnet face.
- **Big rotors:** check axial run-out at the arc rim < 0.3 mm before closing up (0.50 mm wound-envelope clearance per side); frame standoffs clear the spinning rotor by 1.5 mm.
- Radial bars sit in long blind pockets and are pushed INWARD by their disc (same polarity) — they try to flip and jump onto the disc; seat with a non-magnetic stick and hold until the epoxy grabs. Bars magnetised through 3 mm, blocks through 5 mm; compass-check every magnet.
- Remove temporary braces and gap shims before spinning; caliper the magnets (flush seat).
- Brim (≤4 mm on the Ø402 stator) on 0.8 mm flanges / lids / annular stator inner rim.
- Wind bobbins before assembly (164 t, 8 dense layers); do not raise turns. Continuous current ≲0.5 A per the scorer note.

## Prior champion

Gen-DP dual-rotor 8p/12c axial-Ø5 triple pole R114 narrow-bobbin — `champions/2026-10-29-gen-dp-dual-rotor-8p12c-narrow-bobbin-wide-web-r114-241t-24awg/` (35.743 W). Superseded by Gen-DT 51.338 W.
