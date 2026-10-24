// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 273.5 x 395.0 x 17.0 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// fit_coupon.stl orient=normal rot=270
translate([4.000, 284.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=95
translate([82.000, 232.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=95
translate([43.000, 160.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=95
translate([4.000, 88.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=160
translate([146.000, 301.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=95
translate([182.000, 226.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=95
translate([143.000, 154.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=95
translate([104.000, 82.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// rotor_arc_pair_ns.stl orient=normal rot=95
translate([65.000, 10.000, 0]) import("../parts/rotor_arc_pair_ns.stl"); // pre-oriented placement, see STL
// fit_coupon_bay.stl orient=normal rot=165
translate([26.000, 339.000, 0]) import("../parts/fit_coupon_bay.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=270
translate([165.000, 28.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=225
translate([204.000, 76.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
