# MAX-Versions

**Maximum-electricity**, **modular** generator kits — printable magnetic generators tuned for **max watts always**.

Companion to [`lucidlooney2030/generators`](https://github.com/lucidlooney2030/generators): that repo holds the full nightly exploration archive; **this** repo keeps the modular max-output line — shared interfaces, current champion, and drop-in kits you can remix across nights.

## Purpose

Maximize estimated electrical output from a fixed hobby magnet + wire kit on a consumer FDM printer. Every design here targets the same BOM envelope and the same [modular stack](MODULAR_INTERFACE.md) so rotors, stators, endbells, and coil formers can swap across topologies.

See **[CHAMPION.md](CHAMPION.md)** for the current #1 by estimated watts.

## Magnet kit (fixed)

| Magnet | Qty | Size |
|--------|-----|------|
| Large disks | **16×** | Ø20 × 5 mm (N52 NdFeB) |
| Small disks | **48×** | Ø5 × 5 mm (Halbach / concentrator assist) |

Pockets are typically **Ø20.3 × 5.2** and **Ø5.3 × 5.2** for print clearance.

## Wire

- **26 AWG** — higher current, easier wind (radial slots, thick pancakes)
- **30 AWG** — higher voltage, denser fill (fine AFPM pancakes)

Use ~1 lb hobby spool class for a full machine; document turns and interconnect (star 3φ preferred).

## Printer

- **Anycubic Kobra 3 Max Combo**
- Filament **1.75 mm** (PETG/ABS preferred; PLA OK for prototypes)
- Nozzles: **0.4 mm** default for carriers / formers; **0.6 / 0.8 mm** OK for endbells and coarse shells

## Modular interface philosophy

All MAX kits share a mechanical stack so parts interoperate:

- Shaft **Ø8** + **608ZZ** bearings
- Common rotor-carrier bolt circles and stator mount patterns
- Predictable air-gap / stack height
- Coil-former mount holes that fit across AFPM and radial variants

Full mm numbers: **[MODULAR_INTERFACE.md](MODULAR_INTERFACE.md)**.

## Champions in this repo

| Folder | Design | Role |
|--------|--------|------|
| [`champions/2026-09-18-gen-e/`](champions/2026-09-18-gen-e/) | Gen-E nested dual-ring AFPM | **Current #1** (~3–7 W @200 RPM) |
| [`champions/2026-09-17-gen-b/`](champions/2026-09-17-gen-b/) | Gen-B dual-rotor 8+8 / 12-coil | Strong modular dual-rotor baseline |
| [`champions/2026-09-18-gen-d/`](champions/2026-09-18-gen-d/) | Gen-D radial outrunner | Modular radial path (~2–5 W @200 RPM) |

Each folder has STLs, OpenSCAD sources, README, and SCORECARD.

## Nightly Leonardo drops

Leonardo (nightly automation) explores new topologies under `generators` dated folders (`YYYY-MM-DD/gen-*`). When a design beats the current champion on estimated watts **or** advances the modular interface, the winning kit (STLs + README + SCORECARD + `.scad`) is copied here under `champions/YYYY-MM-DD-gen-*/` and **CHAMPION.md** is updated.

Workflow:

1. Nightly work lands in [`generators`](https://github.com/lucidlooney2030/generators).
2. Scorecards compare est. power @200 RPM, printability, and build difficulty.
3. Max-output / modular winners are promoted into **MAX-Versions**.


## Print packs (one-plate)

Every kit below ships a **one-plate print pack** with preview for the Kobra 3 Max (usable 410×410 mm):

See **[`print-packs/`](print-packs/)** — Gen-E / Gen-B / Gen-D champions plus Gen-A / Gen-C / Gen-F.

Each pack includes:

- `one-plate/one_plate_layout.stl` — full kit nested flat on Z=0
- `one-plate/preview.png` — labeled top-down plate map
- `one-plate/PLATE.md` — quantities, bed-fit confirmation, print notes
- `parts/` — individual STLs with `_xN` qty in the filename

## License

MIT — same as the generators companion repo. See [LICENSE](LICENSE).

## Safety

Dual-rotor AFPM designs have **severe axial attraction**. Install M4 brace rods and dry-fit bearings **before** magnetting the second rotor. Eye protection; keep fingers out of the gap.
