# One-plate pack — Gen-B Dual-rotor AFPM 8+8 / 12-coil

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_carrier_a` | 2 | 131.0 × 131.0 | disk |
| `stator_core` | 1 | 128.0 × 128.0 | disk |
| `coil_former` | 12 | 34.0 × 21.8 | rect |
| `endbell_front` | 1 | 142.0 × 132.0 | disk |
| `endbell_rear` | 1 | 142.0 × 132.0 | disk |
| `shaft_collar` | 2 | 18.0 × 18.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

Magnet pockets open upward. Dual-rotor clap hazard — braces before magnets. 0.4 mm nozzle for carriers/formers; 0.6 OK for endbells. PETG/ABS preferred.

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).
