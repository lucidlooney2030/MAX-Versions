# Print packs — MAX-Versions

One-plate layouts for Anycubic **Kobra 3 Max Combo** (420×420 mm bed, usable **410×410 mm** with margin).

Each kit folder has:

- `parts/` — individual STLs with `_xN` quantity in the filename
- `one-plate/` — `one_plate_layout.stl`, labeled `preview.png`, and `PLATE.md`

Disk-like parts (rotors, stators, endbells) are nested **circle-aware** (~4–5 mm gaps; Gen-F uses 2 mm) so five ~150–180 mm carriers can share one plate.

| Kit | Fits one plate? | Gap (mm) | Role |
|-----|-----------------|----------|------|
| [gen-e-nested-dual-ring](gen-e-nested-dual-ring/) | **YES** | 5 | Current champion |
| [gen-b-dual-12coil](gen-b-dual-12coil/) | **YES** | 5 | Modular dual-rotor baseline |
| [gen-d-radial-outrunner](gen-d-radial-outrunner/) | **YES** | 5 | Modular radial path |
| [gen-a-dual-6coil](gen-a-dual-6coil/) | **YES** | 5 | Dual-rotor 6-coil |
| [gen-c-hybrid-return](gen-c-hybrid-return/) | **YES** | 5 | Hybrid + steel return |
| [gen-f-spoke-flux](gen-f-spoke-flux/) | **YES** | 2 | Spoke / transverse |

Slice `one-plate/one_plate_layout.stl` as a single job, or print from `parts/`.
