# Gen-AQ — Dual-rotor copper-centroid ultra AFPM / wound-aware 12-coil 3φ

**PRIMARY challenger vs Gen-AN** (night 2026-09-29 ET). Dual-rotor AFPM copper-centroid Halbach; `m2m=4.71 mm` + copper-centroid Ø20 @ **R=39.0** + **205 t** + `former_web=1.25` while magnet↔wound stays **0.50 mm PASS**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb spool ≈ 390 m |
| Turns | **205** / pancake | 12×205×~0.130 m ≈ **320 m** copper (fits 1 lb) |
| fill | **0.70** | packing factor |
| layers_per_face | **2** | axial layers proud of each flange |
| `wind_build_axial` | **0.63 mm** | `2 × 0.45 × 0.7` |
| `wind_build_radial` | **0.945 mm** | `3 × 0.45 × 0.7` |
| `former_web` / `flange_t` | **1.25 / 0.60 mm** | thinner web vs AN 1.30 (LB ≥1.2) |
| `former_bare_h` | **2.45 mm** | |
| `coil_envelope_h` | **3.71 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.50 mm** | magnet → **wound** (each gap) |
| `gap_spacer_h` | **1.13 mm** | `run_clear + wind_build_axial` |
| `m2m` | **4.71 mm** | `coil_envelope_h + 2×run_clear` (**NOT** bare) |
| magnet→wound | **0.50 mm** | **PASS** both sides (≥0.5) |

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`.

## Why this design

Gen-AN: Ø20 @ R=39.5, 200 t, former_web 1.30, m2m 4.76, ~15–32 W. Gen-AQ tightens copper-centroid to **R=39.0**, adds **+5 turns** (205), thins former_web to **1.25** → envelope 3.71 / m2m **4.71**, Halbach Ø5 @ {24.0,39.0,56.0}. Midpoint ~25 W vs AN ~23.5 W.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=39.0 mm, 45° steps |
| Ø20×5 | **8** | Rotor B @ R=39.0 mm, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A Halbach @ R={24.0,39.0,56.0} |
| Ø5×5 | **24** | Rotor B Halbach (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**.

### Polarity map

**Rotor A (+Z):** alternate N-S (even indices N toward stator).  
**Rotor B (−Z):** alternate N-S with N toward stator on even indices (flux through coils).  
**Halbach smalls:** mid circumferential; inner/outer reinforce pole tips AND extend radial coverage onto inner/outer copper.

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. Glue one rotor completely, dry-fit wound stator + gap_spacers, brace, then approach second rotor slowly. **Wind all 12 formers before assembly.** Ultra-micro-gap (0.50 mm) leaves **minimal** forgiveness — do not skip braces. Flanges 0.60 mm / web 1.25 mm: **print with brim**, verify no warp before winding.

## Coils

- **12** pancakes — 26 AWG × 205 t; star 3φ
- Mean turn ~0.130 m → copper budget ~320 m on 1 lb 26 AWG

## Stack

```
rotor A magnet face
  └── run_clear 0.50 mm
wound copper (+Z face)
  └── coil_envelope_h 3.71 through mid stator
wound copper (−Z face)
  └── run_clear 0.50 mm
rotor B magnet face
—— m2m = 4.71 mm ——
```

## Estimated EMF / power

Method (consistent with Gen-AN night): rough AFPM scaling from copper window area × turns × B_gap × RPM. Assumptions: N52 Halbach-boosted B_gap ≈ **0.73–1.08 T** per gap (thinner m2m + tighter overlap), fill 0.70, series/3φ star, dual-face coupling where topology allows.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~17–22 V | ~10–16 W |
| **200** | **~20–44 V** | **~16–34 W** |
| 300 | ~30–66 V | ~30–53 W |
| 500–1000 | ~50–132 V | ~48–120 W (thermal) |

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

One-plate: see `print-packs/one-plate/` (Kobra 3 Max ≤408×408 mm). Measured bbox **404×404 mm**.
