# Gen-M — Dual-stator sandwich AFPM / wound-aware 9+9 coil 3φ

**FIRST wound-compliant MAX champion** (2026-09-20 ET). Evolution of withdrawn Gen-J: same dual-face rotor + two stator packs, but stack and bays sized for the **wound copper envelope**, not bare former STLs.

**Wound gate: PASS** — see [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md) and table below.

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm** |
| Turns | **120** / pancake | ~1 lb spool covers 18×120 |
| fill | **0.70** | packing factor |
| layers_per_face | **3** | axial layers budgeted proud of each flange |
| `wind_build_axial` | **0.945 mm** | `3 × 0.45 × 0.7` each face |
| `former_web` | **3.2 mm** | |
| `flange_t` | **1.0 mm** | |
| `former_bare_h` | **5.2 mm** | web + 2×flange |
| `coil_envelope_h` | **7.09 mm** | bare + 2×wind_build_axial |
| `run_clear` | **0.85 mm** | magnet face → **wound** face (≥0.8) |
| `gap_spacer_h` | **1.795 mm** | `run_clear + wind_build_axial` |
| `bay_depth` | **6.145 mm** | bare + back-face wind (front wind proud) |
| magnet→wound | **0.85 mm** | `gap_spacer_h − wind_build_axial` **PASS** |

Stator bays use expanded radial outline (`bay_r_in/out`, `bay_offset`) for wound radial width, not bare former.

Explicit params live in `parameters.scad` (included by all parts).

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | +Z face @ R=52 mm, 45° steps |
| Ø20×5 | **8** | −Z face @ R=52 mm, offset **+22.5°** |
| Ø5×5 | **24** | +Z Halbach triplets @ R={40,52,64} |
| Ø5×5 | **24** | −Z Halbach triplets (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **148 mm**, thick **12 mm**. Hub Ø30×10.

### Polarity map

**+Z face:** alternate N-S (even indices N toward +Z stator).  
**−Z face:** alternate N-S with N toward −Z stator on even indices.  
**Halbach smalls:** mid circumferential, edge smalls reinforce pole tips.  
**Assembly:** Glue one face completely, dry-fit both wound stator packs with `gap_spacer` pads, brace, then glue second face. **Wind all 18 formers before assembly.**

## Coils

- **9 + 9 = 18** pancakes (3φ × 3 per stator) — 12+12 preferred for copper but one-plate on ~410×410 keeps **9+9** (wider 34° formers)
- **26 AWG × 120 t** each; star 3φ per stator; series/parallel packs for V/I trade
- Mean turn ~0.11 m → 18×120×0.11 ≈ **240 m** copper (~fits 1 lb 26 AWG spool)

## Stack (one side)

```
magnet face
  └── run_clear 0.85 mm
wound copper face (front wind_build_axial proud of stator)
  └── coil_envelope through bay
stator back web
```

`gap_spacer` on flange bolts sets magnet → stator face = 1.795 mm so magnet→wound = 0.85 mm after the stated wind.

## Estimated EMF / power

B_gap Halbach-boosted ≈ **0.50–0.70 T** per face. Dual surfaces + full 18-coil wind.

| RPM | Est. combined RMS (26 AWG 120 t) | Est. matched power |
|-----|----------------------------------|--------------------|
| 200 | **~8–16 V** (series packs) | **~5–12 W** |
| 300 | **~12–24 V** | **~9–20 W** |
| 1000 | **~40–80 V** | **~25–55 W** (thermal) |

## Modular interface

| Spec | Value |
|------|-------|
| Shaft | Ø8 / bore Ø8.35 |
| Bearings | 608ZZ seats Ø21.85×7.2 |
| Hub | Ø30×10 |
| Endbell / stator bolts | **6× M3 @ R=72** (Gen-E family) |
| Brace | **4× M4 @ R≈68** |
| M3 clear | Ø3.4–3.5 |

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_sandwich.stl` | 1 | Magnet faces; brim |
| `stator_core.stl` | **2** | Wound-sized bays up |
| `coil_former.stl` | **18** | Flange on bed; **wind before assembly** |
| `gap_spacer.stl` | **12** | h=`gap_spacer_h` (wound math) |
| `endbell_front/rear.stl` | 1 each | |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | Dual pockets + 608 + spacer height |

One-plate: `print-packs/one-plate/` (fits Kobra 3 Max usable ~410×410).

## BOM

- 16× Ø20×5 + 48× Ø5×5 N52
- Ø8 shaft, 2–4× 608ZZ, M3 + heat-set inserts, 4× M4 brace rod
- **26 AWG** magnet wire (~1 lb)
- Optional thin steel backing rings behind each magnet face

## Print / safety

**0.4 mm** nozzle default. PETG/ABS preferred. Walls ≥0.8 (load 1.2). Brace both stators before seating the second magnet face. Keep Halbach smalls jigged.
