# Gen-W — Triple-rotor dual-stator sandwich / wound-aware 18-coil 3φ

**Runner-up topology** (night 2026-09-22 ET). Stack: RotorA / StatorA / RotorMid / StatorB / RotorB. More copper paths (18×110 t) across **four** magnet↔wound gaps. Magnets split **5+6+5** Ø20; Ø5 Halbach **16+16+16**.

**Wound gate: PASS** — see night [WOUND_ENVELOPE.md](../WOUND_ENVELOPE.md).

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | insulated OD **0.45 mm** |
| Turns | **110** / pancake | 18×110×~0.10 m ≈ **198 m** (fits 1 lb) |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | |
| `wind_build_radial` | **0.882 mm** | |
| `former_web` / `flange_t` | **2.0 / 0.75 mm** | |
| `former_bare_h` | **3.5 mm** | |
| `coil_envelope_h` | **4.76 mm** | |
| `run_clear` | **0.75 mm** | each outer/inner gap magnet→**wound** |
| `gap_spacer_h` | **1.38 mm** | |
| `m2m_outer` / `m2m_inner` | **6.26 mm** | each stator gap pair |
| magnet→wound | **0.75 mm** | **PASS** all four faces |

## Magnet inventory

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **5** | Rotor A @ R=52 |
| Ø20×5 | **6** | Mid (3+3 both faces) @ R=52 |
| Ø20×5 | **5** | Rotor B @ R=52 (clock +36°) |
| Ø5×5 | **16** | Rotor A Halbach |
| Ø5×5 | **16** | Mid (8+8 both faces) |
| Ø5×5 | **16** | Rotor B Halbach |

Total: **16×Ø20 + 48×Ø5**. Mid carrier: single dual-face print (`mid_carrier_thick=12`).

### Polarity map

Outer A/B: N toward adjacent stator on even poles. Mid +Z/−Z: N toward StatorA / StatorB respectively (flux through each stator). Halbach smalls reinforce circumferential.

### ⚠️ MULTI-ROTOR CLAP WARNING
**Three** magnet carriers. Brace with **M4 rods @ R≈68** before seating mid or second outer. Assemble: glue Rotor A → brace → wound StatorA + spacers → Mid (slow) → StatorB → Rotor B. **Wind all 18 formers before assembly.**

## Coils

- **9 + 9 = 18** pancakes (3φ)
- Each stator sees dual gap (outer + mid face)
- 26 AWG × 110 t

## Stack

```
RotorA magnets
  └── run_clear 0.75
wound StatorA (+Z)
  └── coil_envelope 4.76
wound StatorA (−Z) / back web
  └── run_clear 0.75
RotorMid (+Z magnets)
  —— mid carrier ——
RotorMid (−Z magnets)
  └── run_clear 0.75
wound StatorB
  └── run_clear 0.75
RotorB magnets
```

## Estimated EMF / power

More copper (18 vs 12) but fewer poles per outer face (5 vs 8) → B per gap ≈ **0.45–0.70 T**. Additive across two stator planes.

| RPM | Est. matched power |
|-----|--------------------|
| 120 | ~3–7 W |
| **200** | **~7–15 W** |
| 300 | ~12–24 W |
| 500–1000 | ~20–48 W (thermal) |

## Modular interface

Shaft Ø8 / bore 8.35; 608ZZ Ø21.85×7.2; **6× M3 @ R=72**; brace 4× M4 @ R≈68; heat-set M3.

## Parts to print

| File | Qty |
|------|-----|
| `rotor_outer.stl` | **2** |
| `rotor_mid.stl` | 1 |
| `stator_core.stl` | **2** |
| `coil_former.stl` | **18** |
| `gap_spacer.stl` | **18** |
| `endbell_front/rear.stl` | 1 each |
| `shaft_collar.stl` | 2–4 |
| `fit_coupon.stl` | 1 |

**One-plate:** primary plate carries unique STLs + sample coils; **duplicate** outer rotor, stator, endbell, and remaining coils in slicer (noted in PLATE.md).

## BOM

16×Ø20×5 + 48×Ø5×5 N52; Ø8 shaft; 608ZZ; M3/M4; **26 AWG** ~1 lb.

## Print / safety

**0.4 mm** nozzle. PETG/ABS. **MULTI-ROTOR CLAP.** Wind first.
