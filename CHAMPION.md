# Current champion — MAX-Versions

**As of 2026-10-03-night (ET ~9:30 PM): Gen-BE dual-rotor backiron 9-coil mega — physics_scorer MAX tip.**

Path: [`champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/`](champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/)  
Print pack: [`print-packs/gen-be-dual-rotor-backiron-9coil-mega/`](print-packs/gen-be-dual-rotor-backiron-9coil-mega/)

Gen-BE **dethrones Gen-AZ** (and the corrected Gen-BA 0.615 W baseline) on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T, 26 AWG @20 °C, steel back-iron via `--back-iron` image method):

| Metric @ 200 RPM | Gen-BE (new) | Gen-BA corrected baseline | Old Gen-AZ README claim |
|---|---|---|---|
| Matched-load P (3φ V²/4R) | **1.684 W** | 0.615 W | ~19–40 W (not physical) |
| Voc rms/phase | **2.41 V** | 1.79 V | — |
| R_phase @20 °C | **2.58 Ω** | 3.89 Ω | — |
| Turns fit | **107** | 74 | 220 claimed / ~55 fit |
| Bz peak / mean window | **0.750 / 0.436 T** | 0.374 / 0.201 T | 0.75–1.1 T assumed |
| Topology | dual_rotor 8p/9c + steel | mid_rotor 8p/2×9c air | dual_rotor (mis-clocked) |
| Verdict | **PASS** | PASS | FAIL on clocking/turns |

## Why these watts are real (and the old 15–40 W were not)

1. Rotor clocking = 0° (N facing S). Half-pole 22.5° clocking cut fundamental by ~0.71.
2. Bobbin turns = winding-fit only (107 of 26 AWG in a 3.60×7.9 mm window). Claiming 200+ turns that do not fit inflated V and W.
3. Field from magpylib of the actual magnet layout (PLA = air). Gap-field assumptions of 0.74–1.1 T were ~2–3× high for air-core.
4. **Steel lever:** two buyable mild-steel discs Ø156 × 1.5 mm behind each rotor (image method, optimistic). Without steel, re-score without `--back-iron`.

## Kit summary

| Param | Value |
|-------|-------|
| Topology | dual_rotor, 8 poles, 9 coils × 1 stator |
| `former_web` / `flange_t` | **3.60 / 0.60 mm** (taller copper vs BA 2.46) |
| Copper sector | r 26–50 mm × 31.84°, radial build 7.9 mm |
| Turns / wire | **107** t × 26 AWG, fill 0.60, ~9 coils |
| Magnets | 8+8 Ø20 @ R=38 + 24+24 Ø5 **diametric** Halbach |
| Steel BOM | 2× mild-steel discs Ø156 × 1.5 mm, hub clearance Ø32 |
| Magnet↔wound | ≥0.50 mm PASS |
| One-plate | **409×409 mm** ≤410 (Kobra 3 Max) |
| Clocking | `rotor_b_offset_deg = 0`, D-flat + flip-symmetric braces |

Gate: physics_scorer checks — **PASS**. Night scorecard: [`WOUND_ENVELOPE_2026-10-03.md`](WOUND_ENVELOPE_2026-10-03.md) (= SCORECARD).

## Runners (same night, also PASS, all beat Gen-BA 0.615 W)

- Gen-BD dual-rotor backiron femto — `champions/runners-2026-10-03/gen-bd-dual-rotor-backiron-femto/` (**1.174 W**, 12-coil dual + steel)
- Gen-BC stacked mid-rotor coppermax giga — `champions/runners-2026-10-03/gen-bc-stacked-midrotor-coppermax-giga/` (**0.802 W**, mid air-core, tall bobbin)

## Assembly warnings

- Brace M4 before seating the second magnet face (clap).
- Brim on 0.60 mm flanges / thin webs.
- Remove temporary braces and gap shims before spinning.
- Ø5 assists must be **diametrically** magnetised.
- Wind bobbins before assembly; do not raise turns above SCORE.md.

## Prior champion (archived; old watt claims superseded by physics_scorer)

Gen-AZ dual-rotor copper-centroid femto — `champions/2026-10-02-gen-az-dual-rotor-coppercentroid-femto/` (README claimed ~19–40 W; corrected air-core rescore ~0.44 W; with back-iron what-if ~0.87 W). Superseded by Gen-BE honest 1.684 W.

Corrected Gen-BA mid-rotor (0.615 W) remains the air-core mid baseline in the generators workspace `2026-10-02-fixed/`.
