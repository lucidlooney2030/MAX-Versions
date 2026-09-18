# Gen-E — Nested dual-ring AFPM / 9-coil 3φ

Dual-rotor axial-flux with **nested magnet rings** (not Gen-A’s single-pitch 8+8). Each rotor: **6 outer + 2 inner** Ø20×5, plus **24** Ø5×5 (Halbach triplets on outer gaps + inter-ring concentrators). Two rotors = **16 large + 48 small**. Pancake stator with **9** coil stations spanning the outer ring.

## Magnet inventory (uses BOTH kits)

| Kit | Qty | Placement |
|-----|-----|-----------|
| Ø20×5 | **12** (6 per rotor) | Outer ring **R = 58 mm**, 60° steps, axial alt N-S toward gap |
| Ø20×5 | **4** (2 per rotor) | Inner ring **R = 26 mm**, 180° steps +90° offset, axial alt N-S toward gap |
| Ø5×5 | **36** (18 per rotor) | Outer-gap Halbach triplets @ **R = 48 / 58 / 68** on each of 6 bisectors |
| Ø5×5 | **12** (6 per rotor) | Inter-ring concentrators @ **R = 42** on outer-pole rays |

Pockets: **Ø20.3×5.2**, **Ø5.3×5.2**. Carrier OD **148 mm**, thick **7.2 mm**. Steel recess Ø140 × 2.5 for bought backing disks.

### Polarity map (gap face = +Z on each rotor)

**Outer larges** (rotor A): even indices **N** toward gap, odd **S**. Rotor B mirrors so N faces S across the gap (attraction).

**Inner larges:** same rule on their 2-pole set; keep electrical sense so inner N aligns under an outer N ray if you want radial flux bridges — or offset 90° as modeled for variety (see SCAD).

**Small Halbach triplet** (outer bisector after a large **N** at angle a):

| Small @ R | Magnetization |
|-----------|----------------|
| 48 (inner) | Circumferential toward N pole |
| 58 (mid) | **Axial N** (reinforce) |
| 68 (outer) | Circumferential opposite (Halbach loop) |

Mirror for **S** poles. **Inter-ring** smalls @ R=42: axial same sense as their outer pole (flux concentrators between rings).

**Assembly:** Dual-rotor **axial attraction is severe**. Install M4 brace rods and dry-fit bearings **before** magnetting the second rotor. Glue larges first, then Halbach smalls (they jump), then inter-ring. Mark “gap face A/B” before epoxy.

## Coils

- **9** pancake formers on stator (3φ × 3)
- Wire: **30 AWG ~300–400 turns/coil** (higher V for nested outer ring) or **26 AWG ~120–160 t**
- Star 3φ: coils (0,3,6)=A, (1,4,7)=B, (2,5,8)=C — all series per phase
- Spool assumption: ~**1 lb** 30 AWG hobby spool for full 9-coil set at ~350 t

## Air gap

Target magnet-to-magnet **~7 mm** (coil stack + clearances). Dual nested rings share the same axial gap; outer ring dominates flux linkage.

## Estimated EMF / power

B_gap Halbach-boosted ≈ **0.5–0.6 T** on outer ring (estimate). Inner ring adds linkage at smaller radius (lower tip speed contribution).

| RPM | Est. phase RMS (30 AWG ~350 t, 3S) | Notes |
|-----|-------------------------------------|-------|
| 200 | **~5–9 V** | Competitive with Gen-B |
| 300 | **~8–13 V** | |
| 1000 | **~25–45 V** | |

Power @200 RPM matched: roughly **3–7 W** — **top candidate tonight** if dual-rotor build is acceptable. Nested rings aim to beat Gen-A’s single pitch by concentrating more copper under the outer ring while using leftover larges as inner flux anchors.

## Parts to print

| File | Qty | Notes |
|------|-----|-------|
| `rotor_nested.stl` | **2** | Magnet face up; brim |
| `stator_core.stl` | 1 | Flat on bed |
| `coil_former.stl` | 9 | Flange on bed |
| `endbell_front.stl` / `endbell_rear.stl` | 1 each | Feet on bed; **0.6** nozzle OK |
| `shaft_collar.stl` | 2–4 | |

**Fit coupon:** magnet pockets + 608 press before both rotors.

## BOM

- 16× Ø20×5 + 48× Ø5×5
- 2× steel disks ~Ø140 × 2–3 mm
- Ø8 shaft, 2–4× 608ZZ, 4× M4 threaded rod braces, M3 + heat-set inserts
- 30 AWG (or 26 AWG) magnet wire

## Print / safety

**0.4 mm** default. Dual-rotor clap hazard unchanged from Gen-A/B — braces first, magnets second. Halbach smalls last.
