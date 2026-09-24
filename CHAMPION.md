# Current champion — MAX-Versions

**As of 2026-09-23-night (ET ~9:02 PM): Gen-Y dual-rotor micro-gap AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-09-23-gen-y-dual-rotor-microgap/`](champions/2026-09-23-gen-y-dual-rotor-microgap/)  
Print pack: [`print-packs/gen-y-dual-rotor-microgap/`](print-packs/gen-y-dual-rotor-microgap/)

Gen-Y **dethrones Gen-V** on estimated watts (~10–21 W vs ~9–19 W @200 RPM): dual magnet faces across a **micro-gap** wound mid-stator (`m2m=5.76 mm` vs Gen-V 6.16) + larger copper window (ID21–OD60) + 150 t while magnet↔wound stays **0.65 mm PASS**.

## Wound math summary (26 AWG × 150 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | **1.8 / 0.70 mm** (thinner than Gen-V) |
| `coil_envelope_h` | **4.46 mm** |
| `run_clear` | **0.65 mm** (magnet → **wound**, each gap) |
| `m2m` | **5.76 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.28 mm** |
| Magnets | 8+8 Ø20 @ R=52 + 24+24 Ø5 Halbach (full kit) |
| Copper | 12×150×~0.12 ≈ **216 m** (fits ~390 m spool) |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.  
Night envelope: **[WOUND_ENVELOPE_2026-09-23.md](WOUND_ENVELOPE_2026-09-23.md)**

## Runners (same night, also PASS)

- Gen-Z dual-stator mid-rotor — `champions/runners-2026-09-23/gen-z-dual-stator-midrotor/` (~8–17 W)
- Gen-AA vernier flux-claw nano — `champions/runners-2026-09-23/gen-aa-vernier-fluxclaw-nano/` (~7–15 W)

## Prior champion (still valid wound kit)

Gen-V dual-rotor nano-gap — `champions/2026-09-22-gen-v-dual-rotor-nanogap/` (~9–19 W @200). Archived as previous tip.

Gen-S dual-rotor ultra-thin — `champions/2026-09-21-gen-s-dual-rotor-ultrathin/` (~8–17 W @200).

Gen-P dual-rotor thin-gap — `champions/2026-09-20-night-gen-p-dual-rotor-thin/` (~7–15 W @200).

## Withdrawn

Prior Gen-A–L kits fail the wound-coil gate (gaps sized to bare former). Do not print those for intended air-gap performance.
