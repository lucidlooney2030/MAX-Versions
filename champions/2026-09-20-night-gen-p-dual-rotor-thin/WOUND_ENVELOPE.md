# Wound envelope math — night 2026-09-20-night (Gen-P/Q/R)

Assumptions per `WOUND_COIL_RULE.md`: 26 AWG OD≈0.45 mm; fill≈0.70; pancake axial build = layers×OD×fill on **each** face.

## Gen-P (PRIMARY) — Dual-rotor thin-gap AFPM

```
wire_od = 0.45
turns = 120
fill = 0.70
layers_per_face = 2
wind_build_axial = 2 * 0.45 * 0.7 = 0.63 mm   # each face (thinner than Gen-M/O)
wind_build_radial = 2 * 0.45 * 0.7 = 0.63 mm
former_web = 2.6
flange_t = 0.9
former_bare_h = 2.6 + 2*0.9 = 4.4 mm
coil_envelope_h = 4.4 + 2*0.63 = 5.66 mm
run_clear = 0.80 mm                              # ≥ 0.5–1.0
m2m = coil_envelope_h + 2*run_clear = 7.26 mm    # NOT bare-former-only
gap_spacer_h = run_clear + wind_build_axial = 1.43 mm
magnet_to_wound = run_clear = 0.80 mm  PASS
stator_thick = former_bare_h = 4.4 mm            # winds proud both faces
bay outline = former ± wind_build_radial + bay_offset
```

Why thinner than Gen-O (m2m=9.79): 2 axial layers + thinner web restores B while keeping magnet↔wound ≥0.80.

## Gen-Q — Concentric dual-gap Halbach barrel

```
wire_od = 0.45; turns = 110; fill = 0.70
wind_build_radial (tip) = 3 * 0.45 * 0.7 = 0.945 mm
wind_build_side         = 2 * 0.45 * 0.7 = 0.63 mm
bobbin_w / bobbin_d     = 10 / 14 mm (bare window)
wound_w = 10 + 2*0.63 = 11.26 mm
wound_d = 14 + 0.945 = 14.945 mm
slot W×D ≈ 12.8 × 16.5 mm (clears wound)
geometric magnet→bare tip ≥ ~2.0 mm
magnet→wound tip ≥ 2.0 - 0.945 ≈ 1.05 mm  PASS
run_clear (documented) = 0.85 mm
```

## Gen-R — Vernier AFPM 18-coil / 8+8 pole dual-rotor

```
wire_od = 0.45; turns = 100; fill = 0.70
layers_per_face = 2
wind_build_axial = 0.63 mm / face
former_web = 2.4; flange_t = 0.9
former_bare_h = 4.2 mm
coil_envelope_h = 4.2 + 2*0.63 = 5.46 mm
run_clear = 0.85 mm
m2m = 5.46 + 2*0.85 = 7.16 mm
gap_spacer_h = 0.85 + 0.63 = 1.48 mm
magnet→wound = 0.85 mm  PASS
```

Optional mild-steel flux-return washers sit in printed `steel_return_register` (BOM optional — not required for wound PASS).
