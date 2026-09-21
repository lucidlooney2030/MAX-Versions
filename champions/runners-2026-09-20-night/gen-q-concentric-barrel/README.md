# Gen-Q — Concentric dual-gap Halbach barrel / wound-aware 12-bobbin 3φ

Wound-compliant concentric radial: **inner + outer** magnet drums, bobbins in mid annulus. Slots sized to **wound** tip/side build.

**Wound gate: PASS** — magnet→wound tip ≈ **1.05 mm**.

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | OD **0.45 mm** |
| Turns | **110** / bobbin | |
| fill | **0.70** | |
| `wind_build_radial` (tip) | **0.945 mm** | `3 × 0.45 × 0.7` |
| `wind_build_side` | **0.63 mm** | `2 × 0.45 × 0.7` |
| bare bobbin W×D | **10 × 14 mm** | |
| `wound_w` / `wound_d` | **11.26 / 14.95 mm** | |
| Slot W×D | **12.8 × 16.5 mm** | clears wound |
| tip bare gap | **≥ 2.0 mm** | magnet → former tip |
| magnet→wound tip | **≈ 1.05 mm** | **PASS** (≥0.85) |
| `run_clear` | **0.85 mm** | documented min |

## Magnet inventory

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **12** | Outer drum, poles inward @ R≈52 |
| Ø20×5 | **4** | Inner hub, poles outward @ R≈22 |
| Ø5×5 | **36** | Outer Halbach assists (end-face / inter-pole) |
| Ø5×5 | **12** | Inner hub assists |

Total **16 + 48** — full kit.

### Polarity map

**Outer drum:** 12 poles alternate N-S facing inward (toward bobbin tips).  
**Inner hub:** 4 poles N-S facing outward; align so flux crosses bobbin windows.  
**Halbach smalls:** reinforce outer pole tips / circumferential return.  
**Wind all 12 bobbins before dropping into stator slots.**

## Coils

- **12** radial bobbins, 3φ × 4
- 26 AWG × 110 t; mean turn ~0.08 m → ≈ **105 m** copper

## Estimated power

Dual cylindrical gaps, B≈0.45–0.65 T at wound tip.

| RPM | Est. matched power |
|-----|--------------------|
| 120 | **~2–5 W** |
| 200 | **~4.5–10 W** |
| 300 | **~7–16 W** |
| 500–1000 | **~15–40 W** (thermal) |

## Modular interface

Shaft Ø8 / bore 8.35; 608ZZ Ø21.85×7.2; endbell **6× M3 @ R≈54** (barrel family).

## Parts

| File | Qty |
|------|-----|
| `rotor_outer_drum.stl` | 1 |
| `rotor_inner_hub.stl` | 1 |
| `stator_annulus.stl` | 1 |
| `coil_former.stl` | **12** |
| `endbell_front/rear.stl` | 1 each |
| `shaft_collar.stl` | 2–4 |
| `fit_coupon.stl` | 1 |

**Wind before assembly.** Runner — champion candidate is Gen-P.
