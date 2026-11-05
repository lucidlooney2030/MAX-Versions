// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 391.7 x 397.6 x 6.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_segment_a_with_bases_in_place.stl orient=normal rot=10
translate([4.000, 4.000, 0]) import("../parts/stator_segment_a_with_bases_in_place.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=170
translate([8.000, 314.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=350
translate([20.000, 348.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
