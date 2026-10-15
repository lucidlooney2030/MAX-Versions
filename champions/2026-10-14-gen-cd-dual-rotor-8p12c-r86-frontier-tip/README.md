# Gen-CD — nightly 2026-10-14 `gen-cd-dual-rotor-8p12c-r86-frontier-tip`

Generated 2026-10-14 (ET, nightly run started ≈9:10 PM). All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, PLA = air, 26 AWG @20 °C,
steel back-iron by the scorer's `--back-iron` image method). Full report: [SCORE.md](SCORE.md), field plot: [bz_midplane.png](bz_midplane.png),
air-core run: [aircore_score/SCORE.md](aircore_score/SCORE.md), extra geometry checks: [GEOM_CHECK.md](GEOM_CHECK.md).

## Design idea

Push past Gen-CA on the same arc-nested one-plate architecture: poles out to R86, bobbins r65–105 × 4.95 mm copper. Full-resolution scorer picks this window at ≈8.56 W (386 m, at the wire budget) with a Ø229 stator that still packs; thinner-copper R86 tips (r65–107 × 4.65) need Ø232+ and would not pack. Same 8 bolt-on arcs/rotor + D-flat hub + open-centre stator + in-place bobbin bases that unlocked Gen-CA.

**Segmented rotor (why it fits one plate).** The 4.76 mm steel disc is the structural rotor. The PLA magnet carrier is 8 identical arcs per rotor (one pole each), joined on the steel by countersunk M3 bolts at the arc joints (each head clamps both neighbouring arcs), and the D-flat hub is a separate part bolted to the steel. Any arc or hub can be re-printed and swapped on its own (modular magnet carrier). Arcs, hubs, lids and the bearing bridges pack around and inside the open-centre stator.

**Annular stator.** The stator is static and held only by the 4 frame rods outside the rotor OD, so its old solid centre carried nothing; it is now open (r < 59.85 mm, 4.0 mm inner rim), which is where the small parts print, and the temporary M4 brace rods pass straight through it.

**Print-in-place bobbin bases.** To fit this machine on one plate, the 12 bobbin bases print inside their own stator bays with a 0.35 mm gap all round (the bay is the bobbin footprint + 0.35 mm; stator webs stay 1.2 mm). After printing, push each base out with your thumb from the flange side; a light pass with a deburring blade cleans any elephant-foot. `fit_coupon_bay.stl` is the same bay slice with one in-place base: **print it first** — if its base does not pop out cleanly on your printer/slicer (gap closed by over-extrusion or elephant-foot), print `print-packs/parts/coil_former.stl` × 12 separately on a second small plate instead (same part). Disable 'detect thin walls' bridging between the parts if your slicer merges the gap.

## Honest numbers @ 200 RPM (scorer output only)

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R), **with steel** (`--back-iron`) | **8.555 W** (7.39 W with hot copper @60 °C) |
| Air-core what-if (same kit, no `--back-iron`) | 3.784 W (9.33 V rms/ph) |
| What-if: looser fill 0.60 wind (`--back-iron --fill 0.60`, only 341 t fit) | 7.879 W |
| Open-circuit voltage | **14.03 V rms/phase** (14.79 V line) |
| Phase resistance (20 °C) | **17.25 Ω** |
| Turns per coil | **370** (= scorer turns-fit at fill 0.65; do not raise) |
| Peak / mean-over-window Bz | 0.656 / 0.133 T |
| Matched / short-circuit current | 0.41 / 0.81 A per phase |
| Verdict | **PASS** (scorer) · geometry check **PASS** |

Topology **dual_rotor**, 8 poles, 12 coils × 1 stator, star 3φ, 4 coils in series per phase.
Copper total **386 m** of 26 AWG (12 coils × 32.2 m incl. 0.15 m leads) — inside the 386 m budget of one ~390 m spool.
Champion to beat: Gen-CA 8.492 W (same `--back-iron` mode) → this kit **BEATS** it (1.007×).

**Honesty limits:** the `--back-iron` number is the scorer's **optimistic upper bound** (first-order images of an infinite, unsaturated plate; the magnets
really sit on the steel). Finite disc size, saturation, eddy/hysteresis losses, AC copper loss are not modelled; ideal series connection, 20 °C copper.

## Magnet polarity / clocking

Rotor A arc over the steel index notch = pocket 0: N toward the stator; alternate N/S around. Rotor B is built the same way and flipped to face A: its pocket 0 (over its notch, which lands on the same D-flat) gets S toward the stator. Result: every magnet faces an opposite pole across the gap (`rotor_b_offset_deg = 0`, `rotor_b_same_axis = true`; scorer clocking factor 1.000). Key: the hub's D-flat bore, hub notch and steel notch all sit at +X; the hub ↔ steel bolt map (R30 at 0/90/180/270°) and the arc-joint map (8-fold, inter-pole) are flip-symmetric, and because the arc map has the same 8-fold symmetry as the poles, an arc can only ever sit with its pocket on a pole angle. Magnets: 16× Ø20×5 N52 as 8 poles per rotor at R86. **No Ø5 assists in this kit** (all 48 Ø5×5 are spare, none fitted): scan t6: diametric Ø5 assists lower this 8p/12c layout, so all 48 Ø5 are left out.

