# Current champion — MAX-Versions

**As of 2026-09-25-night (ET ~9:20 PM): Gen-AE dual-rotor hyper-micro-gap AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-09-25-gen-ae-dual-rotor-hypermicro/`](champions/2026-09-25-gen-ae-dual-rotor-hypermicro/)  
Print pack: [`print-packs/gen-ae-dual-rotor-hypermicro/`](print-packs/gen-ae-dual-rotor-hypermicro/)

Gen-AE **dethrones Gen-AB** on estimated watts (~12–26 W vs ~11–23 W @200 RPM): dual magnet faces across a **hyper-micro-gap** wound mid-stator (`m2m=5.00 mm` vs Gen-AB 5.22) + larger copper window (ID18.5–OD64) + 170 t while magnet↔wound stays **0.52 mm PASS**.

## Wound math summary (26 AWG × 170 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | **1.50 / 0.60 mm** (thinner than Gen-AB) |
| `coil_envelope_h` | **3.96 mm** |
| `run_clear` | **0.52 mm** (magnet → **wound**, each gap) |
| `m2m` | **5.00 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.15 mm** |
| Magnets | 8+8 Ø20 @ R=54 + 24+24 Ø5 Halbach @ R={42,54,66} (full kit) |
| Copper | 12×170×~0.130 ≈ **265 m** (fits ~390 m spool) |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.  
Night envelope: **[WOUND_ENVELOPE_2026-09-25.md](WOUND_ENVELOPE_2026-09-25.md)**

## Runners (same night, also PASS)

- Gen-AF stacked mid-rotor Halbach copper-max — `champions/runners-2026-09-25/gen-af-stacked-midrotor-coppermax/` (~10–21 W)
- Gen-AG vernier flux-claw hyper — `champions/runners-2026-09-25/gen-ag-vernier-fluxclaw-hyper/` (~9–19 W)

## Prior champion (still valid wound kit)

Gen-AB dual-rotor ultra-micro — `champions/2026-09-24-gen-ab-dual-rotor-ultramicro/` (~11–23 W @200). Archived as previous tip.

Gen-Y dual-rotor micro-gap — `champions/2026-09-23-gen-y-dual-rotor-microgap/` (~10–21 W @200).

Gen-V dual-rotor nano-gap — `champions/2026-09-22-gen-v-dual-rotor-nanogap/` (~9–19 W @200).

Gen-S dual-rotor ultra-thin — `champions/2026-09-21-gen-s-dual-rotor-ultrathin/` (~8–17 W @200).

## Withdrawn

Prior Gen-A–L kits fail the wound-coil gate (gaps sized to bare former). Do not print those for intended air-gap performance.
