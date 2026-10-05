# Current champion — MAX-Versions

**As of 2026-10-04-night (ET ~10 PM): Gen-BF dual-rotor steel-seat 6-coil tall-copper — physics_scorer MAX tip.**

Path: [`champions/2026-10-04-gen-bf-dual-rotor-steelseat-6coil-tallcopper/`](champions/2026-10-04-gen-bf-dual-rotor-steelseat-6coil-tallcopper/)  
Print pack: [`print-packs/gen-bf-dual-rotor-steelseat-6coil-tallcopper/`](print-packs/gen-bf-dual-rotor-steelseat-6coil-tallcopper/) (one-plate STL + parts + `laser-cut/steel_backiron_disc.dxf`)

Gen-BF **dethrones Gen-BE** on **honest** matched-load watts from `physics_scorer` (magpylib, PLA = air, N52 Br 1.43 T,
26 AWG @20 °C, steel back-iron via `--back-iron` image method):

| Metric @ 200 RPM | Gen-BF (new) | Gen-BE (prior champion) |
|---|---|---|
| Matched-load P (3φ V²/4R) | **4.380 W** | 1.684 W |
| Voc rms/phase | **9.04 V** | 2.41 V |
| R_phase @20 °C | **14.00 Ω** | 2.58 Ω |
| Turns fit / coil | **571** | 107 |
| Bz peak / mean window | **0.474 / 0.123 T** | 0.750 / 0.436 T |
| Topology | dual_rotor 8p/6c + 2× 3 mm steel | dual_rotor 8p/9c + 2× 1.5 mm steel |
| Copper | 314 m | 58 m |
| Verdict | **PASS** | PASS |

## Why it is better (and still honest)

1. **Tall copper (9.9 mm web) once steel is in.** With steel behind the magnets the gap field falls slowly with gap, so copper volume wins
   (scan: same Gen-BE coil 3.6 → 7.2 mm web = 1.78 → 2.27 W). 22 layers × 571 turns fit the 9.9 × 15.3 mm window at fill 0.60.
2. **8p/6c big coils** (51.5° sectors, r 25–62 mm) beat 8p/9c and 8p/12c at equal copper; RL pushed to 44 mm.
3. **Magnets sit ON the steel** (through-pockets) — the exact plane the scorer's image method assumes (Gen-BE had ~2.3 mm PLA between).
   Steel 3 mm (≈0.7 T average; 1.5 mm would be near saturation). Air-core what-if of the same kit: 2.15 W — steel is required.
4. Ø5 diametric assists kept (+6 %: 4.14 W without). Clocking 0°, D-flat + notch, flip-symmetric holes, magnet→wound 0.60 mm.

## Kit summary

| Param | Value |
|-------|-------|
| `former_web` / `flange_t` | **9.90 / 0.80 mm** |
| Copper sector | r 25–62 mm × 51.51°, radial build 15.3 mm |
| Turns / wire | **571 t** × 26 AWG per coil, 6 coils, 2 per phase in series, 314 m total (≤ 390 m spool) |
| Magnets | 8+8 Ø20 @ R=44 + 24+24 Ø5 **diametric** |
| Steel BOM | 2× mild-steel discs Ø127 × 3 mm, centre Ø26, holes per DXF |
| Gap | m2m 12.5 mm, printed gap sleeve between rotors |
| One-plate | **408.5×409.0 mm** ≤410 (all parts, Kobra 3 Max) |
| Frame | M3 rods + standoff tubes outside the rotor OD, between coil stations |

Gate: physics_scorer checks **PASS** + extra geometry checks (GEOM_CHECK.md) **PASS**. Night scorecard: [`WOUND_ENVELOPE_2026-10-04.md`](WOUND_ENVELOPE_2026-10-04.md) (= SCORECARD).

## Runners (same night, also PASS, both beat Gen-BE 1.684 W)

- Gen-BG dual-rotor steel-seat 9-coil tall-copper — `champions/runners-2026-10-04/gen-bg-dual-rotor-steelseat-9coil-tallcopper/` (**3.176 W**, 8p/9c, 257 m wire)
- Gen-BH dual-rotor steel-seat 4-pole double-stack — `champions/runners-2026-10-04/gen-bh-dual-rotor-steelseat-4pole-doublestack/` (**1.843 W**, all 16 Ø20 as 8 × 10 mm poles, no Ø5)

## Assembly warnings

- **Clap hazard is larger** (steel-backed N52): use the 4 temporary M4 jack rods (R18) and lower rotor B by the nuts before seating the second magnet face.
- Remove temporary braces and gap shims before spinning.
- Brim on 0.8 mm flanges / 1.2 mm stator webs.
- Ø5 assists must be **diametrically** magnetised, glued tangentially.
- Wind bobbins before assembly (52 m per coil — use a winding jig); do not raise turns above SCORE.md.

## Prior champion

Gen-BE dual-rotor backiron 9-coil mega — `champions/2026-10-03-gen-be-dual-rotor-backiron-9coil-mega/` (1.684 W). Superseded by Gen-BF 4.380 W.
Corrected Gen-BA mid-rotor (0.615 W) remains the air-core mid baseline in the generators workspace `2026-10-02-fixed/`.
