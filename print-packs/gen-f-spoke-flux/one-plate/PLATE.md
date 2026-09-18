# One-plate pack — Gen-F Spoke / transverse hybrid / 8-window

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**2 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_spokes` | 1 | 150.0 × 150.0 | disk |
| `stator_windows` | 1 | 170.0 × 170.0 | disk |
| `steel_return_ring` | 1 | 172.0 × 172.0 | disk |
| `coil_former` | 8 | 16.0 × 12.0 | rect |
| `endbell_front` | 1 | 180.0 × 180.0 | disk |
| `endbell_rear` | 1 | 180.0 × 180.0 | disk |
| `shaft_collar` | 2 | 22.0 × 22.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

Hub down on rotor_spokes; supports optional under arms. Edge-standing magnets need a jig. Axial pull to return plate.

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).
