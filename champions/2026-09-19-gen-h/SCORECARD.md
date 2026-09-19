# SCORECARD — Austin generators 2026-09-19

Combined magnet kit on all designs: **16× Ø20×5 + 48× Ø5×5** (Halbach / concentrator assist). Printer: Anycubic Kobra 3 Max Combo. Binary STLs (OpenSCAD `--export-format=binstl`).

Prior champion: **Gen-E** nested dual-ring (~3–7 W @200 RPM). Tonight explores the scorecard’s suggested follow-ups: **Halbach barrel dual-radial**, **unequal 10+6 AFPM**, and a distinct **claw/Lundell** path.

## Ranking

| Rank | Design | Est. power @200 RPM | Modularity | Printability | One-plate | Verdict |
|------|--------|---------------------|------------|--------------|-----------|---------|
| 1 | **Gen-G** Halbach barrel | **Best (~4–9 W)** | Good (MAX shaft/608; barrel bolt R=54) | Good (2 rotors + annulus) | **YES** (1 plate) | **Beats Gen-E** if dual radial gaps ≤1.5 mm; promote to MAX-Versions |
| 2 | **Gen-H** unequal 10+6 | Strong (~3.5–8 W) | **Best** (Gen-E endbell R=72 family) | Medium (dual clap + Halbach) | **YES** (1 plate) | Contends with Gen-E; denser 12-coil copper; clap hazard unchanged |
| 3 | **Gen-I** claw/Lundell | Lower (~2.5–5.5 W) | Good (Gen-B R=60 endbells) | **Best** (single rotor) | **YES** (1 plate) | Distinct topology; safer build; trails dual-gap on watts |

## Assumptions (all EMF/power numbers)

1. N52 disks; steel-backed where recesses exist; claw steel fingers on Gen-I.
2. Halbach / concentrator smalls add roughly **+10–25% B** vs large-only (**estimated**, not FEA/dyno).
3. Winding fill ~55–65% of former window; resistive matched load; neglect rectifier drop.
4. Mechanical RPM at shaft; no gearbox.
5. Air gaps near README targets; wider gap collapses power quickly.
6. Gen-G dual cylindrical surfaces + higher outer tip speed justify the upper band vs Gen-E axial R=58.

## Topology notes

- **Gen-G:** Outer 12× Ø20 inward + 24 Ø5 OD Halbach; inner 4× Ø20 outward + 24 Ø5; 12 bobbin stator in annular gap; radial air gap 1.0–1.5 mm each face.
- **Gen-H:** Per rotor 5 outer @ R=56 + 3 inner @ R=28 + 24 smalls; dual rotors; 12-coil stator — **not** Gen-E’s 6+2 / 9-coil.
- **Gen-I:** 16 axial poles + 48 smalls; printed claw guide for bought steel fingers; 12-coil stator; single rotor.

## Comparison vs Gen-E champion

| | Gen-E (champion) | Gen-G (#1 tonight) | Gen-H | Gen-I |
|--|------------------|--------------------|-------|-------|
| Est. W @200 | ~3–7 | **~4–9** | ~3.5–8 | ~2.5–5.5 |
| Gaps | Dual axial ~7 mm | Dual radial 1–1.5 mm | Dual axial ~7 mm | Single-sided |
| Coils | 9 | 12 | 12 | 12 |
| Clap risk | High | Medium (radial) | High | Low |

## Recommendation

1. Print **Gen-G** fit coupon (radial pockets + stator ID/OD) then full barrel — candidate **new MAX champion**.
2. If dual-AFPM appetite remains, print **Gen-H** with braces-first protocol.
3. Keep **Gen-I** as the safe/distinct Lundell experiment once steel fingers are cut.

## Files

- `/workspace/generators/2026-09-19/gen-g-halbach-barrel/`
- `/workspace/generators/2026-09-19/gen-h-unequal-10-6/`
- `/workspace/generators/2026-09-19/gen-i-claw-lundell/`

**Sync to MAX-Versions:** Gen-G should be promoted as champion if physics story holds after coupon; Gen-H as AFPM contender.
