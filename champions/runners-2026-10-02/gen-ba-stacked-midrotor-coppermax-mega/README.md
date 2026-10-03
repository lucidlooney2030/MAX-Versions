# Gen-BA — Stacked dual-stator mid-rotor copper-max mega / wound-aware 18-coil

**Runner-up vs Gen-AX / Gen-AZ** (night 2026-10-02 ET). Mid dual-face rotor + 2× back-web stators with `m2m=4.66 mm` + Ø20 @ **R=38.0** + **190 t** + `former_web=1.20` while magnet↔wound stays **0.50 mm PASS**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb spool ≈ 390 m |
| Turns | **190** / pancake | 18×190×~0.113 m ≈ **386 m** copper (fits 1 lb) |
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

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`. Coil window: coil_id_r=16.0, coil_od_r=60.0, span_deg=34.0.

## Why this design

Gen-AX: 18×185 t, R=38.5, former_web 1.20, m2m 4.66, ~16–33 W. Gen-BA: **190 t**, R=**38.0**, former_web **1.20** → m2m **4.66**, copper ~386 m. Midpoint ~26 W.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Mid +Z @ R=38.0 mm |
| Ø20×5 | **8** | Mid −Z @ R=38.0 mm, offset **+22.5°** |
| Ø5×5 | **24** | Mid +Z Halbach @ R={25.0,38.0,55.0} |
| Ø5×5 | **24** | Mid −Z Halbach (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**.

### Polarity map

**Mid +Z:** alternate N-S (even indices N toward stator A).  
**Mid −Z:** alternate N-S with N toward stator B on even indices.  
**Halbach smalls:** mid circumferential assist + radial edge coverage.

### ⚠️ MID-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating either stator toward the mid dual-face magnets. Wind all **18** formers first. Flanges 0.60 mm / web 1.20 mm: **print with brim**.

## Coils

- **18** pancakes — 26 AWG × 190 t; star 3φ (9 stations × 2 stators)
- Mean turn ~0.113 m → copper budget ~386 m on 1 lb 26 AWG

## Stack

```
stator A (wound face toward mid)
  └── run_clear 0.50 mm
mid rotor +Z magnets
  └── mid carrier
mid rotor −Z magnets
  └── run_clear 0.50 mm
stator B (wound face toward mid)
—— m2m = 4.66 mm per gap ——
```

## Estimated EMF / power

Method (consistent with Gen-AW night): rough AFPM scaling from copper window area × turns × B_gap × RPM. Assumptions: N52 Halbach-boosted B_gap ≈ **0.75–1.14 T** per gap, fill 0.70, series/3φ star, dual-face coupling where topology allows.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | — | ~11–17 W |
| **200** | **~20–44 V** | **~17–35 W** |
| 300 | — | ~32–52 W |
| 500–1000 | — | ~50–120 W (thermal) |

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
| `stator_core.stl` | **2** | Back-web bays; print ×2 |
| `coil_former.stl` | **18** | 9 on plate (dup); **wind before assembly** |
| `gap_spacer.stl` | **18** | h=`gap_spacer_h` 1.13 |
| `endbell_front.stl` | **2** | print ×2 for rear |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | Print first |

One-plate: see `print-packs/one-plate/` (Kobra 3 Max ≤408×408 mm). Measured bbox **405.5×404 mm**. Plate carries 9 formers (dup to 18), 1 stator×2, 1 endbell×2.

## BOM (non-print)

| Item | Qty |
|------|-----|
| NdFeB Ø20×5 N52 | 16 |
| NdFeB Ø5×5 N52 | 48 |
| 26 AWG magnet wire | ≤386 m of ~390 m spool |
| 608ZZ bearings | 2 |
| M3 heat-set inserts + bolts | as needed |
| M4 brace rods | 4 |
| Ø8 shaft | 1 |
