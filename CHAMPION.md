# Current champion — MAX-Versions

**As of 2026-09-18 (ET)** — ranked by estimated matched power @ **200 RPM** (order-of-magnitude, not FEA/dyno).

## #1 — Gen-E nested dual-ring AFPM

| | |
|--|--|
| **Design** | Gen-E — nested dual-ring AFPM / 9-coil 3φ |
| **Est. power @200 RPM** | **~3–7 W** (matched resistive load) |
| **Folder** | [`champions/2026-09-18-gen-e/`](champions/2026-09-18-gen-e/) |
| **Why #1** | Dual air-gap + nested outer ring concentrates copper under high tip-speed magnets; Halbach-boosted B_gap ≈ 0.5–0.6 T (est.). Competitive with / edges Gen-B when dual-rotor build is acceptable. |

**Topology sketch:** Each rotor = 6 outer Ø20 @ R=58 + 2 inner Ø20 @ R=26 + 24× Ø5 (Halbach + inter-ring). Two rotors = full **16 + 48** kit. Stator: 9 pancake coils on outer ring.

**Build note:** Dual-rotor clap hazard — braces and bearings first, magnets second.

## Strong modular baseline — Gen-B

| | |
|--|--|
| **Design** | Gen-B — dual-rotor AFPM 8+8 / 12-coil 3φ (Halbach-assist) |
| **Est. power @200 RPM** | **~3–7 W** (same band as Gen-E; Gen-E preferred as nested topology #1 for night-1) |
| **Folder** | [`champions/2026-09-17-gen-b/`](champions/2026-09-17-gen-b/) |
| **Role** | **Strong modular dual-rotor baseline** — same rotors as Gen-A (`rotor_carrier_a` ×2), denser 12-coil stator. Best reference for shaft / 608ZZ / brace / former stack when remixing AFPM kits. |

Gen-B remains the night-0 dual-rotor champion and the interface reference for axial-flux MAX kits. Gen-E wins the current overall #1 slot by topology ambition (nested rings) at the same estimated watt band.

## Modular radial alternate — Gen-D

| | |
|--|--|
| **Design** | Gen-D — radial-flux outrunner / 12-coil |
| **Est. power @200 RPM** | **~2–5 W** |
| **Folder** | [`champions/2026-09-18-gen-d/`](champions/2026-09-18-gen-d/) |
| **Role** | Best first *radial* modular path; less axial clap risk; single radial gap usually trails dual AFPM on watts. |

## How ranking works

1. Prefer higher estimated W @200 RPM under the shared magnet + wire kit.
2. On a tie (~3–7 W band), prefer the newer topology that still fits [MODULAR_INTERFACE.md](MODULAR_INTERFACE.md).
3. Nightly SCORECARDs in `generators` are the source of truth; promotions update this file.

Assumptions match SCORECARDs: N52, Halbach assist estimated (not measured), ~55–65% winding fill, neglect rectifier drop, mechanical shaft RPM.
