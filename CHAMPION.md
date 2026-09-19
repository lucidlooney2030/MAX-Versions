# Current champion — MAX-Versions

**As of 2026-09-19 (ET)** — ranked by estimated matched power @ **200 RPM** (order-of-magnitude, not FEA/dyno).

## #1 — Gen-G Halbach barrel dual-radial

| | |
|--|--|
| **Design** | Gen-G — cylindrical Halbach dual-radial barrel / 12-coil 3φ |
| **Est. power @200 RPM** | **~4–9 W** (matched resistive load) |
| **Folder** | [`champions/2026-09-19-gen-g/`](champions/2026-09-19-gen-g/) |
| **Why #1** | Dual cylindrical radial air gaps (1.0–1.5 mm) + outer tip speed beat Gen-E’s dual axial nested-ring band (~3–7 W). Outer 12× Ø20 inward + inner 4× Ø20 outward with full 48× Ø5 Halbach assist. |

**Topology sketch:** Outer drum 12× Ø20 radial-in + 24× Ø5 OD Halbach; inner hub 4× Ø20 radial-out + 24× Ø5; annular 12-bobbin stator between; prefer **26 AWG**.

**Build note:** Keep both radial gaps ≤1.5 mm after seating. Print magnet/bearing fit coupon before full barrel. Less axial clap than dual AFPM, but concentricity matters.

**Print pack:** [`print-packs/gen-g-halbach-barrel/one-plate/`](print-packs/gen-g-halbach-barrel/one-plate/)

## Strong AFPM contender — Gen-H unequal 10+6

| | |
|--|--|
| **Design** | Gen-H — dual-rotor AFPM unequal 10+6 nested / 12-coil 3φ |
| **Est. power @200 RPM** | **~3.5–8 W** |
| **Folder** | [`champions/2026-09-19-gen-h/`](champions/2026-09-19-gen-h/) |
| **Role** | Contends with prior Gen-E; denser 12-coil copper; Gen-E endbell family (6× @ R=72). Dual-rotor clap hazard — braces first. |

## Prior champion — Gen-E nested dual-ring

| | |
|--|--|
| **Design** | Gen-E — nested dual-ring AFPM / 9-coil 3φ |
| **Est. power @200 RPM** | **~3–7 W** |
| **Folder** | [`champions/2026-09-18-gen-e/`](champions/2026-09-18-gen-e/) |
| **Role** | Prior overall #1; still strong dual-AFPM reference. Superseded on estimated watts by Gen-G. |

## Modular baseline — Gen-B

| | |
|--|--|
| **Design** | Gen-B — dual-rotor AFPM 8+8 / 12-coil 3φ |
| **Folder** | [`champions/2026-09-17-gen-b/`](champions/2026-09-17-gen-b/) |
| **Role** | Interface reference for shaft / 608ZZ / brace / former stack. |

## Radial alternate — Gen-D

| | |
|--|--|
| **Design** | Gen-D — radial-flux outrunner / 12-coil |
| **Folder** | [`champions/2026-09-18-gen-d/`](champions/2026-09-18-gen-d/) |
| **Role** | Best first *radial* modular path (single gap); Gen-G is the dual-radial max-watt evolution. |

## How ranking works

1. Prefer higher estimated W @200 RPM under the shared magnet + wire kit.
2. On a tie (~same band), prefer the newer topology that still fits [MODULAR_INTERFACE.md](MODULAR_INTERFACE.md).
3. Nightly SCORECARDs in `generators` are the source of truth; promotions update this file.

Assumptions match SCORECARDs: N52, Halbach assist estimated (not measured), ~55–65% winding fill, neglect rectifier drop, mechanical shaft RPM.

## Print packs

Every kit includes a **one-plate pack** with preview under [`print-packs/`](print-packs/) (Kobra 3 Max, usable 410×410 mm). Open `one-plate/preview.png` and `PLATE.md` for bed-fit confirmation.
