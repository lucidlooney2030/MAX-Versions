# Current champion — MAX-Versions

**As of 2026-09-20 (ET)** — ranked by estimated matched power @ **200 RPM** (order-of-magnitude, not FEA/dyno).

## #1 — Gen-J Dual-stator sandwich AFPM

| | |
|--|--|
| **Design** | Gen-J — dual-stator sandwich / 9+9 coil 3φ (18 formers, wider windows) |
| **Est. power @200 RPM** | **~5–11 W** (matched resistive load) |
| **Folder** | [`champions/2026-09-20-gen-j/`](champions/2026-09-20-gen-j/) |
| **Why #1** | Both faces of a single magnet rotor harvested by two stator packs at magnet-to-former ~2.5–3.5 mm, plus full 48× Ø5 Halbach and more copper than Gen-G’s 12-bobbin annulus. Mid/upper band beats Gen-G ~4–9 W. |

**Topology sketch:** Rotor 8× Ø20 on +Z + 8× Ø20 on −Z (offset 22.5°) with 24 Ø5 Halbach per face; two stator cores (9 pancakes each); Gen-E endbell family **6× M3 @ R=72**; gap pads ×12; prefer **26 AWG**.

**Build note:** Single rotor = lower clap than dual AFPM, but brace both stators before seating the second magnet face. Print dual-pocket + 608 + gap-pad fit coupon first. One-plate uses **9+9** (not 12+12) so the kit fits 410×410 — wider formers recover copper.

**Print pack:** [`print-packs/gen-j-dual-stator-sandwich/one-plate/`](print-packs/gen-j-dual-stator-sandwich/one-plate/)

## Strong contender — Gen-K outer-bias barrel

| | |
|--|--|
| **Design** | Gen-K — outer-bias Halbach barrel 14+2 / 12-coil |
| **Est. power @200 RPM** | **~4.5–10 W** |
| **Folder** | Night sources: `/workspace/generators/2026-09-20/gen-k-outer-bias-barrel/` |
| **Role** | Gen-G evolution; more outer tip-speed flux + taller drum (34 mm). Barrel family R=54. |

## Prior champion — Gen-G Halbach barrel dual-radial

| | |
|--|--|
| **Design** | Gen-G — cylindrical Halbach dual-radial barrel / 12-coil 3φ |
| **Est. power @200 RPM** | **~4–9 W** |
| **Folder** | [`champions/2026-09-19-gen-g/`](champions/2026-09-19-gen-g/) |
| **Role** | Prior overall #1; still strong dual-radial reference. Superseded on estimated watts by Gen-J. |

## Vernier experiment — Gen-L

| | |
|--|--|
| **Design** | Gen-L — magnetic vernier dual AFPM 16-pole / 18-coil |
| **Est. power @200 RPM** | **~3.5–9 W** |
| **Folder** | Night sources: `/workspace/generators/2026-09-20/gen-l-vernier-afpm/` |
| **Role** | Frequency play (Ns/Nr=18/16); Gen-B R=60; dual-rotor clap — braces first. |

## Prior champions (archive)

- Gen-E nested dual-ring (~3–7 W) — [`champions/2026-09-18-gen-e/`](champions/2026-09-18-gen-e/)
- Gen-B dual 8+8 — interface reference [`champions/2026-09-17-gen-b/`](champions/2026-09-17-gen-b/)
- Gen-D radial outrunner — [`champions/2026-09-18-gen-d/`](champions/2026-09-18-gen-d/)

## How ranking works

1. Prefer higher estimated W @200 RPM under the shared magnet + wire kit.
2. On a tie (~same band), prefer the newer topology that still fits [MODULAR_INTERFACE.md](MODULAR_INTERFACE.md).
3. Nightly SCORECARDs in `generators` are the source of truth; promotions update this file.

Assumptions match SCORECARDs: N52, Halbach assist estimated (not measured), ~55–65% winding fill, neglect rectifier drop, mechanical shaft RPM.

## Print packs

Every kit includes a **one-plate pack** with preview under [`print-packs/`](print-packs/) (Kobra 3 Max, usable 410×410 mm). Open `one-plate/preview.png` and `PLATE.md` for bed-fit confirmation.
