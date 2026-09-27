# Gen-AH — Dual-rotor copper-centroid hypermicro AFPM / wound-aware 12-coil 3φ

**PRIMARY challenger vs Gen-AE** (night 2026-09-26 ET). Dual magnet faces across a **hyper-micro-gap** wound mid-stator (`m2m=4.96 mm` vs Gen-AE `5.00`) + **copper-centroid** magnet placement (Ø20 @ **R=41** over copper window centroid ~41) + **180 t** restore B×N while magnet↔wound stays **0.50 mm PASS**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb spool ≈ 390 m |
| Turns | **180** / pancake | 12×180×~0.136 m ≈ **294 m** copper (fits 1 lb) |
| fill | **0.70** | packing factor |
| layers_per_face | **2** | axial layers proud of each flange |
| `wind_build_axial` | **0.63 mm** | `2 × 0.45 × 0.7` |
| `wind_build_radial` | **0.945 mm** | `3 × 0.45 × 0.7` |
| `former_web` / `flange_t` | **1.50 / 0.60 mm** | print-safe mins |
| `former_bare_h` | **2.70 mm** | |
| `coil_envelope_h` | **3.96 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.50 mm** | magnet → **wound** (each gap) |
| `gap_spacer_h` | **1.13 mm** | `run_clear + wind_build_axial` |
| `m2m` | **4.96 mm** | `coil_envelope_h + 2×run_clear` (**NOT** bare) |
| magnet→wound | **0.50 mm** | **PASS** both sides (≥0.5) |

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`.

## Why this beats Gen-AE

Gen-AE magnets sit at **R=54** while copper window ID18.5–OD64 has centroid ~41. Ø20 disks at R=54 only cover ~44–64, starving **inner copper**. Gen-AH places Ø20 @ **R=41** (covers ~31–51 over centroid) + Halbach Ø5 @ {26,41,58} to extend coverage onto inner/outer copper. Also run_clear 0.50 (vs 0.52) and 180 t (vs 170).

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=41 mm, 45° steps |
| Ø20×5 | **8** | Rotor B @ R=41 mm, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A Halbach @ R={26,41,58} |
| Ø5×5 | **24** | Rotor B Halbach (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **156 mm**, thick **7.5 mm**.

### Polarity map

**Rotor A (+Z):** alternate N-S (even indices N toward stator).  
**Rotor B (−Z):** alternate N-S with N toward stator on even indices (flux through coils).  
**Halbach smalls:** mid circumferential; inner/outer reinforce pole tips AND extend radial coverage onto inner/outer copper.

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. Glue one rotor completely, dry-fit wound stator + gap_spacers, brace, then approach second rotor slowly. **Wind all 12 formers before assembly.** Hyper-micro-gap (0.50 mm) leaves **minimal** forgiveness — do not skip braces. Flanges 0.60 mm / web 1.50 mm: **print with brim**, verify no warp before winding.

## Coils

- **12** pancakes on single mid stator (3φ × 4) — dual-gap each turn
- **26 AWG × 180 t**; star 3φ
- Mean turn ~0.136 m → copper budget ~294 m on 1 lb 26 AWG

## Stack

```
rotor A magnet face
  └── run_clear 0.50 mm
wound copper (+Z face)
  └── coil_envelope_h 3.96 through mid stator
wound copper (−Z face)
  └── run_clear 0.50 mm
rotor B magnet face
—— m2m = 4.96 mm ——
```

## Estimated EMF / power

Method (consistent with Gen-AE night): rough AFPM scaling from copper window area × turns × B_gap × RPM. Assumptions: N52 Halbach-boosted B_gap ≈ **0.70–0.98 T** per gap (thinner m2m + better overlap), fill 0.70, series/3φ star, each coil sees **two** magnet faces.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~10–18 V | ~7–13 W |
| **200** | **~17–38 V** | **~13–28 W** |
| 300 | ~26–56 V | ~24–45 W |
| 500–1000 | ~45–120 V | ~38–100 W (thermal) |

**vs Gen-AE (~12–26 W @200, m2m 5.00):** Gen-AH targets **~13–28 W @200** — copper-centroid magnets + 180 t + m2m 4.96. Midpoint favors Gen-AH as new MAX tip pending bench.

## Modular interface

| Spec | Value |
|------|-------|
| Shaft | Ø8 / bore Ø8.35 |
| Bearings | 608ZZ seats Ø21.85×7.2 |
| Hub | Ø30×10 |
| Endbell / stator bolts | **6× M3 @ R=72** (Gen-E family) |
| Brace | **4× M4 @ R≈68** (REQUIRED) |
| M3 clear | Ø3.4–3.5 |
| Heat-set | M3 inserts preferred |

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_face_a.stl` | 1 | Magnet face up; brim |
| `rotor_face_b.stl` | 1 | +22.5° pocket map |
| `stator_core.stl` | 1 | Wound-sized bays |
| `coil_former.stl` | **12** | **Wind before assembly**; thin flanges + brim |
| `gap_spacer.stl` | **12** | h=`gap_spacer_h` 1.13 |
| `endbell_front.stl` | 1 | |
| `endbell_rear.stl` | 1 | (or print front ×2) |
| `shaft_collar.stl` | 4 | |
| `fit_coupon.stl` | 1 | Print first |

One-plate: see `print-packs/one-plate/` (Kobra 3 Max ≤408×408 mm asserted).
