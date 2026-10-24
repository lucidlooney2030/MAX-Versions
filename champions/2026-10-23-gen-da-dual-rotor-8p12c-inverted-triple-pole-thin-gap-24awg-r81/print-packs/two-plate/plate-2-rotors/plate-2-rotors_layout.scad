// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 391.3 x 387.0 x 14.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// fit_coupon.stl orient=normal rot=270
translate([4.000, 284.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=90
translate([49.000, 195.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=90
translate([58.000, 96.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([146.000, 288.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([245.000, 296.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([4.000, 18.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([103.000, 18.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([202.000, 26.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([301.000, 34.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// fit_coupon_bay.stl orient=normal rot=165
translate([25.000, 339.000, 0]) import("../parts/fit_coupon_bay.stl"); // pre-oriented placement, see STL
