# SCORECARD — Austin generators 2026-09-17

Combined magnet kit on all designs: **16× Ø20×5 + 48× Ø5×5** (Halbach-assist). Printer: Anycubic Kobra 3 Max Combo.

## Ranking

| Rank | Design | Est. power @200 RPM | Printability | Build difficulty | Verdict |
|------|--------|---------------------|--------------|------------------|---------|
| 1 | **Gen-B** | **Best (~3–7 W)** | Good (12 small formers) | Hard (dual rotor + 12 coils) | Best output if you will wind 12 coils |
| 2 | **Gen-A** | Strong (~2–5 W) | **Best** (only 6 formers) | Hard (dual rotor attraction) | Best first dual-rotor build |
| 3 | **Gen-C** | Lower (~1.5–4 W) | Good | **Easiest** magnetics | Best learning / safer assembly |

## Assumptions (all EMF/power numbers)

1. N52 disks, steel-backed where recessed carriers allow.
2. Halbach-assist / flux-concentration from Ø5×5 set adds roughly **+10–30% B_gap** vs large-only (**estimated**, not FEA/dyno). Gen-A/B dual gap ~0.55 T; Gen-C single-sided ~0.45–0.5 T.
3. Winding fill ~60% of former window; 30 AWG as specified; resistive matched load; neglect rectifier drop.
4. Mechanical RPM at shaft; no gearbox.
5. Air gaps held near README targets; wider gap collapses power quickly.

## Topology notes

- **Gen-A/B** share identical Halbach-enhanced dual rotors (8 large + 24 small each). Gen-B only swaps stator density (12 vs 6 coils).
- **Gen-C** puts all 16 large + all 48 small on one rotor (R_large=58 for clearance; inner Halbach triplets at R=40). Steel return replaces second magnet rotor → less attraction, less flux linkage.
- Dual-rotor attraction dominates build risk for A/B; print braces and dry-fit bearings before magnetting both rotors.

## Recommendation for tonight

Print **Gen-A rotors + stator + 6 formers** first (prove Halbach assembly), then decide whether to wind Gen-B’s 12-coil stator on the same rotors. Keep Gen-C as the lower-risk alternate using the same magnet kits on one disk.
