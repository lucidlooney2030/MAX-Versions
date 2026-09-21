# Gen-R — Vernier AFPM 18-coil / 8+8 dual-rotor / wound-aware

Vernier (Ns=18, Nr=8 per rotor face) raises electrical frequency at the same shaft RPM. Thin wound mid-stator (m2m=7.16). **Optional** mild-steel flux-return washers via printed registers.

**Wound gate: PASS** — magnet→wound = **0.85 mm**.

## Wound envelope (mandatory)

| Param | Value | Notes |
|-------|-------|-------|
| Wire | **26 AWG** | OD **0.45 mm** |
| Turns | **100** / pancake | 18 coils on spool |
| fill | **0.70** | |
| layers_per_face | **2** | |
| `wind_build_axial` | **0.63 mm** | each face |
| `former_bare_h` | **4.2 mm** | |
| `coil_envelope_h` | **5.46 mm** | |
| `run_clear` | **0.85 mm** | |
| `gap_spacer_h` | **1.48 mm** | |
| `m2m` | **7.16 mm** | wound math |
| magnet→wound | **0.85 mm** | **PASS** |

## Magnet inventory

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **8** | Rotor A @ R=52, 45° |
| Ø20×5 | **8** | Rotor B @ R=52, vernier offset **+11.25°** |
| Ø5×5 | **24** | Rotor A Halbach @ R={40,52,64} |
| Ø5×5 | **24** | Rotor B Halbach |

### Polarity map

**Rotor A:** alternate N-S toward stator.  
**Rotor B:** alternate N-S toward stator, pocket map +11.25° (vernier).  
**Halbach smalls:** tip assist.  
**Optional steel return:** seat mild-steel washers in `steel_return_register` on **back** of each rotor (away from air gap) — BOM optional.  
**WARN clap:** brace before second magnet face. **Wind all 18 formers before assembly.**

## Coils

- **18** pancakes 3φ × 6 on mid stator
- 26 AWG × 100 t; mean turn ~0.10 m → ≈ **180 m** copper

## Estimated power

Vernier frequency boost + dual gap; B≈0.50–0.70 T. Slightly fewer turns/coil than Gen-P.

| RPM | Est. matched power |
|-----|--------------------|
| 120 | **~3–7 W** |
| 200 | **~5.5–12 W** |
| 300 | **~9–20 W** |
| 500–1000 | **~18–50 W** (thermal) |

## Modular

Shaft Ø8 / 608ZZ; **6× M3 @ R=72** Gen-E; **4× M4 brace @ R≈68**.

## Parts

| File | Qty | Notes |
|------|-----|-------|
| `rotor_vernier_a/b.stl` | 1 each | +11.25° vernier |
| `stator_core.stl` | 1 | 18 wound bays |
| `coil_former.stl` | **18** | wind first |
| `gap_spacer.stl` | **12** | |
| `steel_return_register.stl` | **0–2** | optional |
| endbells, collars, fit_coupon | | |

Runner — Gen-P is primary champion candidate.
