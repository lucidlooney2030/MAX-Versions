# One-plate pack — Gen-A Dual-rotor AFPM 8+8 / 6-coil

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_carrier_a` | 2 | 131.0 × 131.0 | disk |
| `stator_core` | 1 | 126.0 × 126.0 | disk |
| `coil_former` | 6 | 35.2 × 36.6 | rect |
| `endbell_front` | 1 | 142.0 × 132.0 | disk |
| `endbell_rear` | 1 | 142.0 × 132.0 | disk |
| `shaft_collar` | 2 | 18.0 × 18.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

Same rotors as Gen-B. Magnet face up. Dual-rotor attraction hazard — braces first.

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).
