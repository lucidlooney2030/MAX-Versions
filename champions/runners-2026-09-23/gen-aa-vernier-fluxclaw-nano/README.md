# Gen-AA — Vernier flux-claw dual nano-gap / wound-aware 12-coil 3φ

**#3 night 2026-09-23 ET.** Improves Gen-X vernier: 8+8 large poles vernier-offset, Ø5 claw/edge assists, dual magnet faces, tighter m2m **6.16** (vs Gen-X 6.76), 145 t, run_clear 0.70.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | OD **0.45 mm**; ~1 lb ≈ 390 m |
| Turns | **145** / pancake | 12×145×~0.115 ≈ **200 m** |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.945 mm** | |
| `former_web` / `flange_t` | **2.0 / 0.75** | |
| `former_bare_h` | **3.5 mm** | |
| `coil_envelope_h` | **4.76 mm** | |
| `run_clear` | **0.70 mm** | |
| `gap_spacer_h` | **1.33 mm** | |
| `m2m` | **6.16 mm** | ≤6.4 target (beats Gen-X 6.76) |
| magnet→wound | **0.70 mm** | **PASS** |

## Magnet inventory

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A vernier poles @ R=50 |
| Ø20×5 | **8** | Rotor B @ R=50, +22.5° vernier |
| Ø5×5 | **24** | Rotor A claws @ R={36,50,64} |
| Ø5×5 | **24** | Rotor B claws (+22.5°) |

### Polarity / vernier
8+8 poles create vernier spatial harmonic vs 12 coils. Halbach/edge smalls concentrate flux into claw tips toward coil windows.

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace **M4 @ R≈68** before second magnet face. Wind 12 formers first.

## Stack

```
rotor A → run_clear 0.70 → wound (+Z) → envelope 4.76 → wound (−Z) → run_clear 0.70 → rotor B
m2m = 6.16 mm
```

## Estimated EMF / power

Vernier + tighter gap vs Gen-X; B≈0.50–0.75 T effective.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~5–10 V | ~2.5–6 W |
| **200** | **~10–20 V** | **~7–15 W** |
| 300 | ~15–30 V | ~12–25 W |
| 500–1000 | ~25–65 V | ~20–50 W (thermal) |

## Modular interface

Gen-E: Ø8 / 608 / 6×M3 @ R=72 / M4 brace @ R≈68.

## Parts

Same BOM structure as Gen-Y (12 formers, dual rotors, mid stator, endbells, spacers, collars, fit coupon). One-plate in `print-packs/one-plate/`.

## Print / safety

0.4 mm nozzle. **DUAL-ROTOR CLAP.** Wind before assembly.
