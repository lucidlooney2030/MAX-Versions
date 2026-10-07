# Gen-BM — nightly 2026-10-06 `gen-bm-dual-rotor-steelseat-6coil-lowgap-quarterinch`

Generated 2026-10-06 (ET). All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG @20 °C,
steel back-iron by the scorer's `--back-iron` image method). Full report: [SCORE.md](SCORE.md), field plot:
[bz_midplane.png](bz_midplane.png), extra geometry checks: [GEOM_CHECK.md](GEOM_CHECK.md).

## Design idea

Lowest-gap pancake: Ø20 ring at R52 (Ø5 assists R42/52/62) with low-profile 7.65 mm dense-wound copper and an 18 mm radial build on wide 29–71 mm sector bobbins — the smallest magnet gap of the series (10.25 mm) — on thick 1/4" (6.35 mm) steel so the higher flux per pole stays well clear of saturation.

## Honest numbers @ 200 RPM (scorer output only)

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R), **with steel** (`--back-iron`) | **5.189 W** (4.48 W with hot copper @60 °C) |
| Air-core what-if (same kit, no `--back-iron`) | 2.503 W (7.25 V rms/ph) |
| Without the Ø5 assists (`--back-iron --halbach none`) | 4.885 W |
| What-if: only a looser fill 0.60 wind (`--back-iron --fill 0.60`): just 519 t fit the same window (the scorer flags the 562 t claim FAIL at that fill — wind only what fits) | 4.793 W |
| Open-circuit voltage | **10.43 V rms/phase** (17.97 V line) |
| Phase resistance (20 °C) | **15.72 Ω** |
| Turns per coil | **562** (= scorer turns-fit at fill 0.65; do not raise) |
| Peak / mean-over-window Bz | 0.547 / 0.103 T |
| Matched / short-circuit current | 0.33 / 0.66 A per phase |
| Verdict | **PASS** (scorer) · geometry check **PASS** |

Topology **dual_rotor**, 8 poles, 6 coils × 1 stator, star 3φ, 2 coils in series per phase.
Copper total **352 m** of 26 AWG (6 coils × 58.7 m incl. 0.15 m leads) — inside the ~370 m budget of one ~390 m spool.
Champion to beat: Gen-BF 4.380 W (same `--back-iron` mode) → this kit **BEATS** it (1.18×).

**Honesty limits:** the `--back-iron` number is the scorer's **optimistic upper bound**: steel is modelled by first-order images of an
infinite, unsaturated plate. The magnets really sit on the steel (through-pockets), which is the image plane the scorer assumes, but
finite disc size, saturation and eddy/hysteresis losses are not modelled. Air-core coils, no AC loss, ideal series connection, 20 °C copper.

## Magnet polarity / clocking

Rotor A pocket 0 (at the D-flat / rim notch): N toward the stator; alternate N/S around. Rotor B is the same print, flipped to face A:
its pocket 0 (at its notch, which lands on the same D-flat) gets S toward the stator, alternating. Result: every magnet faces an opposite
pole directly across the gap (`rotor_b_offset_deg = 0`, `rotor_b_same_axis = true`; scorer clocking factor 1.000).
Key: D-flat bore + rim index notch = pocket 0, and the steel disc's notch lines up with it. Brace holes at [45, 135, 225, 315]° (flip-symmetric);
steel-clamp M3 holes at [0, 90, 180, 270]° (R30) and [45, 135, 225, 315]° (R65), also flip-symmetric,
so a flipped rotor only mounts aligned. Magnets: 16× Ø20×5 N52 (8 per rotor, R52) + 48× Ø5×5 N52 **diametric** assists
(24 per rotor, between poles at R42 / 52 / 62).

## ⚠️ Ø5 assist magnets — DIAMETRIC only

