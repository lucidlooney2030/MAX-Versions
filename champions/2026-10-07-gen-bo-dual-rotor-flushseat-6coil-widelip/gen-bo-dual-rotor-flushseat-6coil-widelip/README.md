# Gen-BO — nightly 2026-10-07 `gen-bo-dual-rotor-flushseat-6coil-widelip`

Generated 2026-10-07 (ET, nightly run started 9:05 PM). All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG @20 °C,
steel back-iron by the scorer's `--back-iron` image method). Full report: [SCORE.md](SCORE.md), field plot:
[bz_midplane.png](bz_midplane.png), extra geometry checks: [GEOM_CHECK.md](GEOM_CHECK.md).

## Design idea

Flush seat + wider copper + tight assists: the magnets sit on the steel in 5.00 mm through-pockets (carrier = magnet height, recess 0 instead of 0.10 mm), so the magnet faces are 0.2 mm closer while still exactly 0.50 mm from the wound envelope; the bobbin lip beyond the copper is trimmed 1.0 → 0.8 mm (still the 0.8 mm wall minimum, stator web still 1.2 mm), which widens each copper sector by ~0.6° on 28–70 mm × 18.0 mm-build bobbins; and the diametric Ø5 assists are pulled in to R43/50/57 (±7 mm) where they add most flux under the copper. Same Ø134 × 4.76 mm steel discs as Gen-BL.

## Honest numbers @ 200 RPM (scorer output only)

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R), **with steel** (`--back-iron`) | **5.497 W** (4.75 W with hot copper @60 °C) |
| Air-core what-if (same kit, no `--back-iron`) | 2.713 W (7.73 V rms/ph) |
| Without the Ø5 assists (`--back-iron --halbach none`) | 5.120 W |
| What-if: only a looser fill 0.60 wind (`--back-iron --fill 0.60`): just 550 t fit the same window (the scorer flags the 595 t claim FAIL at that fill — wind only what fits) | 5.079 W |
| Open-circuit voltage | **11.00 V rms/phase** (18.98 V line) |
| Phase resistance (20 °C) | **16.51 Ω** |
| Turns per coil | **595** (= scorer turns-fit at fill 0.65; do not raise) |
| Peak / mean-over-window Bz | 0.540 / 0.104 T |
| Matched / short-circuit current | 0.33 / 0.67 A per phase |
| Verdict | **PASS** (scorer) · geometry check **PASS** |

Topology **dual_rotor**, 8 poles, 6 coils × 1 stator, star 3φ, 2 coils in series per phase.
Copper total **370 m** of 26 AWG (6 coils × 61.6 m incl. 0.15 m leads) — inside the ~370 m budget of one ~390 m spool.
Champion to beat: Gen-BL 5.299 W (same `--back-iron` mode) → this kit **BEATS** it (1.04×).

**Honesty limits:** the `--back-iron` number is the scorer's **optimistic upper bound**: steel is modelled by first-order images of an
infinite, unsaturated plate. The magnets really sit on the steel (through-pockets), which is the image plane the scorer assumes, but
finite disc size, saturation and eddy/hysteresis losses are not modelled. Air-core coils, no AC loss, ideal series connection, 20 °C copper.

## Magnet polarity / clocking

Rotor A pocket 0 (at the D-flat / rim notch): N toward the stator; alternate N/S around. Rotor B is the same print, flipped to face A:
its pocket 0 (at its notch, which lands on the same D-flat) gets S toward the stator, alternating. Result: every magnet faces an opposite
pole directly across the gap (`rotor_b_offset_deg = 0`, `rotor_b_same_axis = true`; scorer clocking factor 1.000).
Key: D-flat bore + rim index notch = pocket 0, and the steel disc's notch lines up with it. Brace holes at [45, 135, 225, 315]° (flip-symmetric);
steel-clamp M3 holes at [0, 90, 180, 270]° (R30) and [45, 135, 225, 315]° (R63), also flip-symmetric,
so a flipped rotor only mounts aligned. Magnets: 16× Ø20×5 N52 (8 per rotor, R50) + 48× Ø5×5 N52 **diametric** assists
(24 per rotor, between poles at R43 / 50 / 57).

## ⚠️ Ø5 assist magnets — DIAMETRIC only

The 48 × Ø5×5 assists count **only if diametrically magnetised** (magnetisation across the diameter); glue them with the
magnetisation **tangential** (along the circumference), direction per the arrows on `preview.png` (scorer signs {'A': -1, 'B': 1}).
Axially magnetised Ø5 discs do **not** form a Halbach assist and are **not counted** by the scorer; if you only have axial Ø5,
leave the pockets empty and expect ≈5.12 W (scorer, same kit, `--halbach none`). Epoxy each one before the second rotor approaches —
a loose diametric magnet will spin in its pocket to align with the big magnets' field.

