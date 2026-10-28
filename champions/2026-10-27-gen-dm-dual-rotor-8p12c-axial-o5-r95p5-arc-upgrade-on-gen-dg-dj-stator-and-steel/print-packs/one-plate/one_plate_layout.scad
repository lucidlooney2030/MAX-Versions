// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 361.5 x 400.4 x 14.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// fit_coupon.stl orient=normal rot=90
translate([4.000, 4.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([146.000, 28.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([202.000, 107.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([258.000, 186.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([314.000, 260.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([4.000, 105.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([60.000, 184.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([116.000, 260.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=0
translate([4.000, 253.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// fit_coupon_bay.stl orient=normal rot=75
translate([172.000, 329.000, 0]) import("../parts/fit_coupon_bay.stl"); // pre-oriented placement, see STL
