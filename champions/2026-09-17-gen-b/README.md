# Gen-B — Dual-rotor AFPM 8+8 / 12-coil 3φ (Halbach-assist)

Same enhanced dual rotors as Gen-A (8+8 large + 48 small Halbach-assist), with a **denser 12-coil** stator for finer EMF waveform and more copper in the gap.

## Magnet inventory

**Identical to Gen-A** — reuse `rotor_carrier_a` (print ×2). Full polarity map: see `../gen-a/README.md`.

| Kit | Qty | Role |
|-----|-----|------|
| Ø20×5 | 16 | 8 per rotor @ R=50 mm, alt N-S |
| Ø5×5 | 48 | 3 per gap × 8 gaps × 2 rotors, radial Halbach triplets R=38/48/58 |

Pockets: Ø20.3×5.2 and Ø5.3×5.2. Glue/assembly force warnings same as Gen-A.

## Coils

- 12× narrower pancake formers, **star 3φ** (4 coils/phase)
- Wire options:
  - **30 AWG ~250 turns/coil** (higher V, thinner)
  - **26 AWG ~120 turns/coil** (higher I, easier wind)
- Phase turns: 4 × series (or 2S2P) — document your interconnect

## Air gap

Same ~**7 mm** magnet-to-magnet target; denser coils may need slightly tighter former height (`core_t=3.6`). Brace with M4 rods against attraction.

## Estimated EMF

Same B_gap ≈ **0.55 T** Halbach-boosted assumption. More coils/phase → higher voltage or lower per-coil turns for same V.

| RPM | Est. EMF (phase RMS, 30 AWG 250 t, 4S) | vs Gen-A |
|-----|----------------------------------------|----------|
| 200 | **~5–9 V** | Similar / slightly higher copper fill |
| 300 | **~8–13 V** | |
| 1000 | **~25–45 V** | |

Power @200 RPM: roughly **3–7 W** matched — modest edge on Gen-A if winding fill is good. Halbach **+10–30%** vs large-only (estimated).

## Parts to print

| File | Qty |
|------|-----|
| `rotor_carrier_a.stl` | 2 (same as Gen-A) |
| `stator_core.stl` | 1 |
| `coil_former.stl` | 12 |
| `endbell_front.stl` | 1 |
| `endbell_rear.stl` | 1 |
| `shaft_collar.stl` | 2–4 |

## BOM

Same mechanical BOM as Gen-A + more magnet wire. Steel disks ×2, Ø8 shaft, 608ZZ ×2–4, M4 braces ×4.

## Print / safety

Same as Gen-A. 12 formers: print in batches; 0.4 mm nozzle. **Dual-rotor attraction hazard** unchanged.
