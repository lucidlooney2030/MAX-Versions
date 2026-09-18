# One-plate pack — Gen-E Nested dual-ring AFPM / 9-coil

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_nested` | 2 | 148.0 × 148.0 | disk |
| `stator_core` | 1 | 152.0 × 152.0 | disk |
| `coil_former` | 9 | 26.0 × 20.0 | rect |
| `endbell_front` | 1 | 160.0 × 160.0 | disk |
| `endbell_rear` | 1 | 160.0 × 160.0 | disk |
| `shaft_collar` | 2 | 22.0 × 22.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

Current MAX champion. Magnet face up; brim recommended. Dual-rotor clap hazard. Fit coupon magnet pockets + 608 press before both rotors.

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).
