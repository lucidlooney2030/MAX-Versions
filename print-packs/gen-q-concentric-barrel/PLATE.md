# One-plate pack — Gen-Q Concentric dual-gap Halbach barrel / 12-bobbin wound

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_outer_drum` | 1 | 127.9 × 128.0 | disk |
| `rotor_inner_hub` | 1 | 30.0 × 30.0 | disk |
| `stator_annulus` | 1 | 95.9 × 96.0 | disk |
| `coil_former` | 12 | 12.4 × 16.4 | rect |
| `endbell_front` | 1 | 134.0 × 131.0 | disk |
| `endbell_rear` | 1 | 134.0 × 131.0 | disk |
| `shaft_collar` | 2 | 22.0 × 22.0 | rect |
| `fit_coupon` | 1 | 44.0 × 30.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

WOUND PASS. Slots sized for wound tip/side. magnet↔wound tip≈1.05 mm. Hub-down drums; flange on bed for bobbins.

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).
