# Gen-DH — nightly 2026-10-25 `gen-dh-dual-rotor-8p12c-gen-dd-rotor-reuse-9-layer-stator-upgrade-r86`

Generated 2026-10-25 (ET, nightly run started ≈9:05 PM). All numbers from `physics_scorer` (magpylib, N52 Br 1.43 T, N42 blocks Br 1.29 T as Cuboids, PLA = air, **24 AWG** (bare 0.5106 mm, insulated OD 0.55 mm, resistance from the bare diameter) @20 °C,
steel back-iron by the scorer's `--back-iron` image method). Full report: [SCORE.md](SCORE.md), field plot: [bz_midplane.png](bz_midplane.png),
air-core run: [aircore_score/SCORE.md](aircore_score/SCORE.md), extra geometry checks: [GEOM_CHECK.md](GEOM_CHECK.md).

## Design idea

Stator-only upgrade for a built Gen-DD (the current champion): keep both Gen-DD rotors exactly as they are (16 triple-pole arcs, hubs, Ø247 steel, magnets glued) and swap in a 9-layer stator — 4.95 mm copper instead of 5.5 mm closes the magnet gap from 8.10 to 7.55 mm, and the bobbins go to r67–124 × 18.0 mm (243 t) so the spool is still used to the last metre (scans d3/d5 'ddrot', 54 stators on the fixed Gen-DD rotor; 8 layers is worse on this smaller rotor). Only the stator, bobbins, a shorter gap sleeve and shims are printed — one plate.

**Segmented rotor.** The 4.76 mm steel disc is the structural rotor. The PLA magnet carrier is 8 identical arcs per rotor (one pole each), joined on the steel by countersunk M3 bolts at the arc joints (each head clamps both neighbouring arcs), and the D-flat hub is a separate part bolted to the steel. Any arc or hub can be re-printed and swapped on its own (modular magnet carrier). **Gen-DH re-uses both Gen-DD rotors** (arcs, hubs, Ø247 steel, magnets already glued), so the one-plate pack has NO arcs or hubs: stator with in-place bases, lids, bearing bridges, standoffs, sleeve, shims and collars only. The arc/hub/steel files here are geometry-identical to Gen-DD (same parameters; only the title comment differs) for a from-scratch build — print them on a second plate (`print-packs/parts/`, or Gen-DD's plate 2).

**Annular stator.** The stator is static and held only by the 4 frame rods outside the rotor OD, so its old solid centre carried nothing; it is now open (r < 61.85 mm, 4.0 mm inner rim), which is where the small parts print, and the temporary M4 brace rods pass straight through it.

**Print-in-place bobbin bases.** To fit this machine on one plate, the 12 bobbin bases print inside their own stator bays with a 0.35 mm gap all round (the bay is the bobbin footprint + 0.35 mm; stator webs stay 1.2 mm). After printing, push each base out with your thumb from the flange side; a light pass with a deburring blade cleans any elephant-foot. `fit_coupon_bay.stl` is the same bay slice with one in-place base: **print it first** — if its base does not pop out cleanly on your printer/slicer (gap closed by over-extrusion or elephant-foot), print `print-packs/parts/coil_former.stl` × 12 separately on a second small plate instead (same part). Disable 'detect thin walls' bridging between the parts if your slicer merges the gap.

## Honest numbers @ 200 RPM (scorer output only)

| Metric | Value |
|---|---|
| Matched-load power (3φ, V²/4R), **with steel** (`--back-iron`) | **26.999 W** (23.33 W with hot copper @60 °C) |
| Air-core what-if (same kit, no `--back-iron`) | 12.032 W (13.21 V rms/ph) |
| What-if: Ø5 turn out axial → leave them out (`--back-iron --halbach none`) | 25.905 W |
| What-if: looser fill 0.60 wind (`--back-iron --fill 0.60`, only 225 t fit) | 24.953 W |
| Open-circuit voltage | **19.79 V rms/phase** (22.88 V line) |
| Phase resistance (20 °C) | **10.88 Ω** |
| Turns per coil | **243** (= scorer turns-fit at fill 0.65; do not raise) |
| Peak / mean-over-window Bz | 0.620 / 0.186 T |
| Matched / short-circuit current | 0.91 / 1.82 A per phase |
| Verdict | **PASS** (scorer) · geometry check **PASS** |

Topology **dual_rotor**, 8 poles, 12 coils × 1 stator, star 3φ, 4 coils in series per phase.
Copper total **388 m** of **24 AWG** (12 coils × 32.3 m incl. 0.15 m leads) — inside the ≈390 m budget of one spool of 24 AWG (assumption: one ≈390 m spool per gauge; Austin owns only 24 AWG and 30 AWG).
**Wire is tight:** the scorer's total is 387.6 m incl. 0.15 m leads per coil — measure/weigh your spool first; if it is short, wind fewer turns on ALL 12 coils equally (never more than the listed turns) and re-score with `--set turns=<n>`.

*Note: the scorer's SCORE.md header line still says "26 AWG copper" (fixed text in report.py); the resistance and wire OD it actually used are 24 AWG — see the Wire row of SCORE.md (bare 0.5106 mm) and `wire_awg` in parameters.scad.*
Champion to beat: Gen-DD 26.632 W (same `--back-iron` mode) → this kit **BEATS** it (1.014×).

**Honesty limits:** the `--back-iron` number is the scorer's **optimistic upper bound** (first-order images of an infinite, unsaturated plate; the magnets
really sit on the steel). Finite disc size, saturation, eddy/hysteresis losses, AC copper loss are not modelled; ideal series connection, 20 °C copper.

**Thermal / current limit:** the scorer's thermal note says keep continuous coil current ≲ 0.5 A in printed formers. At 200 RPM a matched load draws
0.91 A per phase — just above 0.5 A. For continuous running use a load of ≥ 28.7 Ω per phase (current 0.50 A): ≈21.52 W (Ohm's law on the scorer's Voc and R), or run matched only in short bursts / below ≈110 RPM and watch coil temperature.

## Magnet polarity / clocking

Rotor A arc over the steel index notch = pocket 0: N toward the stator (an N arc); alternate N/S around (N, S, N, S … arcs). Rotor B is built the same way and flipped to face A: its pocket 0 (over its notch, which lands on the same D-flat) gets S toward the stator (an S arc). Result: every magnet faces an opposite pole across the gap (`rotor_b_offset_deg = 0`, `rotor_b_same_axis = true`; scorer clocking factor 1.000). Key: the hub's D-flat bore, hub notch and steel notch all sit at +X; the hub ↔ steel bolt map (R22 at 0/90/180/270°) and the arc-clamp map are flip-symmetric (a rotor-B arc is the same print turned over), and because the arc map has the same 8-fold symmetry as the poles and is NOT 22.5°-periodic (13°/32° spacing), an arc can only ever sit with its Ø20 pocket on a pole angle. Magnets: 16× Ø20×5 N52 as 8 poles per rotor at R86. **Plus 16 of Austin's 20× N42 20×10×5 mm blocks** (4 spare), one per pole on the pole angle at R101.6 — OUTSIDE (at a larger radius than) the Ø20 disc — 20 mm side tangential, 10 mm side radial, **magnetised through the 5 mm thickness** (axial — check yours with a compass/another magnet before gluing; if your blocks are magnetised through 10 or 20 mm they cannot be used here). Each block has the **same polarity toward the stator as the Ø20 next to it**. **Keyhole pocket:** the disc and its block share ONE pocket (no PLA between them). Same polarity side by side, they PUSH each other apart onto the two far walls, which leaves 0.6 mm between disc edge and block face — exactly the positions the scorer models (`R_large` = 86, `block_R_list` = 101.6; the printed pocket centres are offset ±0.15 mm so the pushed-apart magnets land there). If a block ends up closer to its disc than that, the score only goes up (scan: ≈+1 % at 0.3 mm). The scorer models every block exactly (magpylib Cuboid, N42 Br 1.29 T). **48× Ø5×5 fitted as Halbach assists — they count ONLY if your Ø5×5 are DIAMETRICALLY magnetised** (magnetised across the diameter: a diametric Ø5 lying on its flat face points a compass needle sideways; an axial one has its poles on the flat faces). 3 per inter-pole gap at R87.6/93.8/100. **Orientation rule (from the scorer's Halbach sign, verified by forcing both signs):** each Ø5's N side points TANGENTIALLY toward the neighbouring Ø20 whose stator-facing side is **S** (away from the one whose stator face is N). Every arc has the rule engraved: the arrows next to its Ø5 column show the N direction ('N' arcs: arrows point away from their own Ø20, 'S' arcs: toward it). Mark the N side of each Ø5 with a marker first (hang it on a thread next to a known magnet), set it with a non-magnetic pick/toothpick at the arrow direction and epoxy it — a loose diametric Ø5 will spin in its pocket to the wrong (weakening) direction. **If your Ø5 are axial, leave them out: this kit then scores 25.905 W** (scorer `--halbach none`). **Plus 16 of Austin's 20× N52 60×10×3 mm bars** (4 spare), one per pole on the pole angle at R112.2 — the OUTERMOST magnet of each pole, just outside its N42 block — 60 mm side TANGENTIAL, 10 mm side radial, **magnetised through the 3 mm thickness** (axial — check with a compass before gluing; a bar magnetised through 10 or 60 mm cannot be used here). Each bar has the **same polarity toward the stator as the Ø20 and block of its pole**. It sits in a 3.05 mm **blind** pocket cut from the stator face (bar face flush with the disc faces, on a 1.95 mm PLA floor over the steel); the pocket opens into the N42 block pocket so no thin PLA sliver is left. Same polarity, the bar is pushed OUTWARD onto the outer pocket wall — exactly the position the scorer models (magpylib Cuboid, N52 Br 1.43 T). Spare: 4 N42 blocks and 4 N52 bars.

## Flush magnet seat — measure your magnets

The magnet carrier is printed exactly as thick as the magnet (5.00 mm, through-pockets), so each Ø20 sits on the steel with its face **level with the carrier face** (as-built recess 0.00 mm). The magnet faces are 7.55 mm apart, at exactly the 0.50 mm magnet→wound-envelope minimum. **Measure every magnet with calipers before gluing.** If any is over 5.00 mm (or the printed carrier is thinner), it stands proud: then reprint `gap_sleeve.scad` longer by 2× the worst proud amount (edit `m2m`) so the 0.5 mm clearance is kept (the score drops ≈1 % per 0.05 mm). Put the 0.50 mm feeler shims between the **magnet faces** and the flanges at step 8.

## Steel back-iron (REQUIRED for the scored watts)

Buy / cut **2× Ø247 × 4.76 mm (3/16") mild-steel discs** (S235/A36/1008–1018 CRS), OD Ø247, centre hole Ø26; holes: hub clamp 4× M3 at R22 ([0, 90, 180, 270]°), 4× Ø4.3 brace holes at R18 ([45, 135, 225, 315]°), 16× M3 arc clamps at R86 ([13.0, 32.0, 58.0, 77.0, 103.0, 122.0, 148.0, 167.0, 193.0, 212.0, 238.0, 257.0, 283.0, 302.0, 328.0, 347.0]° = ±13° from every pole; the inter-pole angle is taken by the Ø5 column), index notch at +X (= pocket 0).
DXF: `print-packs/laser-cut/steel_backiron_disc.dxf` (from `steel_backiron_disc.scad`) — any laser-cut service (SendCutSend / OSHCut / local shop); zinc-plate or paint.
Magnets drop through the carrier pockets onto the steel and are epoxied to it.
Steel: 2× Ø247 × 4.76 mm (3/16") mild-steel discs, clamp map hub M3 at R22 0/90/180/270°, 4× Ø4.3 brace holes R18 at 45/135/225/315°, 16 arc-clamp M3 at R86 ±13° from every pole, index notch at +X — cut from this kit's `steel_backiron_disc.dxf` (laser-cut service, or any shop that cuts 3/16" mild steel). Lobed arcs: 2.4 mm PLA around each pocket; the epoxy-to-steel bond, not the PLA, holds the magnets. **These are the existing Gen-DD Ø247 discs — re-used, nothing to buy.**
Thickness check (`_build/steel_flux.py`, magpylib, not part of the scorer): ≈0.414 mWb per pole enters the steel; return flux ≈0.39 T spread over the
radial width, ≈1.42 T worst case in a one-magnet-wide band at 4.76 mm (3 mm would be ≈2.2 T, saturated — keep ≥4.76 mm).
Without the steel the scorer gives only **12.03 W** — the steel is not optional.

## Parts to print (`print-packs/parts/`; all on ONE plate in `print-packs/one-plate/`)

| File | Qty | Notes |
|---|---|---|
| `rotor_arc_n.stl` (magnet arc, variant N) | **0 for a Gen-DD owner** (8 from scratch) | 4 per rotor: Ø20 + N42 block + 3× Ø5 through pockets + N52 bar BLIND pocket, engraved 'N' + Ø5 arrows; stator face (countersinks, engraving) UP |
| `rotor_arc_s.stl` (magnet arc, variant S) | **0 for a Gen-DD owner** (8 from scratch) | 4 per rotor: same shape, engraved 'S' + the opposite Ø5 arrows |
| `rotor_hub.stl` | 0 for a Gen-DD owner (2 from scratch) | D-flat hub, Ø58 flange DOWN, tube up; bolts to the steel at R22 |
| `stator_core_with_bases_in_place.stl` | 1 | ANNULAR stator (open centre r<61.85) **with the 12 bobbin bases printed IN PLACE in their bays** (0.35 mm gap); pop the bases out after printing. Brim on. (`stator_core.stl` + `coil_former.stl` = the same parts separately) |
| `coil_lid.stl` | **12** | flange down; CA-glue onto the base hub before winding |
| `endbell_front.stl` / `endbell_rear.stl` | 1 / 1 | 608 bearing BRIDGES (20 mm bars on the 45/225° and 135/315° rods), flat face down, boss up |
| `frame_standoff.stl` | 4 | 29.5 mm tubes on the M3 frame rods (R129.5, outside the rotor) |
| `gap_sleeve.stl` | 1 | 7.55 mm shaft spacer between the hubs (sets the gap, takes the magnet pull) |
| `gap_spacer.stl` | 12 | 0.50 mm feeler shims |
| `shaft_collar.stl` | 4 | D-flat bore, M3 set screw on the flat |
| `fit_coupon.stl` + `fit_coupon_bay.stl` | 1 + 1 | print FIRST on their own: Ø20 through pocket, Ø5 pocket, N42 block pocket, 60×10×3 bar blind pocket (separate strip), 608 seat, D-bore, shim + a full-height bay slice with one print-in-place base |

One-plate: `print-packs/one-plate/one_plate_layout.stl` — bbox measured from the STL **399.0 × 372.3 mm** (≤ 410; Kobra 3 Max 420 bed),
48 bodies, min gap between separate parts 1.90 mm (the in-place bases sit 0.35 mm from their bays by design); preview `print-packs/one-plate/preview.png`.
PLA/PETG, 0.4 mm nozzle, 0.20 mm layers, brim on the stator and lids. Binary STL, mm.

**Bearing bridges / mounting:** the two bar bridges only carry the shaft (the magnet pull is taken by the gap sleeve between the hubs). No printed feet: stand the
machine in a cradle under the stator rim or run two frame rods long into a base board.

## Hardware BOM (non-printed)

- Steel: 2× Ø247 × 4.76 mm (3/16") mild-steel discs · 2× 608 bearings · Ø8 mm D-flat shaft ≥ 131 mm
- 4× M3 threaded rod ≈ 56 mm + nuts/washers (frame; each rod = stator + one standoff + one bridge)
- 32× M3×16 **countersunk** (ISO 10642 / DIN 7991) + nyloc nuts (arc clamps, 16 per rotor) · 8× M3×16 countersunk + nyloc (hubs, 4 per rotor)
- 2× M3 heat-set inserts (radial, in each hub below the steel) + 2× M3×6 set screws onto the D-flat; 4× M3 set screws for the collars
- 4× M4 threaded rod ~150 mm + 16 nuts (TEMPORARY jack/brace rods) · 1.75 mm filament (bobbin pins) · epoxy + CA
- 388 m 24 AWG enamelled copper (0.55 mm OD) — Austin's own spool · 6× Schottky (e.g. SB560) for a 3φ bridge rectifier

## Modular notes (Gen-DH = Gen-DD stator upgrade)

**Both Gen-DD rotors move over unchanged** (arcs with magnets glued, rotor hubs, Ø247 steel discs, clamp bolts, frame rods). This kit's rotor arc/hub/steel files are regenerated from identical parameters (the Gen-DD geometry) only so a from-scratch build is possible. New: stator ring with in-place bobbin bases, 12 lids, **gap sleeve 7.55 mm (Gen-DD: 8.10 mm — the old sleeve must NOT be used with this stator, the rotors would sit 0.275 mm further from the copper on each side and you lose the gain)**, gap shims. The bearing bridges, frame standoffs, frame rods, shaft and collars are geometry-identical to Gen-DD (same Ø269 stator OD and R129.5 rod circle) — re-use them; the stator is 1.1 mm thinner, so re-tension the frame-rod nuts. Wind the 12 new bobbins (243 t, 9 layers) with a fresh spool; keep the Gen-DD stator + 8.10 mm sleeve as a spare/compare unit. Swap stators/rotors with the 4 temporary M4 jack rods: raise rotor B on the nuts (clap hazard in reverse, never by hand), swap the part, lower rotor B, remove the rods.

## Winding

Bobbin window 4.95 × 18.00 mm → 9 layers, **243 turns** of 24 AWG at fill 0.65
(32.3 m per coil). Copper sector r 67–124 mm × 27.01°.
Wind **before** assembly; copper only between the 0.8 mm flanges, nothing proud. Magnet→wound envelope 0.50 mm
(as-built recess 0.00 mm; ≥0.5 PASS); clearance between neighbouring former footprints at r=67: 1.90 mm; stator web between bays ≥1.2 mm (GEOM_CHECK.md).

Wiring (3φ star, from the scorer phasors): `S0:A+ S1:B+ S2:C+ S3:A+ S4:B+ S5:C+ S6:A+ S7:B+ S8:C+ S9:A+ S10:B+ S11:C+` — same-letter coils in series per phase, '−' = swap that coil's leads.
Series vs parallel gives the same matched-load watts (it only moves V and R).

**Dense winding is required for the scored turns.** The scored turns assume a dense, layer-by-layer wind at fill 0.65 (insulated-wire area / window; the scorer cap). Use a winding jig on a drill/lathe with a turn counter, lay each layer side-by-side with light back-tension, and do not scramble-wind: a scramble wind only reaches ≈0.55–0.60 and then the window holds fewer turns (scorer what-if `--fill 0.60` is in the table above). Never wind more than the listed turns — the copper must stay below the flanges.

## Assembly order / safety

1. Print `fit_coupon.stl` + `fit_coupon_bay.stl` first: check Ø20 through-pocket fit, 608 seat, D-bore on your shaft, and that the in-place base pops out of the bay slice.
2. Print the plate; push the 12 bobbin bases out of the stator bays. Glue each lid onto its base hub, wind 243 t in 9 even layers, leads out through the lid slots.
3. Drop the wound bobbins into the stator bays (lid/tab side = +Z, lead-groove face), pin with 1.75 mm filament, epoxy. Wire per the map above.
4. **Gen-DD owner: skip to step 5 with your two finished Gen-DD rotors** (separate them from the Gen-DD stator with the jack rods, see Modular notes; use the NEW 7.55 mm gap sleeve). From scratch: Rotor A: bolt the hub to the steel (countersunk M3 from the flange side, nylocs behind, hub notch on the steel notch). Lay the 8 arcs on the steel (N, S, N, S … starting with an N arc over the notch on rotor A, an S arc on rotor B) and fit the 16 countersunk clamp bolts loosely, then tighten. Seat the magnets one at a time through the pockets onto the steel (polarity rule above) and epoxy: Ø20 discs first, then the N42 blocks into the SAME keyhole pocket as their disc (same polarity; the block is pushed AWAY from the disc onto the far wall by itself — lower it flat into the block end of the keyhole with a non-magnetic stick, keep it pressed flat on the steel — near its disc it will try to flip over — and hold it until the epoxy grabs), then the 16 N52 60×10×3 bars (one per pole into its blind pocket next to the pole, same polarity as its pole: it is pushed AWAY from its disc onto the far wall — lower it flat with a non-magnetic stick, keep it pressed flat, it tries to flip near the pole, hold until the epoxy grabs; these bars are strong, wear eye protection), then the diametric Ø5 last, each turned to its engraved arrow with a non-magnetic pick and held until set.
   Seat ONE magnet at a time and let its epoxy grab before the next: the N42 blocks make each rotor much stronger than a disc-only rotor. **Keep the two magnet rotors > 30 cm apart and away from steel tools** until step 6. Never slide a loose magnet across the steel toward a seated one — they snap together.
5. Shaft + rotor A + gap sleeve; slide the stator over the sleeve (it passes the open centre), frame rods + standoffs to the front bearing bridge (45/225° rods).
6. **Clap hazard — brace before seating the second magnet face:** steel-backed N52 across a 7.55 mm gap pulls very hard. Thread the 4 temporary
   M4 rods through rotor B / the open stator centre / rotor A (brace holes R18) with nuts on both sides, and lower rotor B onto the gap sleeve by turning the nuts. Never let it jump; keep fingers out of the gap.
7. Check the gap with the 0.50 mm shims, set hub set screws + collars, fit the rear bearing bridge (135/315° rods).
8. **Remove the temporary M4 rods and every shim before spinning.** Spin by hand first and listen for rubbing.
9. **Brim** the 0.8 mm bobbin flanges/lids, the stator (1.2 mm webs, 4.0 mm inner rim) when printing.

Re-score: `/workspace/generators/tools/physics_scorer/score_kit score /workspace/generators/2026-10-25/gen-dh-dual-rotor-8p12c-gen-dd-rotor-reuse-9-layer-stator-upgrade-r86 --out /workspace/generators/2026-10-25/gen-dh-dual-rotor-8p12c-gen-dd-rotor-reuse-9-layer-stator-upgrade-r86 --back-iron` (air-core: drop `--back-iron`, use another `--out`).
