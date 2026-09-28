# Current champion — MAX-Versions

**As of 2026-09-27-night (ET ~9:15 PM): Gen-AK dual-rotor copper-centroid ultra AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-09-27-gen-ak-dual-rotor-coppercentroid-ultra/`](champions/2026-09-27-gen-ak-dual-rotor-coppercentroid-ultra/)  
Print pack: [`print-packs/gen-ak-dual-rotor-coppercentroid-ultra/`](print-packs/gen-ak-dual-rotor-coppercentroid-ultra/)

Gen-AK **dethrones Gen-AH** on estimated watts (~14–30 W vs ~13–28 W @200 RPM): dual magnet faces across an **ultra-micro-gap** wound mid-stator (`m2m=4.86 mm` vs Gen-AH 4.96) + **copper-centroid** Ø20 magnets @ **R=40** (vs AH R=41) + **190 t** + thinner `former_web=1.40` while magnet↔wound stays **0.50 mm PASS**. One-plate bbox **404×404 mm** (≤408).

## Wound math summary (26 AWG × 190 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | **1.40 / 0.60 mm** |
| `coil_envelope_h` | **3.86 mm** |
| `run_clear` | **0.50 mm** (magnet → **wound**, each gap) |
| `m2m` | **4.86 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.13 mm** |
| Magnets | 8+8 Ø20 @ **R=40** + 24+24 Ø5 Halbach @ R={25,40,57} (full kit) |
| Copper | 12×190×~0.132 ≈ **301 m** (fits ~390 m spool) |
| One-plate | **404×404 mm** PASS |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.  
Night envelope: **[WOUND_ENVELOPE_2026-09-27.md](WOUND_ENVELOPE_2026-09-27.md)**

## Runners (same night, also PASS)

- Gen-AL stacked mid-rotor copper-max plus — `champions/runners-2026-09-27/gen-al-stacked-midrotor-coppermax-plus/` (~12–25 W)
- Gen-AM vernier flux-claw hyper — `champions/runners-2026-09-27/gen-am-vernier-fluxclaw-hyper/` (~11–24 W)

## Prior champion (still valid wound kit)

Gen-AH dual-rotor copper-centroid hypermicro — `champions/2026-09-26-gen-ah-dual-rotor-coppercentroid/` (~13–28 W @200, m2m 4.96, magnets @ R=41). Archived as previous tip.

Gen-AE dual-rotor hyper-micro — `champions/2026-09-25-gen-ae-dual-rotor-hypermicro/` (~12–26 W @200, m2m 5.00).

Gen-AB dual-rotor ultra-micro — `champions/2026-09-24-gen-ab-dual-rotor-ultramicro/` (~11–23 W @200).

Gen-Y dual-rotor micro-gap — `champions/2026-09-23-gen-y-dual-rotor-microgap/` (~10–21 W @200).

Gen-V dual-rotor nano-gap — `champions/2026-09-22-gen-v-dual-rotor-nanogap/` (~9–19 W @200).

Gen-S dual-rotor ultra-thin — `champions/2026-09-21-gen-s-dual-rotor-ultrathin/` (~8–17 W @200).

## Withdrawn

Prior Gen-A–L kits fail the wound-coil gate (gaps sized to bare former). Do not print those for intended air-gap performance.
