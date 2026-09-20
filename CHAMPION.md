# Current champion — MAX-Versions

**As of 2026-09-20 (ET): there is no current champion.**

All prior Gen-A–L kits (nights 2026-09-17 through 2026-09-20) were **withdrawn** after failing the **wound-coil envelope** gate. Coil formers are wound with copper **before** assembly; air gaps, stator pockets, radial annuli, and endbell stacks must be sized for the **wound envelope**, not bare former STL dims.

## Gate (must pass before any future champion)

See **[WOUND_COIL_RULE.md](WOUND_COIL_RULE.md)**.

- Explicit budget in README/SCAD: `wind_build`, `wound_h`, or `coil_envelope` (with AWG + turns).
- Magnet face ↔ **wound** coil face ≥ **0.5–1.0 mm** running clearance after winding.
- Assumptions: 26 AWG ≈ 0.45 mm OD; 30 AWG ≈ 0.30 mm OD; pancake axial build ≈ layers × OD × fill≈0.7 on both faces.

## Withdrawn (do not build)

| Was | Design | Why pulled |
|-----|--------|------------|
| Gen-A…L | All nightly kits + prior champions | Gaps/slots sized to bare former; no wound envelope budget |

Champion folders under `champions/` and kit mirrors under `print-packs/` were removed from this repo pending redesign.

## Next step

Redesign must reopen stack heights and pockets around an explicit wound envelope, then re-promote a kit here and update this file. Until then: **no champion**.
