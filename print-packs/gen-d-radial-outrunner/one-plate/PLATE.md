# One-plate pack — Gen-D Radial-flux outrunner / 12-coil

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_drum` | 1 | 116.0 × 116.0 | disk |
| `stator_shell` | 1 | 180.0 × 180.0 | disk |
| `coil_former` | 12 | 8.0 × 14.0 | rect |
| `endbell_front` | 1 | 180.0 × 180.0 | disk |
| `endbell_rear` | 1 | 180.0 × 180.0 | disk |
| `shaft_collar` | 2 | 22.0 × 22.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

Hub down on rotor_drum; flange on bed for stator_shell. Less axial clap than dual AFPM. 0.4–0.6 mm nozzle OK for shell/endbells.

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).
