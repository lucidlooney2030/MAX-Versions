# Night SCORECARD — 2026-09-20-night (Gen-P / Gen-Q / Gen-R)

Ranked by (1) estimated power (2) modularity (3) printability. **All three wound-PASS.**

| Rank | Design | Est. W @200 RPM | Wound gate | magnet↔wound | Notes |
|------|--------|-----------------|------------|--------------|-------|
| **#1** | **Gen-P** dual-rotor thin-gap AFPM | **~7–15 W** | **PASS** | **0.80 mm** | Dual air-gap + thin m2m=7.26; 12×120 t |
| #2 | Gen-R vernier AFPM 18-coil | **~5.5–12 W** | **PASS** | **0.85 mm** | Vernier freq; m2m=7.16; optional steel |
| #3 | Gen-Q concentric Halbach barrel | **~4.5–10 W** | **PASS** | **≈1.05 mm tip** | Dual cylindrical gaps; 12 bobbins |

## Does #1 BEAT Gen-M champion?

**YES — with caveat (estimate-class).**

| | Gen-M (prior champion) | Gen-P (this night #1) |
|--|------------------------|------------------------|
| Topology | Dual-stator sandwich (1 rotor, 2 stators) | Dual-rotor thin-gap (2 rotors, 1 stator) |
| Coils | 9+9 = 18 × 120 t | 12 × 120 t (each sees **two** gaps) |
| `coil_envelope_h` | 7.09 mm | **5.66 mm** (thinner) |
| Air-gap count | 2 faces on one carrier | **2 independent gaps** sandwiching coils |
| `m2m` / stack | spacer bay style | **7.26 mm** (vs Gen-O thick 9.79) |
| Est. @200 RPM | ~5–12 W | **~7–15 W** |
| magnet↔wound | 0.85 mm PASS | 0.80 mm PASS |

**Reason:** Dual-rotor geometry puts flux through each pancake from **both** sides while the thinner 2-layer wind budget keeps m2m ~7.3 mm (stronger B than Gen-O). Fewer coils than Gen-M’s 18 but each turn is dual-gap; net estimate range sits above Gen-M’s band. **Bench tach validation still required** — do not treat as measured watts.

## One-plate (Kobra 3 Max ~410×410)

| Kit | Fits | Preview |
|-----|------|---------|
| Gen-P | **YES** | `print-packs/one-plate/gen-p-dual-rotor-thin/preview.png` |
| Gen-Q | **YES** | `print-packs/one-plate/gen-q-concentric-barrel/preview.png` |
| Gen-R | **YES** | `print-packs/one-plate/gen-r-vernier-afpm/preview.png` (steel return optional, off-plate) |

Prior Gen-A–L remain withdrawn. Gen-M/N/O remain valid wound runners; **Gen-P dethrones Gen-M as tip champion (estimate).**
