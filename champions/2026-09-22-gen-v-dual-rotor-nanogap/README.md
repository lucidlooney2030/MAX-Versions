# Gen-V — Dual-rotor NANO-GAP AFPM / wound-aware 12-coil 3φ

**PRIMARY challenger vs Gen-S** (night 2026-09-22 ET). Dual magnet faces across a **nano-gap** wound mid-stator (`m2m=6.16 mm` vs Gen-S `6.66`) + larger copper window + 140 t restore B×N while magnet↔wound stays **0.70 mm PASS**.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb spool ≈ 390 m |
| Turns | **140** / pancake | 12×140×~0.115 m ≈ **193 m** copper (fits 1 lb) |
| fill | **0.70** | packing factor |
| layers_per_face | **2** | axial layers proud of each flange |
| `wind_build_axial` | **0.63 mm** | `2 × 0.45 × 0.7` |
| `wind_build_radial` | **0.945 mm** | `3 × 0.45 × 0.7` |
| `former_web` / `flange_t` | **2.0 / 0.75 mm** | thinner than Gen-S 2.2/0.8 |
| `former_bare_h` | **3.5 mm** | |
| `coil_envelope_h` | **4.76 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.70 mm** | magnet → **wound** (each gap) |
| `gap_spacer_h` | **1.33 mm** | `run_clear + wind_build_axial` |
| `m2m` | **6.16 mm** | `coil_envelope_h + 2×run_clear` (**NOT** bare) |
| magnet→wound | **0.70 mm** | **PASS** both sides |

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=52 mm, 45° steps |
| Ø20×5 | **8** | Rotor B @ R=52 mm, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A Halbach @ R={40,52,64} |
| Ø5×5 | **24** | Rotor B Halbach (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **152 mm**, thick **7.5 mm**.

### Polarity map

**Rotor A (+Z):** alternate N-S (even indices N toward stator).  
**Rotor B (−Z):** alternate N-S with N toward stator on even indices (flux through coils).  
**Halbach smalls:** mid circumferential; edge smalls reinforce pole tips.  

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. Glue one rotor completely, dry-fit wound stator + gap_spacers, brace, then approach second rotor slowly. **Wind all 12 formers before assembly.** Nano-gap (0.70 mm) leaves less forgiveness — do not skip braces.

## Coils

- **12** pancakes on single mid stator (3φ × 4) — dual-gap each turn
- **26 AWG × 140 t**; star 3φ
- Mean turn ~0.115 m → copper budget ~193 m on 1 lb 26 AWG

## Stack

```
rotor A magnet face
  └── run_clear 0.70 mm
wound copper (+Z face)
  └── coil_envelope_h 4.76 through mid stator
wound copper (−Z face)
  └── run_clear 0.70 mm
rotor B magnet face
—— m2m = 6.16 mm ——
```

## Estimated EMF / power

Thinner m2m (+ larger window + +10 turns) vs Gen-S → B_gap Halbach-boosted ≈ **0.60–0.85 T** per gap. Each coil sees **two** magnet faces.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~6–12 V | ~3.5–8 W |
| **200** | **~13–26 V** | **~9–19 W** |
| 300 | ~20–39 V | ~16–32 W |
| 500–1000 | ~33–85 V | ~26–70 W (thermal) |

**vs Gen-S (~8–17 W @200):** Gen-V targets **~9–19 W @200** — thinner envelope (6.16 vs 6.66) + more copper (140 vs 130 t, larger window). Conservative range; validate with fit coupon + tach bench.

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
| `coil_former.stl` | **12** | **Wind before assembly** |
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

**0.4 mm** nozzle default. PETG/ABS preferred. Walls ≥0.8 (load 1.2). **DUAL-ROTOR CLAP.** Wind all formers first. Nano-gap demands brace rods.
