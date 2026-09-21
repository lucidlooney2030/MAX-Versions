# One-plate pack — Gen-R Vernier AFPM 18-coil / 8+8 wound

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_vernier_a` | 1 | 149.9 × 150.0 | disk |
| `rotor_vernier_b` | 1 | 149.9 × 150.0 | disk |
| `stator_core` | 1 | 155.9 × 156.0 | disk |
| `coil_former` | 18 | 37.2 × 17.9 | rect |
| `gap_spacer` | 12 | 14.0 × 14.0 | rect |
| `endbell_front` | 1 | 160.0 × 157.0 | disk |
| `endbell_rear` | 1 | 160.0 × 157.0 | disk |
| `shaft_collar` | 2 | 22.0 × 22.0 | rect |
| `fit_coupon` | 1 | 55.0 × 28.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

WOUND PASS. Vernier +11.25°. DUAL-ROTOR CLAP. steel_return_register OPTIONAL — print ×0–2 separately (not on one-plate). Wind 18 formers. m2m=7.16.

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).
