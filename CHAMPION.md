# Current champion — MAX-Versions

**As of 2026-09-26-night (ET ~9:20 PM): Gen-AH dual-rotor copper-centroid hypermicro AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-09-26-gen-ah-dual-rotor-coppercentroid/`](champions/2026-09-26-gen-ah-dual-rotor-coppercentroid/)  
Print pack: [`print-packs/gen-ah-dual-rotor-coppercentroid/`](print-packs/gen-ah-dual-rotor-coppercentroid/)

Gen-AH **dethrones Gen-AE** on estimated watts (~13–28 W vs ~12–26 W @200 RPM): dual magnet faces across a **hyper-micro-gap** wound mid-stator (`m2m=4.96 mm` vs Gen-AE 5.00) + **copper-centroid** Ø20 magnets @ **R=41** (vs AE R=54 starving inner copper) + **180 t** while magnet↔wound stays **0.50 mm PASS**. One-plate bbox **404×404 mm** (≤408).

## Wound math summary (26 AWG × 180 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | **1.50 / 0.60 mm** |
| `coil_envelope_h` | **3.96 mm** |
| `run_clear` | **0.50 mm** (magnet → **wound**, each gap) |
| `m2m` | **4.96 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.13 mm** |
| Magnets | 8+8 Ø20 @ **R=41** + 24+24 Ø5 Halbach @ R={26,41,58} (full kit) |
| Copper | 12×180×~0.136 ≈ **294 m** (fits ~390 m spool) |
| One-plate | **404×404 mm** PASS |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.  
Night envelope: **[WOUND_ENVELOPE_2026-09-26.md](WOUND_ENVELOPE_2026-09-26.md)**

## Runners (same night, also PASS)

- Gen-AI stacked mid-rotor copper-max — `champions/runners-2026-09-26/gen-ai-stacked-midrotor-coppermax/` (~11–23 W)
- Gen-AJ vernier flux-claw ultra — `champions/runners-2026-09-26/gen-aj-vernier-fluxclaw-ultra/` (~10–22 W)

## Prior champion (still valid wound kit)

Gen-AE dual-rotor hyper-micro — `champions/2026-09-25-gen-ae-dual-rotor-hypermicro/` (~12–26 W @200, m2m 5.00, magnets @ R=54). Archived as previous tip.

Gen-AB dual-rotor ultra-micro — `champions/2026-09-24-gen-ab-dual-rotor-ultramicro/` (~11–23 W @200).

Gen-Y dual-rotor micro-gap — `champions/2026-09-23-gen-y-dual-rotor-microgap/` (~10–21 W @200).

Gen-V dual-rotor nano-gap — `champions/2026-09-22-gen-v-dual-rotor-nanogap/` (~9–19 W @200).

Gen-S dual-rotor ultra-thin — `champions/2026-09-21-gen-s-dual-rotor-ultrathin/` (~8–17 W @200).

## Withdrawn

Prior Gen-A–L kits fail the wound-coil gate (gaps sized to bare former). Do not print those for intended air-gap performance.
