# SCORECARD — Austin generators 2026-09-18

Combined magnet kit on all designs: **16× Ø20×5 + 48× Ø5×5** (Halbach / concentrator assist). Printer: Anycubic Kobra 3 Max Combo. Binary STLs (OpenSCAD `--export-format=binstl`).

Night-0 (2026-09-17) was dual AFPM 8+8 / 6-coil, same rotors / 12-coil, and flat 16-pole + steel return. Tonight explores **radial outrunner**, **nested-ring dual AFPM**, and **edge-standing spoke** topologies.

## Ranking

| Rank | Design | Est. power @200 RPM | Printability | Build difficulty | Verdict |
|------|--------|---------------------|--------------|------------------|---------|
| 1 | **Gen-E** nested dual-ring | **Best (~3–7 W)** | Good (print ×2 rotors) | Hard (dual clap + Halbach) | Best output path if you accept dual-rotor risk |
| 2 | **Gen-D** radial outrunner | Strong (~2–5 W) | **Best** (single rotor drum) | Medium (radial glue fiddly) | Best first *new* topology after night-0 |
| 3 | **Gen-F** spoke / transverse | Lower (~1–3.5 W) | Good | Medium–hard (edge-standing flips) | Learning / safer than dual AFPM; lower W |

## Assumptions (all EMF/power numbers)

1. N52 disks; steel-backed where recesses exist.
2. Halbach / concentrator smalls add roughly **+10–25% B** vs large-only (**estimated**, not FEA/dyno).
3. Winding fill ~55–65% of former window; resistive matched load; neglect rectifier drop.
4. Mechanical RPM at shaft; no gearbox.
5. Air gaps near README targets; wider gap collapses power quickly.

## Topology notes

- **Gen-D:** 12 radial OD poles + 4 end assists + 48 rim Halbach fillers; outer 12-slot stator; single radial gap ~1–2 mm.
- **Gen-E:** Per rotor 6 outer @ R=58 + 2 inner @ R=26 + 24 smalls; dual rotors; 9-coil stator on outer ring — not Gen-A’s single-pitch 8+8.
- **Gen-F:** 8 spokes × 2 edge-standing larges + 6 tip smalls; 8-window stator + steel return — not Gen-C’s flat disk.

## Recommendation for tonight

Print **Gen-D rotor_drum + stator_shell + 2–3 coil formers** first (prove radial pockets and air gap), and print a **magnet/bearing fit coupon**. If dual-rotor appetite remains from Gen-B night-0, queue **Gen-E** rotors next for max watts. Keep **Gen-F** as the edge-standing experiment once coupons pass.

## Files

- `/workspace/generators/2026-09-18/gen-d-radial-outrunner/`
- `/workspace/generators/2026-09-18/gen-e-nested-dual-ring/`
- `/workspace/generators/2026-09-18/gen-f-spoke-flux/`

Tomorrow: try a **Halbach barrel / cylindrical dual radial** or **axial with 10+6 unequal dual split** and measure coupon clearances from tonight’s prints if Austin runs any.
