# Gen-H — Unequal 10+6 nested dual-rotor AFPM / 12-coil 3φ

Dual-rotor axial-flux with **unequal nested rings** — **NOT Gen-E’s 6+2**. Each rotor: **5 outer + 3 inner** Ø20×5. Across two rotors = **10 outer + 6 inner**. Stator carries **12** pancakes (denser than Gen-E’s 9).

## Magnet inventory (uses BOTH kits)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **10** (5 per rotor) | Outer ring **R = 56 mm**, 72° steps, axial alt N-S toward gap |
| Ø20×5 | **6** (3 per rotor) | Inner ring **R = 28 mm**, 120° steps +30° offset, axial alt N-S |
| Ø5×5 | **30** (15 per rotor) | Outer-gap Halbach triplets @ **R = 46 / 56 / 66** on 5 bisectors |
| Ø5×5 | **10** (5 per rotor) | Inter-ring concentrators @ **R = 40** on outer-pole rays |
| Ø5×5 | **6** (3 per rotor) | Inner-pole inward assists @ **R = 22** |
| Ø5×5 | **2** (1 per rotor) | Extra mid-gap filler → **24 smalls/rotor** |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **144 mm**, thick **7.2 mm**. Steel recess Ø136 × 2.5.

### Polarity map (gap face = +Z on each rotor)

**Outer larges (rotor A):** even indices **N** toward gap, odd **S**. Rotor B mirrors (N faces S across gap).

**Inner larges:** same alt rule on 3-pole set; +30° offset vs outer for flux-path variety.

**Halbach triplet** (bisector after large N @ angle a):

| Small @ R | Magnetization |
|-----------|----------------|
| 46 (inner) | Circumferential toward N |
| 56 (mid) | **Axial N** reinforce |
| 66 (outer) | Circumferential opposite (Halbach loop) |

Mirror for S. Inter-ring @ R=40: axial same as outer pole. Inner assists @ R=22: axial same as their inner pole.

**⚠️ Dual-rotor clap warning (MANDATORY):** Axial attraction is severe. Install **4× M4 brace rods** and dry-fit bearings **before** magnetting the second rotor. Glue larges first, Halbach smalls last (they jump). Mark gap faces A/B before epoxy.

## Coils

- **12** pancake formers (3φ × 4) — denser copper than Gen-E’s 9
- Wire: **30 AWG ~300–350 t/coil** (primary) **OR** 26 AWG ~100–140 t (higher current / lower V)
- Star 3φ: (0,3,6,9)=A, (1,4,7,10)=B, (2,5,8,11)=C — series per phase
- Spool: ~1 lb 30 AWG covers 12 coils at ~320 t

## Air gap

Dual AFPM magnet-to-magnet **~7 mm**. Do not go below ~5 mm without thicker braces.

## Estimated EMF / power

B_gap Halbach-boosted ≈ **0.5–0.65 T** on outer ring. More outer poles (5 vs Gen-E’s 6) but higher copper (12 vs 9) and 3-pole inner vs Gen-E’s 2.

| RPM | Est. phase RMS (30 AWG ~320 t, 4S) | Est. matched power |
|-----|-------------------------------------|--------------------|
| 200 | **~5–10 V** | **~3.5–8 W** |
| 300 | **~8–15 V** | **~6–12 W** |
| 1000 | **~25–50 V** | **~18–35 W** |

Contends with Gen-E; may tie or slightly beat on copper density, trails Gen-G’s dual-radial tip-speed story.

## Modular interface

| Spec | Value |
|------|-------|
| Shaft | Ø8 / bore Ø8.35 |
| Bearings | 608ZZ Ø21.85×7.2 |
| Hub | Ø30×10 |
| Inner bolt circle | 6× M3 @ **R=36** |
| Outer bolt circle | 6× M3 @ **R=70** |
| **Endbell family** | **Gen-E scale: 6× @ R=72** |
| Brace | 4× M4 @ R≈55 (stator) |
| Air-gap stack | ~7 mm magnet-to-magnet |
| Coil pitch | 30° (12 stations @ R_coil=56) |

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_unequal.stl` | **2** | Magnet face up; brim |
| `stator_core.stl` | 1 | Flat on bed |
| `coil_former.stl` | **12** | Flange on bed |
| `endbell_front.stl` / `endbell_rear.stl` | 1 each | Gen-E family |
| `shaft_collar.stl` | 2–4 | |

**Fit coupon:** magnet pockets + 608 press before both rotors.

## BOM

- 16× Ø20×5 + 48× Ø5×5
- 2× steel disks ~Ø136 × 2–3 mm
- Ø8 shaft, 2–4× 608ZZ, 4× M4 threaded rod braces, M3 + heat-set
- 30 AWG (or 26 AWG) magnet wire

## Print / safety

**0.4 mm** default. Dual-rotor clap hazard — braces first, magnets second, Halbach smalls last.
