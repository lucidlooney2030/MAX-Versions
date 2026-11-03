// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 398.5 x 400.3 x 6.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_segment_a_with_bases_in_place.stl orient=normal rot=165
translate([4.000, 4.000, 0]) import("../parts/stator_segment_a_with_bases_in_place.stl"); // pre-oriented placement, see STL
// stator_segment_b_with_bases_in_place.stl orient=normal rot=105
translate([86.000, 116.000, 0]) import("../parts/stator_segment_b_with_bases_in_place.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=5
translate([295.000, 4.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=185
translate([292.000, 36.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=100
translate([40.000, 295.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=280
translate([6.000, 294.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=175
translate([34.000, 4.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=325
translate([245.000, 315.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