## Flush magnet seat (tonight's gap lever) — measure your magnets

The rotor carrier is printed exactly as thick as the magnet (5.00 mm, through-pockets), so each Ø20 / Ø5 sits on the steel with its face **level with the rotor face** (as-built recess 0.00 mm instead of 0.10 mm on Gen-BL). The magnet faces are therefore 10.70 mm apart instead of 10.90 mm, at exactly the 0.50 mm magnet→wound-envelope minimum. **Before gluing, measure every magnet with calipers.** N52 discs are usually 5.00 ±0.05 mm; if any measures over 5.00 mm, or the printed carrier is thinner than 5.00 mm (check with calipers), the magnet will stand proud — then reprint `gap_sleeve.scad` longer by 2× the worst proud amount (edit `m2m` in `parameters.scad`) so the 0.5 mm clearance is kept; the score drops slightly (scan: ≈1 % per 0.05 mm of proud magnet, since 0.1 mm recess per side cost 2.2 %). At step 7 put the 0.50 mm feeler shims between the **magnet faces** and the flanges, not the PLA.

## Steel back-iron (REQUIRED for the scored watts)

Buy / cut **2× Ø134 × 4.76 mm (3/16") mild-steel discs** (S235/A36/1008–1018 CRS), OD Ø134, centre hole Ø26, hole map =
`print-packs/laser-cut/steel_backiron_disc.dxf` (generated from `steel_backiron_disc.scad`, same holes as the rotor). Any online
laser-cut service (SendCutSend / OSHCut / local shop) cuts it from the DXF; zinc-plate or paint against rust.
Each disc (stack) sits on the hub side of its rotor carrier around the hub; magnets drop through the pockets onto the steel and are epoxied to it.
Clamp steel + carrier with 8× M3×16 + nuts per rotor.

**Re-use note (Gen-BO):** the disc OD (Ø134), centre hole (Ø26), M3 hole map (R30 at 0/90/180/270°, R63 at 45/135/225/315°), M4 brace holes (R18 at 45°…) and rim notch are **identical to Gen-BL / Gen-BI's** `steel_backiron_disc.dxf` — the same laser-cut steel discs work; the rotor carriers are NEW (flush 5.00 mm through-pockets and a new Ø5 map), so print new rotors. New bobbins (28–70 mm, 0.8 mm lip) and a new stator are needed too.

Thickness check (`_build/steel_flux.py`, magpylib, not part of the scorer): flux entering the steel ≈ 0.278 mWb per pole.
Half of it returns each way through the disc: ≈0.54 T if it spreads over the full radial width, ≈1.46 T if it stays in a
band one magnet wide (worst case) at 4.76 mm. (At 3 mm the worst-case band would be ≈2.3 T, i.e. saturated — that is why tonight's
kits use ≥4.76 mm.) Without the steel the scorer gives only **2.71 W** — the steel is not optional.

## Parts to print (`print-packs/parts/`; all on ONE plate in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_face_a.stl` | 1 | flat (magnet) face down, hub up; through pockets |
| `rotor_face_b.stl` | 1 | identical pocket map (offset 0), flipped at assembly |
| `stator_core.stl` | 1 | 6 through bays, bobbins flush both faces, frame holes between stations |
| `coil_former.stl` | **6** | bobbin base, flange down |
| `coil_lid.stl` | **6** | flange down; CA-glue onto hub before winding |
| `endbell_front.stl` / `endbell_rear.stl` | 1 / 1 | 608 boss; boss side needs supports |
| `frame_standoff.stl` | 12 | 29.5 mm tubes on the M3 frame rods (stator ↔ endbells, outside the rotor) |
| `gap_sleeve.stl` | 1 | 10.7 mm shaft spacer between the two rotors (sets the gap, takes the magnet pull) |
| `gap_spacer.stl` | 6 | 0.50 mm assembly feeler shims |
| `shaft_collar.stl` | 4 | D-flat bore, M3 set screw on the flat |
| `fit_coupon.stl` | 1 | print FIRST: Ø20/Ø5 through pockets, 608 seat, D-bore, gap shim, bay slice |

One-plate: `print-packs/one-plate/one_plate_layout.stl`, bbox measured from the STL **407.9 × 408.0 mm**
(≤ 410; Kobra 3 Max 420 bed), preview `print-packs/one-plate/preview.png`. PLA/PETG, 0.4 mm nozzle, 0.20 mm layers
(0.6 mm nozzle is fine for endbells/standoffs). Binary STL, mm. Print the fit coupon on its own first (it is also on the plate).

## Hardware BOM (non-printed)

- Steel: 2× Ø134 × 4.76 mm (3/16") mild-steel discs · 2× 608 bearings · Ø8 mm D-flat shaft ≥ 134 mm (stack 99 mm + collars)
- 6× M3 threaded rod ≈ 97 mm + nuts/washers (frame) · 16× M3×16 + nuts (steel clamp)
- 2× M3 heat-set inserts (radial, in each rotor hub, below the steel) + 2× M3×6 set screws onto the D-flat; 4× M3 set screws for collars
- 4× M4 threaded rod ~150 mm + 16 nuts (TEMPORARY jack/brace rods for assembly) · 1.75 mm filament (bobbin pins) · epoxy + CA
- 370 m 26 AWG enamelled copper (0.45 mm OD)

## Winding

Bobbin window 8.10 × 18.00 mm → 18 layers, **595 turns** of 26 AWG at fill 0.65
(61.6 m per coil — use a drill/lathe winding jig and a turn counter). Copper sector r 28–70 mm × 53.24°.
Wind **before** assembly; copper only between the 0.8 mm flanges, nothing proud. Magnet→wound envelope 0.50 mm
(as-built pocket recess 0.00 mm; ≥0.5 PASS); neighbouring bobbins: clearance between neighbouring former footprints at r=28: 1.70 mm; stator web between bays ≥1.2 mm (GEOM_CHECK.md).

Wiring (3φ star, from the scorer phasors): `S0:A+ S1:C+ S2:B+ S3:A+ S4:C+ S5:B+` — same-letter coils in series per phase, '−' = swap that coil's leads.
Join the three phase ends to a common star point; take A/B/C to a 3-phase bridge rectifier (6× Schottky, e.g. SB560) for DC.
Series vs parallel: wiring the coils of each phase in parallel instead of series halves Voc and quarters R (about 5.50 V rms/ph, 4.13 Ω)
but gives the **same matched-load watts** — it only moves the load-matching point. Series is recommended (rectifier drop is a smaller fraction).

**Dense winding is required for the scored turns.** The scored turns assume a dense, layer-by-layer wind at fill 0.65 (insulated-wire area / window; the scorer cap). Use a winding jig on a drill/lathe with a turn counter, lay each layer side-by-side with light back-tension, and do not scramble-wind: a scramble wind only reaches ≈0.55–0.60 and then the window holds fewer turns (scorer what-if `--fill 0.60` is in the table above). Never wind more than the listed turns — the copper must stay below the flanges.

## Assembly order / safety

1. Print the fit coupon; check Ø20/Ø5 fit in the through-pockets, the 608 seat and the D-bore on your shaft; test-drop a wound bobbin in the bay slice.
2. Glue each lid onto its base hub, wind 595 t in 18 even layers, leads out through the lid slots.
3. Drop bobbins into the stator bays (lid/tab side = +Z, lead-groove face), pin with 1.75 mm filament, epoxy. Wire per the map above.
4. Rotor A: bolt the steel to the carrier, then seat magnets one at a time through the pockets onto the steel (polarity rule above), epoxy.
   **Keep the two magnet rotors far apart (> 30 cm) and away from steel tools** until step 6.
5. Shaft + rotor A + gap sleeve; slide the stator over the sleeve, frame rods + standoffs to the front endbell.
6. **Clap hazard — brace before seating the second magnet face:** steel-backed N52 across a 10.7 mm gap pulls very hard. Thread the 4 temporary
   M4 rods through rotor B / stator / rotor A (brace holes R18) with nuts on both sides, and lower rotor B onto the gap sleeve by turning the nuts. Never let it jump.
7. Check the gap with the 0.50 mm shims, set hub set screws + collars, fit the rear endbell.
8. **Remove the temporary M4 rods and every shim before spinning.** Spin by hand first and listen for rubbing.
9. **Brim** the 0.8 mm bobbin flanges and the thin 1.2 mm stator webs when printing.

Re-score: `/workspace/generators/tools/physics_scorer/score_kit score /workspace/generators/2026-10-07/gen-bo-dual-rotor-flushseat-6coil-widelip --out /workspace/generators/2026-10-07/gen-bo-dual-rotor-flushseat-6coil-widelip --back-iron` (air-core: drop `--back-iron`, use another `--out`).
