// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 400.6 x 386.6 x 6.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_segment_a_with_bases_in_place.stl orient=normal rot=10
translate([4.000, 4.000, 0]) import("../parts/stator_segment_a_with_bases_in_place.stl"); // pre-oriented placement, see STL
// stator_segment_b_with_bases_in_place.stl orient=normal rot=105
translate([42.000, 141.000, 0]) import("../parts/stator_segment_b_with_bases_in_place.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=20
translate([299.000, 118.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=135
translate([276.000, 269.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=315
translate([305.000, 293.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=300
translate([309.000, 16.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
