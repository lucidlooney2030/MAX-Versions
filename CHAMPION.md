# Current champion — MAX-Versions

**As of 2026-09-22-night (ET ~9:02 PM): Gen-V dual-rotor nano-gap AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-09-22-gen-v-dual-rotor-nanogap/`](champions/2026-09-22-gen-v-dual-rotor-nanogap/)  
Print pack: [`print-packs/gen-v-dual-rotor-nanogap/`](print-packs/gen-v-dual-rotor-nanogap/)

Gen-V **dethrones Gen-S** on estimated watts (~9–19 W vs ~8–17 W @200 RPM): dual magnet faces across a **nano-gap** wound mid-stator (`m2m=6.16 mm` vs Gen-S 6.66) + larger copper window + 140 t while magnet↔wound stays **0.70 mm PASS**.

## Wound math summary (26 AWG × 140 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | **2.0 / 0.75 mm** (thinner than Gen-S) |
| `coil_envelope_h` | **4.76 mm** |
| `run_clear` | **0.70 mm** (magnet → **wound**, each gap) |
| `m2m` | **6.16 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.33 mm** |
| Magnets | 8+8 Ø20 @ R=52 + 24+24 Ø5 Halbach (full kit) |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.  
Night envelope: **[WOUND_ENVELOPE_2026-09-22.md](WOUND_ENVELOPE_2026-09-22.md)**

## Runners (same night, also PASS)

- Gen-W triple-rotor dual-stator — `champions/runners-2026-09-22/gen-w-triple-rotor-dual-stator/` (~7–15 W)
- Gen-X vernier flux-claw dual — `champions/runners-2026-09-22/gen-x-vernier-fluxclaw-dual/` (~6–13 W)

## Prior champion (still valid wound kit)

Gen-S dual-rotor ultra-thin — `champions/2026-09-21-gen-s-dual-rotor-ultrathin/` (~8–17 W @200). Archived as previous tip.

Gen-P dual-rotor thin-gap — `champions/2026-09-20-night-gen-p-dual-rotor-thin/` (~7–15 W @200).

## Withdrawn

Gen-A–L remain withdrawn for bare-former gap sizing.

## Safety

**DUAL-ROTOR CLAP** — brace with M4 rods before seating the second magnet face. Nano-gap (0.70 mm) leaves less forgiveness. Wind all formers before assembly.