The 48 × Ø5×5 assists count **only if diametrically magnetised** (magnetisation across the diameter); glue them with the
magnetisation **tangential** (along the circumference), direction per the arrows on `preview.png` (scorer signs {'A': -1, 'B': 1}).
Axially magnetised Ø5 discs do **not** form a Halbach assist and are **not counted** by the scorer; if you only have axial Ø5,
leave the pockets empty and expect ≈4.88 W (scorer, same kit, `--halbach none`). Epoxy each one before the second rotor approaches —
a loose diametric magnet will spin in its pocket to align with the big magnets' field.

## Steel back-iron (REQUIRED for the scored watts)

Buy / cut **2× Ø138 × 6.35 mm (1/4") mild-steel discs** (S235/A36/1008–1018 CRS), OD Ø138, centre hole Ø26, hole map =
`print-packs/laser-cut/steel_backiron_disc.dxf` (generated from `steel_backiron_disc.scad`, same holes as the rotor). Any online
laser-cut service (SendCutSend / OSHCut / local shop) cuts it from the DXF; zinc-plate or paint against rust.
Each disc (stack) sits on the hub side of its rotor carrier around the hub; magnets drop through the pockets onto the steel and are epoxied to it.
Clamp steel + carrier with 8× M3×16 + nuts per rotor.

Thickness check (`_build/steel_flux.py`, magpylib, not part of the scorer): flux entering the steel ≈ 0.278 mWb per pole.
Half of it returns each way through the disc: ≈0.39 T if it spreads over the full radial width, ≈1.10 T if it stays in a
band one magnet wide (worst case) at 6.35 mm. (At 3 mm the worst-case band would be ≈2.3 T, i.e. saturated — that is why tonight's
kits use ≥4.76 mm.) Without the steel the scorer gives only **2.50 W** — the steel is not optional.

## Parts to print (`print-packs/parts/`; all on ONE plate in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_face_a.stl` | 1 | flat (magnet) face down, hub up; through pockets |
| `rotor_face_b.stl` | 1 | identical pocket map (offset 0), flipped at assembly |
| `stator_core.stl` | 1 | 6 through bays, bobbins flush both faces, frame holes between stations |
| `coil_former.stl` | **6** | bobbin base, flange down |
| `coil_lid.stl` | **6** | flange down; CA-glue onto hub before winding |
| `endbell_front.stl` / `endbell_rear.stl` | 1 / 1 | 608 boss; boss side needs supports |
| `frame_standoff.stl` | 12 | 31.1 mm tubes on the M3 frame rods (stator ↔ endbells, outside the rotor) |
| `gap_sleeve.stl` | 1 | 10.2 mm shaft spacer between the two rotors (sets the gap, takes the magnet pull) |
| `gap_spacer.stl` | 6 | 0.50 mm assembly feeler shims |
| `shaft_collar.stl` | 4 | D-flat bore, M3 set screw on the flat |
| `fit_coupon.stl` | 1 | print FIRST: Ø20/Ø5 through pockets, 608 seat, D-bore, gap shim, bay slice |

One-plate: `print-packs/one-plate/one_plate_layout.stl`, bbox measured from the STL **407.9 × 408.0 mm**
(≤ 410; Kobra 3 Max 420 bed; this larger kit is packed with ≥2.0 mm between parts — `_build/plate_verify.py` — so keep brims narrow, ≤1.5 mm, or print the bobbins as a second plate from `print-packs/parts/`), preview `print-packs/one-plate/preview.png`. PLA/PETG, 0.4 mm nozzle, 0.20 mm layers
(0.6 mm nozzle is fine for endbells/standoffs). Binary STL, mm. Print the fit coupon on its own first (it is also on the plate).

## Hardware BOM (non-printed)

- Steel: 2× Ø138 × 6.35 mm (1/4") mild-steel discs · 2× 608 bearings · Ø8 mm D-flat shaft ≥ 137 mm (stack 102 mm + collars)
- 6× M3 threaded rod ≈ 99 mm + nuts/washers (frame) · 16× M3×16 + nuts (steel clamp)
- 2× M3 heat-set inserts (radial, in each rotor hub, below the steel) + 2× M3×6 set screws onto the D-flat; 4× M3 set screws for collars
- 4× M4 threaded rod ~150 mm + 16 nuts (TEMPORARY jack/brace rods for assembly) · 1.75 mm filament (bobbin pins) · epoxy + CA
- 352 m 26 AWG enamelled copper (0.45 mm OD)

## Winding

Bobbin window 7.65 × 18.00 mm → 17 layers, **562 turns** of 26 AWG at fill 0.65
(58.7 m per coil — use a drill/lathe winding jig and a turn counter). Copper sector r 29–71 mm × 52.68°.
Wind **before** assembly; copper only between the 0.8 mm flanges, nothing proud. Magnet→wound envelope 0.60 mm
(as-built pocket recess 0.10 mm; ≥0.5 PASS); neighbouring bobbins: clearance between neighbouring former footprints at r=29: 1.70 mm; stator web between bays ≥1.2 mm (GEOM_CHECK.md).

Wiring (3φ star, from the scorer phasors): `S0:A+ S1:C+ S2:B+ S3:A+ S4:C+ S5:B+` — same-letter coils in series per phase, '−' = swap that coil's leads.
Join the three phase ends to a common star point; take A/B/C to a 3-phase bridge rectifier (6× Schottky, e.g. SB560) for DC.
Series vs parallel: wiring the coils of each phase in parallel instead of series halves Voc and quarters R (about 5.21 V rms/ph, 3.93 Ω)
but gives the **same matched-load watts** — it only moves the load-matching point. Series is recommended (rectifier drop is a smaller fraction).

**Dense winding is required for the scored turns.** The scored turns assume a dense, layer-by-layer wind at fill 0.65 (insulated-wire area / window; the scorer cap). Use a winding jig on a drill/lathe with a turn counter, lay each layer side-by-side with light back-tension, and do not scramble-wind: a scramble wind only reaches ≈0.55–0.60 and then the window holds fewer turns (scorer what-if `--fill 0.60` is in the table above). Never wind more than the listed turns — the copper must stay below the flanges.

## Assembly order / safety

1. Print the fit coupon; check Ø20/Ø5 fit in the through-pockets, the 608 seat and the D-bore on your shaft; test-drop a wound bobbin in the bay slice.
2. Glue each lid onto its base hub, wind 562 t in 17 even layers, leads out through the lid slots.
3. Drop bobbins into the stator bays (lid/tab side = +Z, lead-groove face), pin with 1.75 mm filament, epoxy. Wire per the map above.
4. Rotor A: bolt the steel to the carrier, then seat magnets one at a time through the pockets onto the steel (polarity rule above), epoxy.
   **Keep the two magnet rotors far apart (> 30 cm) and away from steel tools** until step 6.
5. Shaft + rotor A + gap sleeve; slide the stator over the sleeve, frame rods + standoffs to the front endbell.
6. **Clap hazard — brace before seating the second magnet face:** steel-backed N52 across a 10.2 mm gap pulls very hard. Thread the 4 temporary
   M4 rods through rotor B / stator / rotor A (brace holes R18) with nuts on both sides, and lower rotor B onto the gap sleeve by turning the nuts. Never let it jump.
7. Check the gap with the 0.50 mm shims, set hub set screws + collars, fit the rear endbell.
8. **Remove the temporary M4 rods and every shim before spinning.** Spin by hand first and listen for rubbing.
9. **Brim** the 0.8 mm bobbin flanges and the thin 1.2 mm stator webs when printing.

Re-score: `/workspace/generators/tools/physics_scorer/score_kit score /workspace/generators/2026-10-06/gen-bm-dual-rotor-steelseat-6coil-lowgap-quarterinch --out /workspace/generators/2026-10-06/gen-bm-dual-rotor-steelseat-6coil-lowgap-quarterinch --back-iron` (air-core: drop `--back-iron`, use another `--out`).
