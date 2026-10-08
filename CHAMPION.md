# Current champion — MAX-Versions

**As of 2026-10-07-night (ET): Gen-BO dual-rotor flush-seat 6-coil wide-lip — physics_scorer MAX tip.**

Path: [`champions/2026-10-07-gen-bo-dual-rotor-flushseat-6coil-widelip/`](champions/2026-10-07-gen-bo-dual-rotor-flushseat-6coil-widelip/)  
Print pack: [`print-packs/gen-bo-dual-rotor-flushseat-6coil-widelip/`](print-packs/gen-bo-dual-rotor-flushseat-6coil-widelip/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-BO **dethrones Gen-BL** on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T,
26 AWG @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-BL):

| Metric @ 200 RPM | Gen-BO (new) | Gen-BL (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R) | **5.497 W** | 5.299 W |
| Voc rms/phase | **11.00 V** | 10.76 V |
| R_phase @20 °C | **16.51 Ω** | 16.39 Ω |
| Turns fit / coil | **595** (fill 0.65) | 566 (fill 0.65) |
| Bz peak / mean window | **0.540 / 0.104 T** | 0.532 / 0.102 T |
| Topology | dual_rotor 8p/6c + 2× Ø134 × 4.76 mm steel | dual_rotor 8p/6c + 2× Ø134 × 4.76 mm steel |
| Copper | 370 m | 367 m |
| Air-core what-if (no `--back-iron`) | 2.713 W | 2.570 W |
| Verdict | **PASS** | PASS |

That is +3.7 %, a small, honest step: the 8p/6c family is close to its limit under the ~370 m wire budget.

## Why it is better (and still honest)

1. **Flush magnet seat (+2.2 %).** Rotor carriers are printed exactly magnet-height (5.00 mm through-pockets, magnets still sit on the steel),
   so the magnet faces are level with the rotor face (recess 0 instead of 0.10 mm). Magnet faces 10.7 mm apart instead of 10.9 mm; the
   magnet→wound-envelope clearance is exactly the 0.50 mm minimum. **Measure the magnets with calipers**; if any is over 5.00 mm, lengthen
   the gap sleeve by 2× the excess (README).
2. **0.8 mm bobbin lip** (was 1.0 mm; still the 0.8 mm wall minimum; stator web still 1.2 mm): copper sector 28–70 mm × 53.24°, 18.0 mm build, 8.1 mm window.
3. **Ø5 diametric assists tightened** R40/50/60 → R43/50/57: +7.4 % vs no Ø5 (5.120 W without them).
4. Same Ø134 × 4.76 mm steel discs / DXF as Gen-BL (worst-case return band ≈1.46 T, ≈0.54 T spread, `_build/steel_flux.py`).
5. Clocking 0°, D-flat + notch, flip-symmetric holes, bobbins windable, all scorer + geometry checks PASS; one-plate 407.9 × 408.0 mm.

## Kit summary

| Param | Value |
|-------|-------|
| `former_web` / `flange_t` / lip | **8.10 / 0.80 / 0.80 mm** |
| Copper sector | r 28–70 mm × 53.24°, radial build 18.0 mm |
| Turns / wire | **595 t** × 26 AWG per coil (fill 0.65, dense layered), 6 coils, 2 per phase in series, 370 m total (at the ≤ 370 m budget) |
| Magnets | 8+8 Ø20 @ R=50 + 24+24 Ø5 **diametric** @ R43/50/57 |
| Steel BOM | 2× mild-steel discs Ø134 × 4.76 mm (3/16"), centre Ø26, holes per DXF (same as Gen-BL) |
| Gap | m2m 10.7 mm, printed gap sleeve between rotors; magnet→wound 0.50 mm |
| One-plate | **407.9×408.0 mm** ≤410 (all parts, Kobra 3 Max, measured from the STL) |

Night scorecard: [`WOUND_ENVELOPE_2026-10-07.md`](WOUND_ENVELOPE_2026-10-07.md) (= SCORECARD).

## Runners (same night, also PASS)

- Gen-BP Gen-BL rotor retrofit (flush seat + tight Ø5 map) — `champions/runners-2026-10-07/gen-bp-dual-rotor-flushseat-bl-retrofit/` (**5.460 W**, air-core 2.688 W; reuse Gen-BL's bobbins/stator/steel, print only 2 rotors; beats Gen-BL)
- Gen-BQ dual-rotor flush-seat 9-coil wide-lip — `champions/runners-2026-10-07/gen-bq-dual-rotor-flushseat-9coil-widelip/` (**4.420 W**, air-core 2.150 W, 8p/9c smooth torque, Ø138 × 4.76 mm steel; below Gen-BL)

## Assembly warnings

- **Clap hazard** (steel-backed N52 across a 10.7 mm gap): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face.
- Remove temporary braces and gap shims before spinning; shim against the **magnet faces** (flush seat).
- Brim on 0.8 mm flanges / 1.2 mm stator webs.
- Ø5 assists must be **diametrically** magnetised, glued tangentially (axial Ø5 are not counted: 5.120 W without them).
- Wind bobbins before assembly, dense and layer-by-layer (61.6 m per coil — winding jig + turn counter); do not raise turns. 370 m of a ~390 m spool — very little spare.

## Prior champion

Gen-BL dual-rotor steel-seat 6-coil dense-wind — `champions/2026-10-06-gen-bl-dual-rotor-steelseat-6coil-densewind/` (5.299 W). Superseded by Gen-BO 5.497 W.
Gen-BF dual-rotor steel-seat 6-coil tall-copper — `champions/2026-10-04-gen-bf-dual-rotor-steelseat-6coil-tallcopper/` (4.380 W). Superseded by Gen-BL 5.299 W.
Gen-BE dual-rotor backiron 9-coil mega — `champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/` (1.684 W). Superseded by Gen-BF 4.380 W.
Corrected Gen-BA mid-rotor (0.615 W) remains the air-core mid baseline in the generators workspace `2026-10-02-fixed/`.
