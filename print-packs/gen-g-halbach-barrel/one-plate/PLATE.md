# One-plate pack — Gen-G Halbach dual-radial barrel / 12-coil

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_outer_drum` | 1 | 124.0 × 124.0 | disk |
| `rotor_inner_hub` | 1 | 61.0 × 61.0 | disk |
| `stator_annulus` | 1 | 110.0 × 110.0 | disk |
| `coil_former` | 12 | 7.8 × 16.0 | rect |
| `endbell_front` | 1 | 130.0 × 130.0 | disk |
| `endbell_rear` | 1 | 129.8 × 130.0 | disk |
| `shaft_collar` | 2 | 22.0 × 22.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

Hub-down drums; flange on bed for stator. Radial magnet glue jig. Fit coupon radial pockets + 608. Dual cylindrical attraction — seat endbells before final glue.

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).

## Slice defaults

- **Nozzle:** 0.4 mm (0.6 OK endbells/drum)
- **Layer height:** 0.20 mm default
- **Estimated filament (full plate):** ~280–350 g PLA/PETG @ 1.75 mm (rough; verify in slicer)
- **Margins:** ~5 mm from 420×420 bed edge → usable 410×410
