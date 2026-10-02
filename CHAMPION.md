# Current champion — MAX-Versions

**As of 2026-10-01-night (ET ~9:15 PM): Gen-AW dual-rotor copper-centroid pico AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-10-01-gen-aw-dual-rotor-coppercentroid-pico/`](champions/2026-10-01-gen-aw-dual-rotor-coppercentroid-pico/)  
Print pack: [`print-packs/gen-aw-dual-rotor-coppercentroid-pico/`](print-packs/gen-aw-dual-rotor-coppercentroid-pico/)

Gen-AW **dethrones Gen-AT** on estimated watts (~18–38 W vs ~17–36 W @200 RPM): dual magnet faces across a **ultra-micro-gap** wound mid-stator (`m2m=4.66 mm` vs Gen-AT 4.68) + **copper-centroid** Ø20 magnets @ **R=38.0** (vs AT R=38.5) + **215 t** + thinner `former_web=1.20` while magnet↔wound stays **0.50 mm PASS**. One-plate bbox **404×404 mm** (≤408).

## Wound math summary (26 AWG × 215 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | **1.20 / 0.60 mm** |
| `coil_envelope_h` | **3.66 mm** |
| `run_clear` | **0.50 mm** (magnet → **wound**, each gap) |
| `m2m` | **4.66 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.13 mm** |
| Magnets | 8+8 Ø20 @ **R=38.0** + 24+24 Ø5 Halbach @ R={23.0,38.0,55.0} (full kit) |
| Copper | 12×215×~0.126 ≈ **325 m** (fits ~390 m spool) |
| One-plate | **404×404 mm** PASS |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.  
Night envelope: **[WOUND_ENVELOPE_2026-10-01.md](WOUND_ENVELOPE_2026-10-01.md)**

## Runners (same night, also PASS)

- Gen-AX stacked mid-rotor copper-max ultra — `champions/runners-2026-10-01/gen-ax-stacked-midrotor-coppermax-ultra/` (~16–33 W)
- Gen-AY vernier flux-claw mega — `champions/runners-2026-10-01/gen-ay-vernier-fluxclaw-mega/` (~15–32 W)

## Prior champion (still valid wound kit)

Gen-AT dual-rotor copper-centroid hypermicro — `champions/2026-09-30-gen-at-dual-rotor-coppercentroid-hypermicro/` (~17–36 W @200, m2m 4.68, magnets @ R=38.5). Archived as previous tip.

Gen-AQ dual-rotor copper-centroid ultra — `champions/2026-09-29-gen-aq-dual-rotor-coppercentroid-ultra/` (~16–34 W @200, m2m 4.71, magnets @ R=39.0).

Gen-AN dual-rotor copper-centroid hyper — `champions/2026-09-28-gen-an-dual-rotor-coppercentroid-hyper/` (~15–32 W @200, m2m 4.76, magnets @ R=39.5).

Gen-AK dual-rotor copper-centroid ultra — `champions/2026-09-27-gen-ak-dual-rotor-coppercentroid-ultra/` (~14–30 W @200, m2m 4.86, magnets @ R=40).

Gen-AH dual-rotor copper-centroid hypermicro — `champions/2026-09-26-gen-ah-dual-rotor-coppercentroid/` (~13–28 W @200, m2m 4.96, magnets @ R=41).
