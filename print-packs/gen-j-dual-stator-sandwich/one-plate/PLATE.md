# One-plate pack — Gen-J Dual-stator sandwich AFPM / 12+12 coil

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_sandwich` | 1 | 148.0 × 148.0 | disk |
| `stator_core` | 2 | 152.0 × 152.0 | disk |
| `coil_former` | 18 | 42.0 × 34.7 | rect |
| `gap_spacer` | 12 | 14.0 × 14.0 | rect |
| `endbell_front` | 1 | 156.0 × 153.0 | disk |
| `endbell_rear` | 1 | 156.0 × 153.0 | disk |
| `shaft_collar` | 2 | 22.0 × 22.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

Magnet faces on rotor; flange on bed for formers/stators. Brace both stators. Fit coupon dual pockets + 608 + gap spacer. Single rotor (lower clap than dual AFPM).

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).
