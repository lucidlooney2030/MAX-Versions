# Gen-AR — Stacked dual-stator mid-rotor copper-max hyper / wound-aware 18-coil

**Runner-up vs Gen-AO / Gen-AQ** (night 2026-09-29 ET). Dual-stator mid-rotor Halbach; `m2m=4.71 mm` + copper-centroid Ø20 @ **R=39.5** + **175 t** + `former_web=1.25` while magnet↔wound stays **0.50 mm PASS**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb spool ≈ 390 m |
| Turns | **175** / pancake | 18×175×~0.117 m ≈ **369 m** copper (fits 1 lb) |
| fill | **0.70** | packing factor |
| layers_per_face | **2** | axial layers proud of each flange |
| `wind_build_axial` | **0.63 mm** | `2 × 0.45 × 0.7` |
| `wind_build_radial` | **0.945 mm** | `3 × 0.45 × 0.7` |
| `former_web` / `flange_t` | **1.25 / 0.60 mm** | thinner web vs AO 1.30 |
| `former_bare_h` | **2.45 mm** | |
| `coil_envelope_h` | **3.71 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.50 mm** | magnet → **wound** (each gap) |
| `gap_spacer_h` | **1.13 mm** | `run_clear + wind_build_axial` |
| `m2m` | **4.71 mm** | `coil_envelope_h + 2×run_clear` (**NOT** bare) |
| magnet→wound | **0.50 mm** | **PASS** both sides (≥0.5) |

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`.

## Why this design

Gen-AO: 18×165 t, R=40, former_web 1.30, m2m 4.76, ~13–27 W. Gen-AR: **175 t**, R=**39.5**, former_web **1.25** → m2m **4.71**, copper ~369 m. Midpoint ~21.5 W.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Mid +Z @ R=39.5 mm |
| Ø20×5 | **8** | Mid −Z @ R=39.5 mm, offset **+22.5°** |
| Ø5×5 | **24** | Mid +Z Halbach @ R={26.0,39.5,56.0} |
| Ø5×5 | **24** | Mid −Z Halbach (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**.

### Polarity map

**Mid +Z:** alternate N-S (even indices N toward stator A).  
**Mid −Z:** alternate N-S with N toward stator B on even indices.  
**Halbach smalls:** mid circumferential assist + radial edge coverage.

### ⚠️ MID-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating either stator toward the mid dual-face magnets. Wind all **18** formers first. Flanges 0.60 mm / web 1.25 mm: **print with brim**.

## Coils

- **18** pancakes — 26 AWG × 175 t; star 3φ
- Mean turn ~0.117 m → copper budget ~369 m on 1 lb 26 AWG

## Stack

```
stator A (wound face toward mid)
  └── run_clear 0.50 mm
mid rotor +Z magnets
  └── mid_carrier
mid rotor −Z magnets
  └── run_clear 0.50 mm
stator B (wound face toward mid)
—— m2m per gap = 4.71 mm ——
```

## Estimated EMF / power

Method (consistent with Gen-AN night): rough AFPM scaling from copper window area × turns × B_gap × RPM. Assumptions: N52 Halbach-boosted B_gap ≈ **0.73–1.08 T** per gap (thinner m2m + tighter overlap), fill 0.70, series/3φ star, dual-face coupling where topology allows.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~14–19 V | ~8–14 W |
| **200** | **~17–38 V** | **~14–29 W** |
| 300 | ~26–57 V | ~26–47 W |
| 500–1000 | ~43–114 V | ~42–105 W (thermal) |

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
| `rotor_mid.stl` | 1 | Dual-face Halbach; brim |
| `stator_core.stl` | **2** | Wound-sized bays (back web) |
| `coil_former.stl` | **18** | **Wind before assembly**; thin flanges + brim |
| `gap_spacer.stl` | **18** | h=`gap_spacer_h` 1.13 |
| `endbell_front.stl` | 1 | |
| `endbell_rear.stl` | 1 | (or print front ×2) |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | Print first |

One-plate: see `print-packs/one-plate/` (Kobra 3 Max ≤408×408 mm). Measured bbox **405.5×404 mm**. Plate carries 9 formers — print a second set for 18.
