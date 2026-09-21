# Gen-P — Dual-rotor thin-gap AFPM / wound-aware 12-coil 3φ

**PRIMARY wound-compliant champion candidate** (night 2026-09-20 ET). Dual magnet faces across a **thin** wound mid-stator (m2m=7.26 mm vs Gen-O’s 9.79) restore B while keeping magnet↔wound ≥0.80 mm. Aims to **beat Gen-M**.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md) and table below.

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm** |
| Turns | **120** / pancake | ~1 lb spool covers 12×120 |
| fill | **0.70** | packing factor |
| layers_per_face | **2** | thinner than Gen-M’s 3 → lower stack |
| `wind_build_axial` | **0.63 mm** | `2 × 0.45 × 0.7` each face |
| `wind_build_radial` | **0.63 mm** | |
| `former_web` | **2.6 mm** | |
| `flange_t` | **0.9 mm** | |
| `former_bare_h` | **4.4 mm** | web + 2×flange |
| `coil_envelope_h` | **5.66 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.80 mm** | magnet face → **wound** face (each gap) |
| `gap_spacer_h` | **1.43 mm** | `run_clear + wind_build_axial` |
| `m2m` | **7.26 mm** | `coil_envelope_h + 2×run_clear` (**NOT** bare former) |
| magnet→wound | **0.80 mm** | **PASS** both sides |

Stator bays use expanded radial outline for wound width. Explicit params in `parameters.scad`.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=50 mm, 45° steps |
| Ø20×5 | **8** | Rotor B @ R=50 mm, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A Halbach triplets @ R={38,50,62} |
| Ø5×5 | **24** | Rotor B Halbach triplets (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **148 mm**, thick **7.5 mm**. Hub Ø30×10.

### Polarity map

**Rotor A (+Z):** alternate N-S (even indices N toward stator).  
**Rotor B (−Z):** alternate N-S with N toward stator on even indices (opposing faces attract flux through coils).  
**Halbach smalls:** mid circumferential, edge smalls reinforce pole tips.  
**Assembly WARN — clap hazard:** Brace with M4 rods **before** seating the second magnet face. Glue one rotor completely, dry-fit wound stator + gap_spacers, brace, then approach second rotor slowly. **Wind all 12 formers before assembly.**

## Coils

- **12** pancakes on single mid stator (3φ × 4) — dual-gap each turn
- **26 AWG × 120 t** each; star 3φ; series/parallel for V/I trade
- Mean turn ~0.10 m → 12×120×0.10 ≈ **144 m** copper (comfortable on 1 lb 26 AWG)

## Stack

```
rotor A magnet face
  └── run_clear 0.80 mm
wound copper (+Z face)
  └── coil_envelope_h 5.66 through mid stator
wound copper (−Z face)
  └── run_clear 0.80 mm
rotor B magnet face
—— m2m = 7.26 mm ——
```

## Estimated EMF / power

Dual air-gap + thin m2m → B_gap Halbach-boosted ≈ **0.55–0.75 T** per gap (higher than Gen-O thick stack). Each coil sees **two** magnet faces.

| RPM | Est. combined RMS (26 AWG 120 t) | Est. matched power |
|-----|----------------------------------|--------------------|
| 120 | **~4–9 V** | **~2–6 W** |
| 200 | **~10–20 V** | **~7–15 W** |
| 300 | **~15–30 V** | **~12–25 W** |
| 500–1000 | **~25–70 V** | **~20–55 W** (thermal) |

**vs Gen-M (~5–12 W @200):** Gen-P targets **~7–15 W @200** — dual-gap + thinner envelope. Honest range; validate with fit coupon + tach bench.

## Modular interface

| Spec | Value |
|------|-------|
| Shaft | Ø8 / bore Ø8.35 |
| Bearings | 608ZZ seats Ø21.85×7.2 |
| Hub | Ø30×10 |
| Endbell / stator bolts | **6× M3 @ R=72** (Gen-E family) |
| Brace | **4× M4 @ R≈68** (REQUIRED before 2nd rotor) |
| M3 clear | Ø3.4–3.5 |

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_face_a.stl` | 1 | Magnet face up; brim |
| `rotor_face_b.stl` | 1 | +22.5° pocket map |
| `stator_core.stl` | 1 | Wound-sized bays |
| `coil_former.stl` | **12** | Flange on bed; **wind before assembly** |
| `gap_spacer.stl` | **12** | h=`gap_spacer_h` (wound math) |
| `endbell_front/rear.stl` | 1 each | |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | Dual pockets + 608 + spacer height |

One-plate: `../print-packs/one-plate/gen-p/` (fits Kobra 3 Max usable ~410×410).

## BOM

- 16× Ø20×5 + 48× Ø5×5 N52
- Ø8 shaft, 2–4× 608ZZ, M3 + heat-set inserts, 4× M4 brace rod
- **26 AWG** magnet wire (~1 lb)
- Optional thin steel backing behind each rotor (not required)

## Print / safety

**0.4 mm** nozzle default. PETG/ABS preferred. Walls ≥0.8 (load 1.2). **DUAL-ROTOR CLAP — brace before second magnet face.** Keep Halbach smalls jigged.
