// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 395.2 x 392.0 x 14.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// fit_coupon.stl orient=normal rot=270
translate([4.000, 284.000, 0]) import("../../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=90
translate([49.000, 194.000, 0]) import("../../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=90
translate([60.000, 94.000, 0]) import("../../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([146.000, 287.000, 0]) import("../../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([246.000, 297.000, 0]) import("../../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([4.000, 13.000, 0]) import("../../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([104.000, 13.000, 0]) import("../../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([204.000, 23.000, 0]) import("../../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([304.000, 33.000, 0]) import("../../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// fit_coupon_bay.stl orient=normal rot=165
translate([47.000, 339.000, 0]) import("../../parts/fit_coupon_bay.stl"); // pre-oriented placement, see STL
