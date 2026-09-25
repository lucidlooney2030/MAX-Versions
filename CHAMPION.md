# Current champion — MAX-Versions

**As of 2026-09-24-night (ET ~9:15 PM): Gen-AB dual-rotor ultra-micro-gap AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-09-24-gen-ab-dual-rotor-ultramicro/`](champions/2026-09-24-gen-ab-dual-rotor-ultramicro/)  
Print pack: [`print-packs/gen-ab-dual-rotor-ultramicro/`](print-packs/gen-ab-dual-rotor-ultramicro/)

Gen-AB **dethrones Gen-Y** on estimated watts (~11–23 W vs ~10–21 W @200 RPM): dual magnet faces across an **ultra-micro-gap** wound mid-stator (`m2m=5.22 mm` vs Gen-Y 5.76) + larger copper window (ID20–OD62) + 160 t while magnet↔wound stays **0.58 mm PASS**.

## Wound math summary (26 AWG × 160 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | **1.6 / 0.60 mm** (thinner than Gen-Y) |
| `coil_envelope_h` | **4.06 mm** |
| `run_clear` | **0.58 mm** (magnet → **wound**, each gap) |
| `m2m` | **5.22 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.21 mm** |
| Magnets | 8+8 Ø20 @ R=52 + 24+24 Ø5 Halbach (full kit) |
| Copper | 12×160×~0.125 ≈ **240 m** (fits ~390 m spool) |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.  
Night envelope: **[WOUND_ENVELOPE_2026-09-24.md](WOUND_ENVELOPE_2026-09-24.md)**

## Runners (same night, also PASS)

- Gen-AC stacked dual-gap mid-rotor Halbach — `champions/runners-2026-09-24/gen-ac-stacked-dualgap-halbach/` (~9–19 W)
- Gen-AD vernier flux-claw nano — `champions/runners-2026-09-24/gen-ad-vernier-fluxclaw-nano/` (~8–17 W)

## Prior champion (still valid wound kit)

Gen-Y dual-rotor micro-gap — `champions/2026-09-23-gen-y-dual-rotor-microgap/` (~10–21 W @200). Archived as previous tip.

Gen-V dual-rotor nano-gap — `champions/2026-09-22-gen-v-dual-rotor-nanogap/` (~9–19 W @200).

Gen-S dual-rotor ultra-thin — `champions/2026-09-21-gen-s-dual-rotor-ultrathin/` (~8–17 W @200).

## Withdrawn

Prior Gen-A–L kits fail the wound-coil gate (gaps sized to bare former). Do not print those for intended air-gap performance.
