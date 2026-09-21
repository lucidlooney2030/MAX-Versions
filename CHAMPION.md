# Current champion — MAX-Versions

**As of 2026-09-20-night (ET ~9:02 PM): Gen-P dual-rotor thin-gap AFPM — wound-compliant MAX tip.**

Path: [`champions/2026-09-20-night-gen-p-dual-rotor-thin/`](champions/2026-09-20-night-gen-p-dual-rotor-thin/)  
Print pack: [`print-packs/gen-p-dual-rotor-thin/`](print-packs/gen-p-dual-rotor-thin/)

Gen-P **dethrones Gen-M** on estimated watts (~7–15 W vs ~5–12 W @200 RPM): dual magnet faces across a **thin** wound mid-stator (`m2m=7.26 mm`) restore B while magnet↔wound stays **0.80 mm PASS**.

## Wound math summary (26 AWG × 120 t, 12 pancakes)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | **2** (thinner than Gen-M’s 3) |
| `wind_build_axial` | **0.63 mm** / face |
| `former_web` / `flange_t` | 2.6 / 0.9 mm |
| `coil_envelope_h` | **5.66 mm** |
| `run_clear` | **0.80 mm** (magnet → **wound**, each gap) |
| `m2m` | **7.26 mm** = envelope + 2×run_clear |
| `gap_spacer_h` | **1.43 mm** |
| Magnets | 8+8 Ø20 + 24+24 Ø5 Halbach (full kit) |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.

## Runners (same night, also PASS)

- Gen-R vernier AFPM — `champions/runners-2026-09-20-night/gen-r-vernier-afpm/` (~5.5–12 W)
- Gen-Q concentric Halbach barrel — `champions/runners-2026-09-20-night/gen-q-concentric-barrel/` (~4.5–10 W)

## Prior champion (still valid wound kit)

Gen-M dual-stator sandwich — `champions/2026-09-20-gen-m-wound/` (~5–12 W @200). Kept as archive / alternate single-rotor build.

## Withdrawn

Gen-A–L remain withdrawn for bare-former gap sizing.

## Safety

**DUAL-ROTOR CLAP** — brace with M4 rods before seating the second magnet face. Wind all formers before assembly.
