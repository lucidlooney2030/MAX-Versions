# Current champion — MAX-Versions

**As of 2026-10-20-night (ET): Gen-CS dual-rotor 8-pole / 12-coil T-pole on 24 AWG — Gen-CP's T-pole rotors (Ø20 N52 + N42 20×10×5 tangential crossbar in one keyhole pocket + diametric Ø5 Halbach) with a tall-copper stator wound in the 24 AWG wire Austin actually owns — physics_scorer MAX tip.**

Path: [`champions/2026-10-20-gen-cs-dual-rotor-8p12c-t-pole-24awg-tall-copper-r88/`](champions/2026-10-20-gen-cs-dual-rotor-8p12c-t-pole-24awg-tall-copper-r88/)  
Print pack: [`print-packs/gen-cs-dual-rotor-8p12c-t-pole-24awg-tall-copper-r88/`](print-packs/gen-cs-dual-rotor-8p12c-t-pole-24awg-tall-copper-r88/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-CS beats Gen-CP on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T as magpylib Cuboids,
**24 AWG** (bare 0.5106 mm, OD 0.55 mm) @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-CP):

| Metric @ 200 RPM | Gen-CS (new) | Gen-CP (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **19.306 W** | 15.820 W (26 AWG — wire Austin does not have) |
| Same, Gen-CP re-wound in 24 AWG (197 t fit, scorer `--set`) | — | 16.738 W |
| Air-core what-if (no `--back-iron`) | **9.139 W** | 7.622 W |
| Voc rms/phase | **16.72 V** | 19.07 V |
| R_phase @20 °C | **10.86 Ω** | 17.23 Ω |
| Wire | **24 AWG**, 387 m | 26 AWG, 386 m |
| Turns fit / coil | **306** × 12 coils (fill 0.65) | 294 × 12 coils |
| Bz peak / mean window | **0.568 / 0.154 T** | 0.650 / 0.176 T |
| Magnets | 16× Ø20×5 N52 + 16× N42 20×10×5 + 48× diametric Ø5×5 | same set |
| Topology | dual_rotor 8p/12c, Ø20 @R88 + N42 @R72.4 (20 mm tangential, keyhole), bobbins r58–105.5 × **6.8 mm** copper × 16.5 mm build, 8 arcs/rotor + D-flat hub, open-centre stator, bases in place, 2× Ø202 × 4.76 mm steel | same rotors, bobbins × 4.65 mm × 15.5 mm |
| Magnet face gap (m2m) | 9.40 mm | 7.25 mm |
| One-plate (measured STL bbox) | 399.9 × 400.8 mm | 399.9 × 400.8 mm |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.220** in the `--back-iron` mode (×1.153 vs Gen-CP re-wound in 24 AWG) and ×1.199 air-core.
What-ifs (same kit): Ø5 left out / axial Ø5 (`--halbach none`) 18.229 W; looser fill 0.60 wind 17.843 W; hot copper 60 °C 16.68 W.
At 200 RPM a matched load draws 0.77 A/phase, above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥22.6 Ω/phase load.

## What changed

Austin only owns 24 AWG and 30 AWG magnet wire, so the 26 AWG champion could not be built as scored. 24 AWG has 0.63× the resistance per metre, and one ≈390 m spool fills a 1.5× larger
window: the bobbin copper grows to 6.8 mm tall (12 layers) × 16.5 mm deep (306 t, 387 m). The magnet gap opens 7.25 → 9.40 mm (peak Bz 0.650 → 0.568 T) but the phase resistance
drops 17.2 → 10.9 Ω, for +22 % matched watts. **The rotors, magnets, Ø202 steel, frame, bearing bridges and shaft are exactly Gen-CP's** — upgrading a Gen-CP is a stator + gap-sleeve swap.
steel_flux.py: worst case ≈1.45 T in a one-pole band at 4.76 mm (≈0.50 T spread) — keep ≥4.76 mm.

**Honesty notes.** Scorer unchanged since 2026-10-16; tonight `score_kit sanity` PASS (0.3198 T) and Gen-CP re-scores unchanged (15.820 W / 7.622 W). Wire gauge is set per kit by
`wire_awg` / `wire_od` in parameters.scad (the SCORE.md header sentence still prints "26 AWG" — fixed text; the Wire row shows the 24 AWG values used).
The 2026-10-20 final-test FT-B1 (20× N52 60×10×3 bars, 10p/15c, 24 AWG) scored 21.84 W `--back-iron` but needs 702 m of 24 AWG (≈1.8 spools), a Ø310 stator and 5 print plates;
it was never pushed here and is not on the one-spool / one-plate basis, so it is not the champion.

Night scorecard: [`WOUND_ENVELOPE_2026-10-20.md`](WOUND_ENVELOPE_2026-10-20.md) (= SCORECARD).

## Runners (same night, also PASS)

- Gen-CT — inverted keyhole pole (Ø20 inside @R76, N42 20 mm tangential OUTSIDE @R91.6), Ø201 steel, **same wound 24 AWG stator as Gen-CS** (rotor swap) — `champions/runners-2026-10-20/gen-ct-dual-rotor-8p12c-inverted-pole-24awg-r76/` (**19.289 W**, 16.71 V rms/ph, 10.86 Ω, 306 t, 387 m 24 AWG; air-core 9.198 W; plate 402.9 × 400.2 mm).
- Gen-CU — exactly the Gen-CS/CP rotors on a 24 AWG wire-saver stator (5.8 mm × 17.5 mm, ≈50 m of the spool left), stator + gap-sleeve swap — `champions/runners-2026-10-20/gen-cu-dual-rotor-8p12c-t-pole-24awg-wiresaver-340m/` (**18.375 W**, 15.23 V rms/ph, 9.46 Ω, 277 t, 337 m 24 AWG; air-core 8.783 W; plate 399.9 × 400.8 mm).

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks across a 9.40 mm gap, Ø202 rotors): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face. Seat ONE magnet at a time and let its epoxy grab; disc and block repel inside the keyhole (same polarity) and the block wants to flip near its disc — keep it pressed flat with a non-magnetic stick until set. Keep the two rotors > 30 cm apart until the jack-rod step.
- Diametric Ø5: mark N first, set to the engraved arrow with a non-magnetic pick, epoxy; leave them out if yours are axial.
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first).
- Brim on 0.8 mm flanges / 1.2 mm stator webs / annular stator inner rim.
- Wind bobbins before assembly, dense and layer-by-layer (12 layers of 24 AWG); do not raise turns (306). 387 m of a ~390 m spool. Bases print in place — wind, then drop them into the stator bays.
- No printed feet: cradle the stator rim or bolt long frame rods to a base; the bridges carry only shaft loads.

## Prior champion

Gen-CP dual-rotor 8p/12c T-pole tangential keyhole R88 — `champions/2026-10-19-gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88/` (15.820 W, 26 AWG). Superseded by Gen-CS 19.306 W (24 AWG).
