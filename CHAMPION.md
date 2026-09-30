# Current champion — MAX-Versions

**As of 2026-09-29-night (ET ~9:15 PM): Gen-AQ dual-rotor copper-centroid ultra AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-09-29-gen-aq-dual-rotor-coppercentroid-ultra/`](champions/2026-09-29-gen-aq-dual-rotor-coppercentroid-ultra/)  
Print pack: [`print-packs/gen-aq-dual-rotor-coppercentroid-ultra/`](print-packs/gen-aq-dual-rotor-coppercentroid-ultra/)

Gen-AQ **dethrones Gen-AN** on estimated watts (~16–34 W vs ~15–32 W @200 RPM): dual magnet faces across a **ultra-micro-gap** wound mid-stator (`m2m=4.71 mm` vs Gen-AN 4.76) + **copper-centroid** Ø20 magnets @ **R=39.0** (vs AN R=39.5) + **205 t** + thinner `former_web=1.25` while magnet↔wound stays **0.50 mm PASS**. One-plate bbox **404×404 mm** (≤408).

## Wound math summary (26 AWG × 205 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | **1.25 / 0.60 mm** |
| `coil_envelope_h` | **3.71 mm** |
| `run_clear` | **0.50 mm** (magnet → **wound**, each gap) |
| `m2m` | **4.71 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.13 mm** |
| Magnets | 8+8 Ø20 @ **R=39.0** + 24+24 Ø5 Halbach @ R={24.0,39.0,56.0} (full kit) |
| Copper | 12×205×~0.130 ≈ **320 m** (fits ~390 m spool) |
| One-plate | **404×404 mm** PASS |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.  
Night envelope: **[WOUND_ENVELOPE_2026-09-29.md](WOUND_ENVELOPE_2026-09-29.md)**

## Runners (same night, also PASS)

- Gen-AR stacked mid-rotor copper-max hyper — `champions/runners-2026-09-29/gen-ar-stacked-midrotor-coppermax-hyper/` (~14–29 W)
- Gen-AS vernier flux-claw ultra — `champions/runners-2026-09-29/gen-as-vernier-fluxclaw-ultra/` (~13–28 W)

## Prior champion (still valid wound kit)

Gen-AN dual-rotor copper-centroid hyper — `champions/2026-09-28-gen-an-dual-rotor-coppercentroid-hyper/` (~15–32 W @200, m2m 4.76, magnets @ R=39.5). Archived as previous tip.

Gen-AK dual-rotor copper-centroid ultra — `champions/2026-09-27-gen-ak-dual-rotor-coppercentroid-ultra/` (~14–30 W @200, m2m 4.86, magnets @ R=40).

Gen-AH dual-rotor copper-centroid hypermicro — `champions/2026-09-26-gen-ah-dual-rotor-coppercentroid/` (~13–28 W @200, m2m 4.96, magnets @ R=41).
