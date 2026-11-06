// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 399.0 x 393.0 x 8.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_segment_b_with_bases_in_place.stl orient=normal rot=320
translate([4.000, 4.000, 0]) import("../parts/stator_segment_b_with_bases_in_place.stl"); // pre-oriented placement, see STL
// spider_arm_inner.stl orient=normal rot=90
translate([4.000, 137.000, 0]) import("../parts/spider_arm_inner.stl"); // pre-oriented placement, see STL
// spider_arm_outer.stl orient=normal rot=90
translate([29.000, 138.000, 0]) import("../parts/spider_arm_outer.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=130
translate([274.000, 134.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=310
translate([308.000, 150.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
