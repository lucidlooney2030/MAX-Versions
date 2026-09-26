# Gen-AG — Vernier flux-claw hyper-nano / wound-aware 12-coil 3φ

**#3 challenger** (night 2026-09-25 ET). Dual-rotor vernier flux-claw with hyper-nano gap. Beats Gen-AD: `m2m=5.11` (vs 5.46) + **165 t** + larger window ID19.5–OD63, magnet↔wound **0.55 PASS**.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm**; ~1 lb ≈ 390 m |
| Turns | **165** / pancake | 12×165×~0.126 m ≈ **250 m** copper |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.945 mm** | |
| `former_web` / `flange_t` | **1.55 / 0.60 mm** | thinner than Gen-AD 1.7/0.65 |
| `former_bare_h` | **2.75 mm** | |
| `coil_envelope_h` | **4.01 mm** | |
| `run_clear` | **0.55 mm** | magnet → **wound** |
| `gap_spacer_h` | **1.18 mm** | |
| `m2m` | **5.11 mm** | **NOT** bare |
| magnet→wound | **0.55 mm** | **PASS** both sides |

Stator bays expand for wound radial outline. Explicit params in `parameters.scad`.

## Magnet inventory (full kit)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A vernier poles @ R=50 |
| Ø20×5 | **8** | Rotor B @ R=50, offset **+22.5°** |
| Ø5×5 | **24** | Rotor A flux claws @ R={36,50,64} |
| Ø5×5 | **24** | Rotor B claws (+22.5°) |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **152 mm**, thick **7.5 mm**.

### Polarity map

**Rotor A (+Z):** alternate N-S toward stator.  
**Rotor B (−Z):** vernier-offset alternate N-S toward stator.  
**Flux claws (Ø5):** inner/outer edge assists concentrate vernier flux; mid ring circumferential Halbach assist.

### ⚠️ DUAL-ROTOR CLAP WARNING
Brace with **M4 rods @ R≈68** **BEFORE** seating the second magnet face. **Wind all 12 formers before assembly.** Hyper-nano gap (0.55 mm) — braces mandatory. Thin flanges 0.60 / web 1.55: brim + verify flatness before wind.

## Coils

- **12** pancakes on single mid stator (3φ × 4) — dual-gap each turn
- **26 AWG × 165 t**; star 3φ
- Mean turn ~0.126 m → copper ~250 m on 1 lb 26 AWG

## Stack

```
rotor A magnet face
  └── run_clear 0.55 mm
wound copper (+Z face)
  └── coil_envelope_h 4.01 through mid stator
wound copper (−Z face)
  └── run_clear 0.55 mm
rotor B magnet face
—— m2m = 5.11 mm ——
```

## Estimated EMF / power

Method: AFPM copper-window × turns × B_gap × RPM; vernier flux-claw boost; N52 B_gap ≈ **0.62–0.88 T**/gap; each coil sees two faces.

| RPM | Est. combined RMS | Est. matched power |
|-----|-------------------|--------------------|
| 120 | ~6–13 V | ~4–8 W |
| **200** | **~12–26 V** | **~9–19 W** |
| 300 | ~18–39 V | ~16–32 W |
| 500–1000 | ~30–85 V | ~25–70 W (thermal) |

**vs Gen-AD (~8–17 W @200, m2m 5.46):** Gen-AG targets **~9–19 W** — thinner m2m 5.11 + 165 vs 155 t + larger window ID19.5–OD63.

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
| `rotor_face_a.stl` | 1 | Vernier poles + claws |
| `rotor_face_b.stl` | 1 | +22.5° vernier offset |
| `stator_core.stl` | 1 | Wound-sized bays |
| `coil_former.stl` | **12** | **Wind before assembly** |
| `gap_spacer.stl` | **12** | h=`gap_spacer_h` |
| `endbell_front.stl` | 1 | |
| `endbell_rear.stl` | 1 | (or ×2 of front) |
| `shaft_collar.stl` | 2–4 | |
| `fit_coupon.stl` | 1 | **Print first** |

One-plate: `print-packs/one-plate/` (Kobra 3 Max ~410×410).

## BOM

- 16× Ø20×5 + 48× Ø5×5 N52
- Ø8 shaft, 2–4× 608ZZ, M3 + heat-set inserts, 4× M4 brace rod
- **26 AWG** magnet wire (~1 lb)
- Optional thin steel backing behind each rotor

## Print / safety

**0.4 mm** nozzle default. PETG/ABS preferred. Walls ≥0.8. **DUAL-ROTOR CLAP.** Wind all formers first. Print fit coupon before full kit.
