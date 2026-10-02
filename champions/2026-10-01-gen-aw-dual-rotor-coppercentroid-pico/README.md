# Gen-AW — Dual-rotor copper-centroid pico AFPM / wound-aware 12-coil 3φ

**PRIMARY challenger vs Gen-AT** (night 2026-10-01 ET). Dual topology with `m2m=4.66 mm` + copper-centroid Ø20 @ **R=38.0** + **215 t** + `former_web=1.20` while magnet↔wound stays **0.50 mm PASS**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb spool ≈ 390 m |
| Turns | **215** / pancake | 12×215×~0.126 m ≈ **325 m** copper (fits 1 lb) |
| fill | **0.70** | packing factor |
| layers_per_face | **2** | axial layers proud of each flange |
| `wind_build_axial` | **0.63 mm** | `2 × 0.45 × 0.7` |
| `wind_build_radial` | **0.945 mm** | `3 × 0.45 × 0.7` |
| `former_web` / `flange_t` | **1.20 / 0.6 mm** | print floor LB walls |
| `former_bare_h` | **2.40 mm** | |
| `coil_envelope_h` | **3.66 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.50 mm** | magnet → **wound** (each gap) |
| `gap_spacer_h` | **1.13 mm** | `run_clear + wind_build_axial` |
| `m2m` | **4.66 mm** | `coil_envelope_h + 2×run_clear` (**NOT** bare) |
| magnet→wound | **0.50 mm** | **PASS** both sides (≥0.5) |

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`. Coil window: coil_id_r=14.0, coil_od_r=62.0, span_deg=26.0.

## Why this design

Gen-AT: Ø20 @ R=38.5, 210 t, former_web 1.22, m2m 4.68, ~17–36 W. Gen-AW tightens copper-centroid to **R=38.0**, adds **+5 turns** (215), thins former_web to **1.20** → envelope 3.66 / m2m **4.66**, Halbach Ø5 @ {23.0,38.0,55.0}. Midpoint ~28 W vs AT ~26.5 W.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=38.0 mm, 45° steps |
| Ø20×5 | **8** | Rotor B @ R=38.0 mm, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A Halbach @ R={23.0,38.0,55.0} |
| Ø5×5 | **24** | Rotor B Halbach (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**.

### Polarity map

**Rotor A (+Z):** alternate N-S (even indices N toward stator).  
**Rotor B (−Z):** alternate N-S with N toward stator on even indices (flux through coils).  
**Halbach smalls:** mid circumferential; inner/outer reinforce pole tips AND extend radial coverage onto inner/outer copper.

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. Glue one rotor completely, dry-fit wound stator + gap_spacers, brace, then approach second rotor slowly. **Wind all 12 formers before assembly.** Ultra-micro-gap (0.50 mm) leaves **minimal** forgiveness — do not skip braces. Flanges 0.60 mm / web 1.20 mm: **print with brim**, verify no warp before winding.

## Coils

- **12** pancakes — 26 AWG × 215 t; star 3φ
- Mean turn ~0.126 m → copper budget ~325 m on 1 lb 26 AWG

## Stack

```
rotor A magnet face
  └── run_clear 0.50 mm
wound copper (+Z face)
  └── coil_envelope_h 3.66 through mid stator
wound copper (−Z face)
  └── run_clear 0.50 mm
rotor B magnet face
—— m2m = 4.66 mm ——
```

## Estimated EMF / power

Method (consistent with Gen-AT night): rough AFPM scaling from copper window area × turns × B_gap × RPM. Assumptions: N52 Halbach-boosted B_gap ≈ **0.74–1.12 T** per gap (tighter m2m/R than AT), fill 0.70, series/3φ star, dual-face coupling where topology allows.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | — | ~12–18 W |
| **200** | **~22–48 V** | **~18–38 W** |
| 300 | — | ~34–58 W |
| 500–1000 | — | ~52–130 W (thermal) |

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

## BOM (non-print)

| Item | Qty |
|------|-----|
| NdFeB Ø20×5 N52 | 16 |
| NdFeB Ø5×5 N52 | 48 |
| 26 AWG magnet wire | ≤325 m of ~390 m spool |
| 608ZZ bearings | 2 |
| M3 heat-set inserts + bolts | as needed |
| M4 brace rods | 4 |
| Ø8 shaft | 1 |
