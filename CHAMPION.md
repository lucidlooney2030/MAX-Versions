# Current champion — MAX-Versions

**As of 2026-10-06-night (ET ~10 PM): Gen-BL dual-rotor steel-seat 6-coil dense-wind — physics_scorer MAX tip.**

Path: [`champions/2026-10-06-gen-bl-dual-rotor-steelseat-6coil-densewind/`](champions/2026-10-06-gen-bl-dual-rotor-steelseat-6coil-densewind/)  
Print pack: [`print-packs/gen-bl-dual-rotor-steelseat-6coil-densewind/`](print-packs/gen-bl-dual-rotor-steelseat-6coil-densewind/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-BL **dethrones Gen-BF** on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T,
26 AWG @20 °C, steel back-iron via `--back-iron` image method = optimistic upper bound; same mode as Gen-BF):

| Metric @ 200 RPM | Gen-BL (new) | Gen-BF (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R) | **5.299 W** | 4.380 W |
| Voc rms/phase | **10.76 V** | 9.04 V |
| R_phase @20 °C | **16.39 Ω** | 14.00 Ω |
| Turns fit / coil | **566** (fill 0.65) | 571 (fill 0.60) |
| Bz peak / mean window | **0.532 / 0.102 T** | 0.474 / 0.123 T |
| Topology | dual_rotor 8p/6c + 2× Ø134 × 4.76 mm steel | dual_rotor 8p/6c + 2× Ø127 × 3 mm steel |
| Copper | 367 m | 314 m |
| Air-core what-if (no `--back-iron`) | 2.570 W | 2.152 W |
| Verdict | **PASS** | PASS |

## Why it is better (and still honest)

1. **Dense winding → smaller gap.** The ~370 m wire budget, not the bobbin window, is the limit, so the copper is wound layer-by-layer at
   fill 0.65 (the scorer's cap) into a shorter 8.1 mm window (18 layers × 566 t in 8.1 × 17.1 mm). Magnet-to-magnet gap 12.5 mm (BF) → 10.7 mm.
   If only a looser fill 0.60 wind is reached, the same window holds 522 t and the scorer gives 4.884 W (still above Gen-BF).
2. **XL magnet ring** (Ø20 at R50, from the 2026-10-05 scans): bigger pole pitch vs the gap = less pole-to-pole leakage; 29–71 mm sector bobbins.
3. **Ø5 diametric assists pulled in tight** (R40/50/60): +6.5 % (4.975 W without).
4. **Thicker steel** 4.76 mm (3/16"): worst-case return-path band ≈1.46 T, ≈0.54 T spread (`_build/steel_flux.py`); Gen-BF's 3 mm discs
   reach ≈2.3 T in that band, so BF's own 4.380 W is somewhat optimistic.
5. Clocking 0°, D-flat + notch, flip-symmetric holes, magnet→wound 0.60 mm, bobbin windable, all scorer + geometry checks PASS.

(Gen-BI 4.975 W from the 2026-10-05 run was never pushed; Gen-BL uses the identical rotors/steel with dense-wound bobbins.)

## Kit summary

| Param | Value |
|-------|-------|
| `former_web` / `flange_t` | **8.10 / 0.80 mm** |
| Copper sector | r 29–71 mm × 52.68°, radial build 17.1 mm |
| Turns / wire | **566 t** × 26 AWG per coil (fill 0.65, dense layered), 6 coils, 2 per phase in series, 367 m total (≤ 370 m budget) |
| Magnets | 8+8 Ø20 @ R=50 + 24+24 Ø5 **diametric** @ R40/50/60 |
| Steel BOM | 2× mild-steel discs Ø134 × 4.76 mm, centre Ø26, holes per DXF |
| Gap | m2m 10.7 mm, printed gap sleeve between rotors |
| One-plate | **407.9×408.0 mm** ≤410 (all parts, Kobra 3 Max, measured from the STL) |
| Frame | M3 rods + standoff tubes outside the rotor OD, between coil stations |

Gate: physics_scorer checks **PASS** + extra geometry checks (GEOM_CHECK.md) **PASS**. Night scorecard: [`WOUND_ENVELOPE_2026-10-06.md`](WOUND_ENVELOPE_2026-10-06.md) (= SCORECARD).

## Runners (same night, also PASS)

- Gen-BM dual-rotor steel-seat 6-coil low-gap 1/4" steel — `champions/runners-2026-10-06/gen-bm-dual-rotor-steelseat-6coil-lowgap-quarterinch/` (**5.189 W**, 8p/6c, R52 ring, 7.65 mm copper, 2× Ø138 × 6.35 mm steel, 352 m wire; beats Gen-BF)
- Gen-BN dual-rotor steel-seat 9-coil dense-wind — `champions/runners-2026-10-06/gen-bn-dual-rotor-steelseat-9coil-densewind/` (**4.166 W**, 8p/9c, 360 m wire; below Gen-BF)

## Assembly warnings

- **Clap hazard is larger** (steel-backed N52 across a 10.7 mm gap): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face.
- Remove temporary braces and gap shims before spinning.
- Brim on 0.8 mm flanges / 1.2 mm stator webs.
- Ø5 assists must be **diametrically** magnetised, glued tangentially (axial Ø5 are not counted: 4.975 W without them).
- Wind bobbins before assembly, dense and layer-by-layer (61 m per coil — winding jig + turn counter); do not raise turns above SCORE.md. 367 m of a ~390 m spool — little spare.

## Prior champion

Gen-BF dual-rotor steel-seat 6-coil tall-copper — `champions/2026-10-04-gen-bf-dual-rotor-steelseat-6coil-tallcopper/` (4.380 W). Superseded by Gen-BL 5.299 W.
Gen-BE dual-rotor backiron 9-coil mega — `champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/` (1.684 W). Superseded by Gen-BF 4.380 W.
Corrected Gen-BA mid-rotor (0.615 W) remains the air-core mid baseline in the generators workspace `2026-10-02-fixed/`.
