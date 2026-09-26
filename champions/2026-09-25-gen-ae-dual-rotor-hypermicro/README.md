# Gen-AE — Dual-rotor HYPER-MICRO copper-max AFPM / wound-aware 12-coil 3φ

**PRIMARY challenger vs Gen-AB** (night 2026-09-25 ET). Dual magnet faces across a **hyper-micro-gap** wound mid-stator (`m2m=5.00 mm` vs Gen-AB `5.22`) + larger copper window (ID 18.5–OD 64) + **170 t** restore B×N while magnet↔wound stays **0.52 mm PASS**.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb spool ≈ 390 m |
| Turns | **170** / pancake | 12×170×~0.130 m ≈ **265 m** copper (fits 1 lb) |
| fill | **0.70** | packing factor |
| layers_per_face | **2** | axial layers proud of each flange |
| `wind_build_axial` | **0.63 mm** | `2 × 0.45 × 0.7` |
| `wind_build_radial` | **0.945 mm** | `3 × 0.45 × 0.7` |
| `former_web` / `flange_t` | **1.50 / 0.60 mm** | thinner than Gen-AB 1.6/0.60 |
| `former_bare_h` | **2.70 mm** | |
| `coil_envelope_h` | **3.96 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.52 mm** | magnet → **wound** (each gap) |
| `gap_spacer_h` | **1.15 mm** | `run_clear + wind_build_axial` |
| `m2m` | **5.00 mm** | `coil_envelope_h + 2×run_clear` (**NOT** bare) |
| magnet→wound | **0.52 mm** | **PASS** both sides (≥0.5) |

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=54 mm, 45° steps |
| Ø20×5 | **8** | Rotor B @ R=54 mm, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A Halbach @ R={42,54,66} |
| Ø5×5 | **24** | Rotor B Halbach (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **156 mm**, thick **7.5 mm**.

### Polarity map

**Rotor A (+Z):** alternate N-S (even indices N toward stator).  
**Rotor B (−Z):** alternate N-S with N toward stator on even indices (flux through coils).  
**Halbach smalls:** mid circumferential; edge smalls reinforce pole tips.  

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. Glue one rotor completely, dry-fit wound stator + gap_spacers, brace, then approach second rotor slowly. **Wind all 12 formers before assembly.** Hyper-micro-gap (0.52 mm) leaves **less** forgiveness than Gen-AB — do not skip braces. Flanges 0.60 mm / web 1.50 mm: print with brim, verify no warp before winding.

## Coils

- **12** pancakes on single mid stator (3φ × 4) — dual-gap each turn
- **26 AWG × 170 t**; star 3φ
- Mean turn ~0.130 m → copper budget ~265 m on 1 lb 26 AWG

## Stack

```
rotor A magnet face
  └── run_clear 0.52 mm
wound copper (+Z face)
  └── coil_envelope_h 3.96 through mid stator
wound copper (−Z face)
  └── run_clear 0.52 mm
rotor B magnet face
—— m2m = 5.00 mm ——
```

## Estimated EMF / power

Method (consistent with Gen-AB night): rough AFPM scaling from copper window area × turns × B_gap × RPM. Assumptions: N52 Halbach-boosted B_gap ≈ **0.68–0.95 T** per gap (thinner m2m vs Gen-AB), fill 0.70, series/3φ star, each coil sees **two** magnet faces.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~9–17 V | ~6–12 W |
| **200** | **~16–35 V** | **~12–26 W** |
| 300 | ~25–52 V | ~22–42 W |
| 500–1000 | ~42–110 V | ~35–95 W (thermal) |

**vs Gen-AB (~11–23 W @200, m2m 5.22):** Gen-AE targets **~12–26 W @200** — thinner envelope (5.00 vs 5.22) + more copper (170 vs 160 t) + larger window ID18.5–OD64 (~+12% area). Midpoint argument favors Gen-AE as new MAX tip pending bench.

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
| `coil_former.stl` | **12** | **Wind before assembly**; thin flanges |
| `gap_spacer.stl` | **12** | h=`gap_spacer_h` |
| `endbell_front.stl` | 1 | |
| `endbell_rear.stl` | 1 | (or ×2 of front) |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | **Print first** |

One-plate: `print-packs/one-plate/` (Kobra 3 Max ~410×410; endbell rear = duplicate print of front STL on plate).

## BOM

- 16× Ø20×5 + 48× Ø5×5 N52
- Ø8 shaft, 2–4× 608ZZ, M3 + heat-set inserts, 4× M4 brace rod
- **26 AWG** magnet wire (~1 lb)
- Optional thin steel backing behind each rotor

## Print / safety

**0.4 mm** nozzle default. PETG/ABS preferred. Walls ≥0.8 (load 1.2). **DUAL-ROTOR CLAP.** Wind all formers first. Hyper-micro-gap + 0.60 flanges + 1.50 web demand brace rods and careful first-layer adhesion.
