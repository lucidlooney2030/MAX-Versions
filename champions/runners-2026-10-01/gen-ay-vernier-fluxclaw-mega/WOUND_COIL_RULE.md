# Wound Coil Envelope Rule (HARD GATE)

**Effective 2026-09-20 (ET).** Coil formers are **wound with copper before assembly**. The wound coil has thickness and mass. Designs MUST size air gaps, stator pockets, radial annuli, and endbell stack heights for the **wound envelope**, not bare former STL dims.

## Audit assumptions (document in every SCORECARD / README)

| Wire | Insulated OD (assumed) |
|------|-------------------------|
| 26 AWG | ≈ **0.45 mm** |
| 30 AWG | ≈ **0.30 mm** |

- **Pancake:** winding builds on **both faces** of the former web. Estimate **radial build** in the winding window **and** **axial build** = `layers × wire_OD × fill≈0.7`.
- **Radial / bobbin:** copper builds in the window and may stand proud of flanges; budget radial annulus + slot width for the wound pack, not bare bobbin OD/width.

## PASS criteria (all required)

1. README and/or SCAD **explicitly** budgets wound copper with named params such as `wind_build`, `wound_h`, or `coil_envelope` (and states AWG + turn count used for the budget).
2. Mechanical gap / stack **uses that budget** so **magnet face ↔ wound coil face** still has **≥ 0.5–1.0 mm** running clearance **after winding** at the stated turn count.
3. Stator pockets / slots / radial annuli clear the **wound** OD/width, not only the bare former.

## FAIL criteria (any one fails the kit)

- Gap specified **magnet-to-bare-former** (or “former tip”) with no wound envelope.
- Magnet-to-magnet ≈ **former thickness only** (no room for copper + clearance).
- Stator slots hug **bare** former OD/width with no winding allowance.
- No `wind_build` / `wound_h` / `coil_envelope` (or equivalent) in README/SCAD.

## Status — Gen-A through Gen-L

**All prior Gen-A–L kits (nights 2026-09-17 through 2026-09-20) FAIL this gate and are withdrawn pending redesign.**

Do not print or assemble withdrawn kits expecting the README air gaps to survive a full wind. Redesign must re-open stack heights and pockets around an explicit wound envelope before any kit is re-published as a champion or print-pack.

See also: `generators/WOUND_COIL_AUDIT_2026-09-20.md` for per-design PASS/FAIL with gap vs estimated wound build.

