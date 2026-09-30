# NIGHT SCORECARD — 2026-09-29 (ET)

Only wound-PASS designs. Power method consistent with Gen-AN night (AFPM copper×turns×B×RPM, dual-face N52 Halbach-boosted).

| Rank | Design | Est. W @200 | magnet↔wound | m2m | Topology | One-plate bbox | Wound gate | Copper m |
|------|--------|-------------|--------------|-----|----------|----------------|------------|----------|
| **#1** | **Gen-AQ** dual-rotor copper-centroid ultra | **~16–34 W** | **0.50 mm** | **4.71** | Dual-rotor AFPM, Ø20 @ R=39.0 | **404×404** | **PASS** | **320** |
| #2 | Gen-AR stacked mid-rotor copper-max hyper | ~14–29 W | 0.50 mm | 4.71 | Dual-stator mid-rotor Halbach | **405.5×404** | **PASS** | **369** |
| #3 | Gen-AS vernier flux-claw ultra | ~13–28 W | 0.50 mm | 4.71 | Dual-rotor vernier + claws | **404×404** | **PASS** | **307** |

## vs prior champion Gen-AN
Gen-AN: ~15–32 W @200, m2m=4.76, magnet↔wound=0.50, magnets @ R=39.5, 200 t, copper ~312 m.
**Gen-AQ dethrones Gen-AN** (midpoint ~25 vs ~23.5; tighter copper-centroid @ R=39.0 + 205 t + m2m 4.71 from former_web 1.25).

## Copper budgets (26 AWG, spool ≤390 m)
| Design | Coils×turns | Mean turn | Copper m |
|--------|-------------|-----------|----------|
| AQ | 12×205 | 0.130 m | **320** |
| AR | 18×175 | 0.117 m | **369** |
| AS | 12×200 | 0.128 m | **307** |

## Dual-rotor / mid-rotor clap warnings
Documented in every dual/multi magnet-face README: brace M4 @ R≈68 **before** seating second face; wind all formers first; brim on 0.60 mm flanges / 1.25 mm webs. AR mid-rotor clap warning before seating either stator.