## Flush magnet seat — measure your magnets

The magnet carrier is printed exactly as thick as the magnet (5.00 mm, through-pockets), so each Ø20 sits on the steel with its face **level with the carrier face** (as-built recess 0.00 mm). The magnet faces are 7.55 mm apart, at exactly the 0.50 mm magnet→wound-envelope minimum. **Measure every magnet with calipers before gluing.** If any is over 5.00 mm (or the printed carrier is thinner), it stands proud: then reprint `gap_sleeve.scad` longer by 2× the worst proud amount (edit `m2m`) so the 0.5 mm clearance is kept (the score drops ≈1 % per 0.05 mm). Put the 0.50 mm feeler shims between the **magnet faces** and the flanges at step 8.

## Steel back-iron (REQUIRED for the scored watts)

Buy / cut **2× Ø198 × 4.76 mm (3/16") mild-steel discs** (S235/A36/1008–1018 CRS), OD Ø198, centre hole Ø26; holes: hub clamp 4× M3 at R30 ([0, 90, 180, 270]°), 4× Ø4.3 brace holes at R18 ([45, 135, 225, 315]°), 8× M3 arc-joint clamps at R86 on the inter-pole angles ([22.5, 67.5, 112.5, 157.5, 202.5, 247.5, 292.5, 337.5]°), index notch at +X (= pocket 0).
DXF: `print-packs/laser-cut/steel_backiron_disc.dxf` (from `steel_backiron_disc.scad`) — any laser-cut service (SendCutSend / OSHCut / local shop); zinc-plate or paint.
Magnets drop through the carrier pockets onto the steel and are epoxied to it.
**New steel** (no earlier disc fits: Ø198, new hole map). Gen-CA and Gen-CB use the SAME discs.
Thickness check (`_build/steel_flux.py`, magpylib, not part of the scorer): ≈0.284 mWb per pole enters the steel; return flux ≈0.35 T spread over the
radial width, ≈1.49 T worst case in a one-magnet-wide band at 4.76 mm (3 mm would be ≈2.4 T, saturated — keep ≥4.76 mm).
Without the steel the scorer gives only **3.78 W** — the steel is not optional.

## Parts to print (`print-packs/parts/`; all on ONE plate in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_face_a.stl` (magnet arc) | **8** | one arc per pole for rotor A: Ø20 through pocket + half countersinks at both ends; countersinks UP |
| `rotor_face_b.stl` (magnet arc) | **8** | same arc for rotor B (identical print) |
| `rotor_hub.stl` | 2 | D-flat hub, Ø74 flange DOWN, tube up; bolts to the steel at R30 |
| `stator_core_with_bases_in_place.stl` | 1 | ANNULAR stator (open centre r<59.85) **with the 12 bobbin bases printed IN PLACE in their bays** (0.35 mm gap); pop the bases out after printing. Brim on. (`stator_core.stl` + `coil_former.stl` = the same parts separately) |
| `coil_lid.stl` | **12** | flange down; CA-glue onto the base hub before winding |
| `endbell_front.stl` / `endbell_rear.stl` | 1 / 1 | 608 bearing BRIDGES (24 mm bars on the 45/225° and 135/315° rods), flat face down, boss up |
| `frame_standoff.stl` | 4 | 29.5 mm tubes on the M3 frame rods (R109.5, outside the rotor) |
| `gap_sleeve.stl` | 1 | 7.55 mm shaft spacer between the hubs (sets the gap, takes the magnet pull) |
| `gap_spacer.stl` | 12 | 0.50 mm feeler shims |
| `shaft_collar.stl` | 4 | D-flat bore, M3 set screw on the flat |
| `fit_coupon.stl` + `fit_coupon_bay.stl` | 1 + 1 | print FIRST on their own: Ø20 through pocket, Ø5 pocket, 608 seat, D-bore, shim + a full-height bay slice with one print-in-place base |

One-plate: `print-packs/one-plate/one_plate_layout.stl` — bbox measured from the STL **403.1 × 403.5 mm** (≤ 410; Kobra 3 Max 420 bed),
86 bodies, min gap between separate parts 0.35 mm (the in-place bases sit 0.35 mm from their bays by design); preview `print-packs/one-plate/preview.png`.
PLA/PETG, 0.4 mm nozzle, 0.20 mm layers, brim on the stator and lids. Binary STL, mm.

**Bearing bridges / mounting:** the two bar bridges only carry the shaft (the magnet pull is taken by the gap sleeve between the hubs). No printed feet: stand the
machine in a cradle under the stator rim or run two frame rods long into a base board.

## Hardware BOM (non-printed)

- Steel: 2× Ø198 × 4.76 mm (3/16") mild-steel discs · 2× 608 bearings · Ø8 mm D-flat shaft ≥ 131 mm
- 4× M3 threaded rod ≈ 56 mm + nuts/washers (frame; each rod = stator + one standoff + one bridge)
- 16× M3×16 **countersunk** (ISO 10642 / DIN 7991) + nyloc nuts (arc joints, 8 per rotor) · 8× M3×16 countersunk + nyloc (hubs, 4 per rotor)
- 2× M3 heat-set inserts (radial, in each hub below the steel) + 2× M3×6 set screws onto the D-flat; 4× M3 set screws for the collars
- 4× M4 threaded rod ~150 mm + 16 nuts (TEMPORARY jack/brace rods) · 1.75 mm filament (bobbin pins) · epoxy + CA
- 386 m 26 AWG enamelled copper (0.45 mm OD) · 6× Schottky (e.g. SB560) for a 3φ bridge rectifier

## Winding

Bobbin window 4.95 × 18.31 mm → 11 layers, **370 turns** of 26 AWG at fill 0.65
(32.2 m per coil). Copper sector r 65–105 mm × 26.91°.
Wind **before** assembly; copper only between the 0.8 mm flanges, nothing proud. Magnet→wound envelope 0.50 mm
(as-built recess 0.00 mm; ≥0.5 PASS); clearance between neighbouring former footprints at r=65: 1.91 mm; stator web between bays ≥1.2 mm (GEOM_CHECK.md).

Wiring (3φ star, from the scorer phasors): `S0:A+ S1:B+ S2:C+ S3:A+ S4:B+ S5:C+ S6:A+ S7:B+ S8:C+ S9:A+ S10:B+ S11:C+` — same-letter coils in series per phase, '−' = swap that coil's leads.
Series vs parallel gives the same matched-load watts (it only moves V and R).

**Dense winding is required for the scored turns.** The scored turns assume a dense, layer-by-layer wind at fill 0.65 (insulated-wire area / window; the scorer cap). Use a winding jig on a drill/lathe with a turn counter, lay each layer side-by-side with light back-tension, and do not scramble-wind: a scramble wind only reaches ≈0.55–0.60 and then the window holds fewer turns (scorer what-if `--fill 0.60` is in the table above). Never wind more than the listed turns — the copper must stay below the flanges.

## Assembly order / safety

1. Print `fit_coupon.stl` + `fit_coupon_bay.stl` first: check Ø20 through-pocket fit, 608 seat, D-bore on your shaft, and that the in-place base pops out of the bay slice.
2. Print the plate; push the 12 bobbin bases out of the stator bays. Glue each lid onto its base hub, wind 370 t in 11 even layers, leads out through the lid slots.
3. Drop the wound bobbins into the stator bays (lid/tab side = +Z, lead-groove face), pin with 1.75 mm filament, epoxy. Wire per the map above.
4. Rotor A: bolt the hub to the steel (countersunk M3 from the flange side, nylocs behind, hub notch on the steel notch). Lay the 8 arcs on the steel and fit the 8 countersunk joint bolts loosely, then tighten. Seat the magnets one at a time through the pockets onto the steel (polarity rule above) and epoxy.
   **Keep the two magnet rotors > 30 cm apart and away from steel tools** until step 6. Never slide a loose magnet across the steel toward a seated one — they snap together.
5. Shaft + rotor A + gap sleeve; slide the stator over the sleeve (it passes the open centre), frame rods + standoffs to the front bearing bridge (45/225° rods).
6. **Clap hazard — brace before seating the second magnet face:** steel-backed N52 across a 7.55 mm gap pulls very hard. Thread the 4 temporary
   M4 rods through rotor B / the open stator centre / rotor A (brace holes R18) with nuts on both sides, and lower rotor B onto the gap sleeve by turning the nuts. Never let it jump; keep fingers out of the gap.
7. Check the gap with the 0.50 mm shims, set hub set screws + collars, fit the rear bearing bridge (135/315° rods).
8. **Remove the temporary M4 rods and every shim before spinning.** Spin by hand first and listen for rubbing.
9. **Brim** the 0.8 mm bobbin flanges/lids, the stator (1.2 mm webs, 4.0 mm inner rim) when printing.

Re-score: `/workspace/generators/tools/physics_scorer/score_kit score /workspace/generators/2026-10-14/gen-cd-dual-rotor-8p12c-r86-frontier-tip --out /workspace/generators/2026-10-14/gen-cd-dual-rotor-8p12c-r86-frontier-tip --back-iron` (air-core: drop `--back-iron`, use another `--out`).
