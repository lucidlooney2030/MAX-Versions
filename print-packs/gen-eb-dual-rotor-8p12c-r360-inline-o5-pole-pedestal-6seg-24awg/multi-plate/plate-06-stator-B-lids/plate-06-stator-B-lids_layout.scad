// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 394.8 x 316.2 x 6.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_segment_b_with_bases_in_place.stl orient=normal rot=350
translate([4.000, 4.000, 0]) import("../parts/stator_segment_b_with_bases_in_place.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=50
translate([301.000, 94.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=220
translate([208.000, 13.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
