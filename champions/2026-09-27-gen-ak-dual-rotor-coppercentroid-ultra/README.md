# Gen-AK — Dual-rotor copper-centroid ultra AFPM / wound-aware 12-coil 3φ

**PRIMARY challenger vs Gen-AH** (night 2026-09-27 ET). Dual magnet faces across a **ultra-micro-gap** wound mid-stator (`m2m=4.86 mm` vs Gen-AH `4.96`) + **copper-centroid** magnet placement (Ø20 @ **R=40** over copper window centroid ~40) + **190 t** + thinner `former_web=1.40` while magnet↔wound stays **0.50 mm PASS**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb spool ≈ 390 m |
| Turns | **190** / pancake | 12×190×~0.132 m ≈ **301 m** copper (fits 1 lb) |
| fill | **0.70** | packing factor |
| layers_per_face | **2** | axial layers proud of each flange |
| `wind_build_axial` | **0.63 mm** | `2 × 0.45 × 0.7` |
| `wind_build_radial` | **0.945 mm** | `3 × 0.45 × 0.7` |
| `former_web` / `flange_t` | **1.40 / 0.60 mm** | thinner web vs AH 1.50 |
| `former_bare_h` | **2.60 mm** | |
| `coil_envelope_h` | **3.86 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.50 mm** | magnet → **wound** (each gap) |
| `gap_spacer_h` | **1.13 mm** | `run_clear + wind_build_axial` |
| `m2m` | **4.86 mm** | `coil_envelope_h + 2×run_clear` (**NOT** bare) |
| magnet→wound | **0.50 mm** | **PASS** both sides (≥0.5) |

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`.

## Why this beats Gen-AH

Gen-AH: Ø20 @ R=41, 180 t, former_web 1.50, m2m 4.96, ~13–28 W. Gen-AK tightens copper-centroid to **R=40**, adds **+10 turns** (190), thins former_web to **1.40** → envelope 3.86 / m2m **4.86**, Halbach Ø5 @ {25,40,57} covering the copper window. Midpoint ~22 W vs AH ~20.5 W.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=40 mm, 45° steps |
| Ø20×5 | **8** | Rotor B @ R=40 mm, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A Halbach @ R={25,40,57} |
| Ø5×5 | **24** | Rotor B Halbach (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **156 mm**, thick **7.5 mm**.

### Polarity map

**Rotor A (+Z):** alternate N-S (even indices N toward stator).  
**Rotor B (−Z):** alternate N-S with N toward stator on even indices (flux through coils).  
**Halbach smalls:** mid circumferential; inner/outer reinforce pole tips AND extend radial coverage onto inner/outer copper.

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. Glue one rotor completely, dry-fit wound stator + gap_spacers, brace, then approach second rotor slowly. **Wind all 12 formers before assembly.** Ultra-micro-gap (0.50 mm) leaves **minimal** forgiveness — do not skip braces. Flanges 0.60 mm / web 1.40 mm: **print with brim**, verify no warp before winding.

## Coils

- **12** pancakes on single mid stator (3φ × 4) — dual-gap each turn
- **26 AWG × 190 t**; star 3φ
- Mean turn ~0.132 m → copper budget ~301 m on 1 lb 26 AWG

## Stack

```
rotor A magnet face
  └── run_clear 0.50 mm
wound copper (+Z face)
  └── coil_envelope_h 3.86 through mid stator
wound copper (−Z face)
  └── run_clear 0.50 mm
rotor B magnet face
—— m2m = 4.86 mm ——
```

## Estimated EMF / power

Method (consistent with Gen-AH night): rough AFPM scaling from copper window area × turns × B_gap × RPM. Assumptions: N52 Halbach-boosted B_gap ≈ **0.72–1.00 T** per gap (thinner m2m + tighter overlap), fill 0.70, series/3φ star, each coil sees **two** magnet faces.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~11–19 V | ~8–14 W |
| **200** | **~18–40 V** | **~14–30 W** |
| 300 | ~28–60 V | ~26–48 W |
| 500–1000 | ~48–130 V | ~42–110 W (thermal) |

**vs Gen-AH (~13–28 W @200, m2m 4.96):** Gen-AK targets **~14–30 W @200** — copper-centroid @ R=40 + 190 t + m2m 4.86. Midpoint favors Gen-AK as new MAX tip pending bench.

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

One-plate: see `print-packs/one-plate/` (Kobra 3 Max ≤408×408 mm asserted; **404×404**).
