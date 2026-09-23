# Gen-X — Vernier flux-claw dual-gap AFPM / wound-aware 12-coil 3φ

**Evolution of Gen-U** (night 2026-09-22 ET). Dual-rotor AFPM with vernier pole count (8+8 Ø20 = 16-pole-equivalent) + Ø5 flux claws concentrating into coil windows. `m2m=6.76` ≤6.8 target; magnet↔wound **0.75 mm PASS**.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm** |
| Turns | **135** / pancake | 12×135×~0.11 m ≈ **178 m** |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.945 mm** | |
| `former_web` / `flange_t` | **2.4 / 0.80 mm** | |
| `former_bare_h` | **4.0 mm** | |
| `coil_envelope_h` | **5.26 mm** | |
| `run_clear` | **0.75 mm** | |
| `gap_spacer_h` | **1.38 mm** | |
| `m2m` | **6.76 mm** | ≤6.8 target |
| magnet→wound | **0.75 mm** | **PASS** both sides |

## Magnet inventory

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=50 vernier poles |
| Ø20×5 | **8** | Rotor B @ R=50, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A claws @ R={36,50,64} |
| Ø5×5 | **24** | Rotor B claws (+22.5°) |

Ø5 claws at pole tips (inner/outer) + mid circumferential assists concentrate flux into vernier coil windows.

### Polarity map

Rotor A/B: alternate N-S with N toward stator. Claws: tip smalls same polarity as adjacent large; mid smalls Halbach-shift.

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace **M4 @ R≈68** before second magnet face. Wind all 12 formers first.

## Coils

- **12** pancakes 3φ; dual-gap each turn
- **26 AWG × 135 t**

## Stack

```
rotor A (vernier + claws)
  └── run_clear 0.75
wound copper (+Z)
  └── coil_envelope_h 5.26
wound copper (−Z)
  └── run_clear 0.75
rotor B (vernier + claws)
—— m2m = 6.76 mm ——
```

## Estimated EMF / power

Vernier + dual gap + claws → B_gap ≈ **0.50–0.75 T**. Slightly less raw B than Gen-V nano-gap but better low-RPM matching.

| RPM | Est. matched power |
|-----|--------------------|
| 120 | ~2.5–6 W |
| **200** | **~6–13 W** |
| 300 | ~10–22 W |
| 500–1000 | ~18–42 W (thermal) |

## Modular interface

Shaft Ø8 / bore 8.35; 608ZZ; **6× M3 @ R=72**; brace 4× M4; heat-set M3.

## Parts to print

| File | Qty |
|------|-----|
| `rotor_face_a.stl` | 1 |
| `rotor_face_b.stl` | 1 |
| `stator_core.stl` | 1 |
| `coil_former.stl` | **12** |
| `gap_spacer.stl` | **12** |
| `endbell_front/rear.stl` | 1 each |
| `shaft_collar.stl` | 2–4 |
| `fit_coupon.stl` | 1 |

One-plate: `print-packs/one-plate/`.

## BOM

16×Ø20×5 + 48×Ø5×5 N52; Ø8 shaft; 608ZZ; M3/M4; **26 AWG** ~1 lb.

## Print / safety

**0.4 mm** nozzle. **DUAL-ROTOR CLAP.** Wind first.
