// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 398.0 x 401.0 x 8.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_segment_a_with_bases_in_place.stl orient=normal rot=10
translate([4.000, 4.000, 0]) import("../parts/stator_segment_a_with_bases_in_place.stl"); // pre-oriented placement, see STL
// spider_arm.stl orient=normal rot=0
translate([4.000, 385.000, 0]) import("../parts/spider_arm.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=170
translate([8.000, 314.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=340
translate([127.000, 268.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
