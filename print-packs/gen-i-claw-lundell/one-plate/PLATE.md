# One-plate pack — Gen-I Claw-pole / Lundell / 12-coil

**Printer:** Anycubic Kobra 3 Max Combo (420×420 mm bed, usable **410×410** with margin)
**Gap between parts:** ~**5 mm** (circle-aware nesting for disk parts)
**Packed span:** **410.0 × 410.0 mm**
**Fits one plate:** **YES**

## Quantity list

| Part | Qty | Approx XY (mm) | Shape |
|------|-----|----------------|-------|
| `rotor_claw_poles` | 1 | 136.0 × 136.0 | disk |
| `claw_return_ring` | 1 | 140.0 × 140.0 | disk |
| `stator_core` | 1 | 132.0 × 132.0 | disk |
| `coil_former` | 12 | 20.0 × 16.0 | rect |
| `endbell_front` | 1 | 150.0 × 150.0 | disk |
| `endbell_rear` | 1 | 150.0 × 150.0 | disk |
| `shaft_collar` | 2 | 22.0 × 22.0 | rect |

## Files

- `one_plate_layout.stl` — all instances arranged flat on Z=0
- `preview.png` — labeled top-down orthographic view
- Individual STLs in `../parts/` (filename includes `_xN` qty)

## Print notes

Magnet face up on rotor; claw finger slots up — insert steel before near magnets. Single rotor (safer than dual AFPM). Gen-B endbell family R=60. Fit coupon.

- Orient as designed in source READMEs (magnet pockets open upward where applicable).
- Slice the combined plate as one job, or print individual parts from `parts/`.
- Brim recommended for large rotors/carriers.
- Disk parts nested circle-aware (AABB corners may visually overlap; solid geometry does not collide).

## Slice defaults

- **Nozzle:** 0.4 mm (0.6 OK endbells/claw)
- **Layer height:** 0.20 mm default
- **Estimated filament (full plate):** ~300–380 g PLA/PETG @ 1.75 mm (rough; verify in slicer)
- **Margins:** ~5 mm from 420×420 bed edge → usable 410×410
