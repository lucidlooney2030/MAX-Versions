# Current champion — MAX-Versions

**As of 2026-10-19-night (ET): Gen-CP dual-rotor 8-pole / 12-coil "T-pole" — Ø20 N52 disc + N42 20×10×5 crossbar (20 mm TANGENTIAL, inside the disc) in ONE keyhole pocket + diametric Ø5 Halbach (segmented magnet arcs + annular stator) — physics_scorer MAX tip.**

Path: [`champions/2026-10-19-gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88/`](champions/2026-10-19-gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88/)  
Print pack: [`print-packs/gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88/`](print-packs/gen-cp-dual-rotor-8p12c-t-pole-tangential-keyhole-r88/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-CP beats Gen-CJ on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, N42 blocks Br 1.29 T as magpylib Cuboids,
26 AWG @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-CJ):

| Metric @ 200 RPM | Gen-CP (new) | Gen-CJ (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R), `--back-iron` | **15.820 W** | 15.244 W |
| Air-core what-if (no `--back-iron`) | **7.622 W** | 7.586 W |
| Voc rms/phase | **19.07 V** | 18.70 V |
| R_phase @20 °C | **17.23 Ω** | 17.20 Ω |
| Turns fit / coil | **294** × 12 coils (fill 0.65) | 266 × 12 coils (fill 0.65) |
| Bz peak / mean window | **0.650 / 0.176 T** | 0.661 / 0.172 T |
| Magnets | 16× Ø20×5 N52 + 16× N42 20×10×5 + 48× diametric Ø5×5 | same set |
| Topology | dual_rotor 8p/12c, Ø20 @R88 + N42 @R72.4 (20 mm side TANGENTIAL, keyhole pocket, 0.6 mm from the disc), bobbins r58–105.5 × 4.65 mm, 8 bolt-on arcs/rotor + D-flat hub, open-centre stator, bases in place, 2× Ø202 × 4.76 mm steel | Ø20 @R86 + N42 @R64.5 (20 mm radial, separate pocket), bobbins r50–104 × 4.5 mm, 2× Ø198 × 4.76 mm steel |
| Magnet face gap (m2m) | 7.25 mm | 7.10 mm |
| Copper | 386 m | 385 m |
| One-plate (measured STL bbox) | 399.9 × 400.8 mm | 403.7 × 402.2 mm |
| Verdict | **PASS** (geometry check PASS) | PASS |

That is **×1.038** (+3.8 %) in the `--back-iron` mode and ×1.005 air-core. What-ifs (same kit): Ø5 left out / axial Ø5 (`--halbach none`) 14.873 W; looser fill 0.60 wind 14.573 W; hot copper 60 °C 13.67 W.
At 200 RPM a matched load draws 0.55 A/phase, just above the scorer's ≈0.5 A continuous guidance for printed formers — for continuous duty use ≥20.9 Ω/phase (≈15.7 W, Ohm's law on the scorer's V and R).

## What changed

New pole shape, the **T-pole**: the Ø20 N52 disc sits outside at R88 and its N42 20×10×5 block sits radially inside it with the 20 mm side TANGENTIAL (r67.4–77.4), so each
pole stays the full 20 mm wide over a 36 mm radial length instead of narrowing to 10 mm like Gen-CJ's radial block. Disc and block share ONE keyhole pocket (they repel onto the far
walls, 0.6 mm apart — no PLA web; the scorer models exactly those pushed-apart positions). The bobbins move out to r58–105.5 (4.65 mm copper, 294 t) so the copper sits on the T;
the diametric Ø5 columns move 1.2 mm inward (R80.6/86.8/93.0). Same Ø229 stator OD / R109.5 frame rods as Gen-CJ; new Ø202 steel (clamp ring R88 ±13°).
steel_flux.py: worst case ≈1.48 T in a one-pole band at 4.76 mm (≈0.51 T spread) — keep ≥4.76 mm.

**Honesty notes.** Scorer unchanged since the 2026-10-16 cuboid addition (validated 2026-10-17); tonight `score_kit sanity` PASS (0.3198 T) and Gen-CJ re-scores unchanged
(15.244 W / 7.586 W). The 2026-10-18 night (failed, never shipped) produced Gen-CM (inverted keyhole, 15.869 W) — 0.3 % above Gen-CP; it is not packaged/pushed, so it is not
the champion; the T-pole and the inverted pole are a tie within ≈0.3 %. N52 60×10×3 bars were scanned as the pole block and lose (10.05 W tangential / 13.13 W radial) — not used.

Night scorecard: [`WOUND_ENVELOPE_2026-10-19.md`](WOUND_ENVELOPE_2026-10-19.md) (= SCORECARD).

## Runners (same night, also PASS)

- Gen-CR — T-pole at R89 with a deeper bobbin window (r60–105.5 × 4.65 mm × 16.5 mm build, 313 t), Ø204 steel — `champions/runners-2026-10-19/gen-cr-dual-rotor-8p12c-t-pole-deep-window-r89/` (**15.728 W**, 19.00 V rms/ph, 17.21 Ω, 313 t, 386 m; air-core 7.556 W; plate 398.9 × 400.0 mm).
- Gen-CQ — exactly the Gen-CP rotors on a thin-copper (4.2 mm) wire-saver stator, ≈325 m (≈65 m of the spool left) — `champions/runners-2026-10-19/gen-cq-dual-rotor-8p12c-t-pole-wiresaver-325m/` (**14.407 W**, 16.69 V rms/ph, 14.50 Ω, 240 t, 325 m; air-core 6.932 W; plate 397.2 × 398.9 mm). Stator + gap-sleeve swap on the Gen-CP rotors.

## Assembly warnings

- **Clap hazard** (steel-backed N52 discs + N42 blocks across a 7.25 mm gap, Ø202 rotors): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face. Seat ONE magnet at a time and let its epoxy grab; disc and block repel each other inside the keyhole (same polarity) and the block wants to flip near its disc — keep it pressed flat with a non-magnetic stick until set. Keep the two rotors > 30 cm apart until the jack-rod step.
- Diametric Ø5: mark N first, set to the engraved arrow with a non-magnetic pick, epoxy; leave them out if yours are axial (14.873 W).
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat — caliper the magnets first).
- Brim on 0.8 mm flanges / 1.2 mm stator webs / annular stator inner rim.
- Wind bobbins before assembly, dense and layer-by-layer; do not raise turns (294). 386 m of a ~390 m spool. Bases print in place — wind, then drop them into the stator bays.
- No printed feet: cradle the stator rim or bolt long frame rods to a base; the bridges carry only shaft loads.

## Prior champion

Gen-CJ dual-rotor 8p/12c radial-block Halbach R86 — `champions/2026-10-17-gen-cj-dual-rotor-8p12c-radial-block-halbach-r86/` (15.244 W). Superseded by Gen-CP 15.820 W.
