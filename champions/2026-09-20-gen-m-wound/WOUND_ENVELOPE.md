# Wound envelope math — night 2026-09-20-wound

Assumptions per `WOUND_COIL_RULE.md`: 26 AWG OD≈0.45 mm; fill≈0.70; pancake axial build = layers×OD×fill on **each** face.

## Gen-M (champion) — dual-stator sandwich

```
wire_od = 0.45
turns = 120
fill = 0.70
layers_per_face = 3
wind_build_axial = 3 * 0.45 * 0.7 = 0.945 mm   # each face
former_web = 3.2
flange_t = 1.0
former_bare_h = 3.2 + 2*1.0 = 5.2 mm
coil_envelope_h = 5.2 + 2*0.945 = 7.09 mm
run_clear = 0.85 mm                              # ≥ 0.8
gap_spacer_h = 0.85 + 0.945 = 1.795 mm           # magnet → stator face
magnet_to_wound = gap_spacer_h - wind_build_axial = 0.85 mm  PASS
bay_depth = 5.2 + 0.945 = 6.145 mm               # bare + back wind
wind_build_radial = 2 * 0.45 * 0.7 = 0.63 mm
bay outline = former ± radial build + bay_offset
```

## Gen-N (runner-up) — Halbach barrel

```
wire_od = 0.45; turns = 100; fill = 0.70
wind_build_radial (tip) = 3 * 0.45 * 0.7 = 0.945 mm
wind_build_circ (side)  = 2 * 0.45 * 0.7 = 0.63 mm
wound_w = 11 + 2*0.63 = 12.26 mm
wound_d = 16 + 0.945 = 16.945 mm
slots ≈ 13.8 × 19.0 mm (clear wound)
geometric magnet→bare tip ≥ ~2.0 mm
magnet→wound ≥ 2.0 - 0.945 ≈ 1.05 mm  PASS
```

## Gen-O (runner-up) — dual-rotor AFPM

```
wire_od = 0.45; turns = 120; fill = 0.70
wind_build_axial = 0.945 mm / face
former_bare_h = 3.2 + 2*1.5 = 6.2 mm
coil_envelope_h = 6.2 + 2*0.945 = 8.09 mm
run_clear = 0.85 mm
m2m = 8.09 + 2*0.85 = 9.79 mm   # NOT legacy 7 mm
gap_spacer_h = 1.795 mm / side
magnet→wound = 0.85 mm  PASS
```
