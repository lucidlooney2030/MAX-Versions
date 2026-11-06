// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 399.0 x 250.9 x 6.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_segment_b_with_bases_in_place.stl orient=normal rot=320
translate([4.000, 4.000, 0]) import("../parts/stator_segment_b_with_bases_in_place.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=130
translate([274.000, 134.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=310
translate([308.000, 150.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
