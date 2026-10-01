# Gen-AV — Vernier flux-claw hyper AFPM / wound-aware 12-coil 3φ

**Vernier evolution of Gen-AS** (night 2026-09-30 ET). Dual topology with `m2m=4.68 mm` + copper-centroid Ø20 @ **R=38.5** + **205 t** + `former_web=1.22` while magnet↔wound stays **0.50 mm PASS**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb spool ≈ 390 m |
| Turns | **205** / pancake | 12×205×~0.127 m ≈ **312 m** copper (fits 1 lb) |
| fill | **0.70** | packing factor |
| layers_per_face | **2** | axial layers proud of each flange |
| `wind_build_axial` | **0.63 mm** | `2 × 0.45 × 0.7` |
| `wind_build_radial` | **0.945 mm** | `3 × 0.45 × 0.7` |
| `former_web` / `flange_t` | **1.22 / 0.6 mm** | thinner web vs prior (LB ≥1.2) |
| `former_bare_h` | **2.42 mm** | |
| `coil_envelope_h` | **3.68 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.50 mm** | magnet → **wound** (each gap) |
| `gap_spacer_h` | **1.13 mm** | `run_clear + wind_build_axial` |
| `m2m` | **4.68 mm** | `coil_envelope_h + 2×run_clear` (**NOT** bare) |
| magnet→wound | **0.50 mm** | **PASS** both sides (≥0.5) |

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`. Coil window: coil_id_r=15.0, coil_od_r=62.0, span_deg=25.0.

## Why this design

Gen-AS: Ø20 @ R=39.0, 200 t, former_web 1.25, m2m 4.71, ~13–28 W. Gen-AV: **R=38.5**, **205 t**, former_web **1.22** → m2m **4.68**. Midpoint ~22 W.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=38.5 mm, 45° steps |
| Ø20×5 | **8** | Rotor B @ R=38.5 mm, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A Halbach @ R={24.5,38.5,54.5} |
| Ø5×5 | **24** | Rotor B Halbach (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**.

### Polarity map

**Rotor A (+Z):** alternate N-S (even indices N toward stator).  
**Rotor B (−Z):** alternate N-S with N toward stator on even indices (flux through coils).  
**Halbach smalls:** mid circumferential; inner/outer reinforce pole tips AND extend radial coverage onto inner/outer copper (flux-claw vernier assist).

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. Glue one rotor completely, dry-fit wound stator + gap_spacers, brace, then approach second rotor slowly. **Wind all 12 formers before assembly.** Ultra-micro-gap (0.50 mm) leaves **minimal** forgiveness — do not skip braces. Flanges 0.60 mm / web 1.22 mm: **print with brim**, verify no warp before winding. Vernier B offset +22.5°.

## Coils

- **12** pancakes — 26 AWG × 205 t; star 3φ
- Mean turn ~0.127 m → copper budget ~312 m on 1 lb 26 AWG

## Stack

```
rotor A magnet face
  └── run_clear 0.50 mm
wound copper (+Z face)
  └── coil_envelope_h 3.68 through mid stator
wound copper (−Z face)
  └── run_clear 0.50 mm
rotor B magnet face (+22.5° vernier)
—— m2m = 4.68 mm ——
```

## Estimated EMF / power

Method (consistent with Gen-AQ night): rough AFPM scaling from copper window area × turns × B_gap × RPM. Assumptions: N52 Halbach-boosted B_gap ≈ **0.74–1.10 T** per gap (thinner m2m + tighter overlap), fill 0.70, series/3φ star, dual-face coupling where topology allows.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | — | ~8–14 W |
| **200** | **~18–40 V** | **~14–30 W** |
| 300 | — | ~26–46 W |
| 500–1000 | — | ~42–105 W (thermal) |

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
| `rotor_face_b.stl` | 1 | +22.5° vernier pocket map |
| `stator_core.stl` | 1 | Wound-sized bays |
| `coil_former.stl` | **12** | **Wind before assembly**; thin flanges + brim |
| `gap_spacer.stl` | **12** | h=`gap_spacer_h` 1.13 |
| `endbell_front.stl` | 1 | |
| `endbell_rear.stl` | 1 | (or print front ×2) |
| `shaft_collar.stl` | 4 | |
| `fit_coupon.stl` | 1 | Print first |

One-plate: see `print-packs/one-plate/` (Kobra 3 Max ≤408×408 mm). Measured bbox **404×404 mm**.

## BOM (non-print)

| Item | Qty |
|------|-----|
| NdFeB Ø20×5 N52 | 16 |
| NdFeB Ø5×5 N52 | 48 |
| 26 AWG magnet wire | ≤312 m of ~390 m spool |
| 608ZZ bearings | 2 |
| M3 heat-set inserts + bolts | as needed |
| M4 brace rods | 4 |
| Ø8 shaft | 1 |
