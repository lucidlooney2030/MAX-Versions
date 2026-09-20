# Current champion — MAX-Versions

**As of 2026-09-20 (ET): Gen-M dual-stator sandwich — first wound-compliant MAX kit.**

Path: [`champions/2026-09-20-gen-m-wound/`](champions/2026-09-20-gen-m-wound/)  
Print pack: [`print-packs/gen-m-dual-stator-wound/`](print-packs/gen-m-dual-stator-wound/)

Gen-M is the wound-aware evolution of withdrawn Gen-J (best prior watts estimate). Coil formers are wound **before** assembly; air gaps and stator bays use an explicit copper envelope.

## Wound math summary (26 AWG × 120 t)

| Param | Value |
|-------|-------|
| `wire_od` | 0.45 mm |
| `fill` | 0.70 |
| `layers_per_face` | 3 |
| `wind_build_axial` | **0.945 mm** / face |
| `former_web` / `flange_t` | 3.2 / 1.0 mm |
| `coil_envelope_h` | **7.09 mm** |
| `run_clear` | **0.85 mm** (magnet → **wound**) |
| `gap_spacer_h` | **1.795 mm** |
| Coils | 9+9 pancakes, dual-face Halbach rotor |

Gate: **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)** — **PASS**.

## Runners (same night, also PASS)

- Gen-N wound-aware Halbach barrel — see `champions/runners-2026-09-20/`
- Gen-O wound-aware dual-rotor AFPM (M2M ≈ 9.79 mm)

## Withdrawn

Gen-A–L (nights 2026-09-17…20) remain withdrawn for bare-former gap sizing.
