# Current champion — MAX-Versions

**As of 2026-09-21-night (ET ~9:02 PM): Gen-S dual-rotor ultra-thin AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-09-21-gen-s-dual-rotor-ultrathin/`](champions/2026-09-21-gen-s-dual-rotor-ultrathin/)  
Print pack: [`print-packs/gen-s-dual-rotor-ultrathin/`](print-packs/gen-s-dual-rotor-ultrathin/)

Gen-S **dethrones Gen-P** on estimated watts (~8–17 W vs ~7–15 W @200 RPM): dual magnet faces across an **ultra-thin** wound mid-stator (`m2m=6.66 mm` vs Gen-P 7.26) + larger copper window + 130 t while magnet↔wound stays **0.80 mm PASS**.

## Wound math summary (26 AWG × 130 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | **2.2 / 0.8 mm** (thinner than Gen-P) |
| `coil_envelope_h` | **5.06 mm** |
| `run_clear` | **0.80 mm** (magnet → **wound**, each gap) |
| `m2m` | **6.66 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.43 mm** |
| Magnets | 8+8 Ø20 + 24+24 Ø5 Halbach (full kit) |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.  
Night envelope: **[WOUND_ENVELOPE_2026-09-21.md](WOUND_ENVELOPE_2026-09-21.md)**

## Runners (same night, also PASS)

- Gen-T triple-gap sandwich — `champions/runners-2026-09-21/gen-t-triple-gap-sandwich/` (~6.5–14 W)
- Gen-U vernier flux-claw — `champions/runners-2026-09-21/gen-u-vernier-fluxclaw/` (~5.5–12 W)

## Prior champion (still valid wound kit)

Gen-P dual-rotor thin-gap — `champions/2026-09-20-night-gen-p-dual-rotor-thin/` (~7–15 W @200). Archived as previous tip.

Gen-M dual-stator sandwich — `champions/2026-09-20-gen-m-wound/` (~5–12 W @200).

## Withdrawn

Gen-A–L remain withdrawn for bare-former gap sizing.

## Safety

**DUAL-ROTOR CLAP** — brace with M4 rods before seating the second magnet face. Wind all formers before assembly.
