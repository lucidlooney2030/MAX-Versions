# One-plate pack — Gen-P Dual-rotor thin-gap AFPM / 12-coil wound

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_face_a` | 1 | 147.9 × 148.0 | disk |
| `rotor_face_b` | 1 | 147.9 × 148.0 | disk |
| `stator_core` | 1 | 151.9 × 152.0 | disk |
| `coil_former` | 12 | 38.2 × 26.7 | rect |
| `gap_spacer` | 12 | 14.0 × 14.0 | rect |
| `endbell_front` | 1 | 156.0 × 153.0 | disk |
| `endbell_rear` | 1 | 156.0 × 153.0 | disk |
| `shaft_collar` | 2 | 22.0 × 22.0 | rect |
| `fit_coupon` | 1 | 55.0 × 28.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

WOUND PASS. DUAL-ROTOR CLAP — M4 braces before second magnet face. Wind 12 formers before assembly. gap_spacer_h=1.43 from wound math (m2m=7.26).

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).
