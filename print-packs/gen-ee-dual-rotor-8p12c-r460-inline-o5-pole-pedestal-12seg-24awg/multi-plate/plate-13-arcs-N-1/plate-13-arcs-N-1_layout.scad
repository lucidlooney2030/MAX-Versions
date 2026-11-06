// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 350.0 x 395.2 x 48.6 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// rotor_arc_n.stl orient=normal rot=295
translate([4.000, 4.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=115
translate([23.000, 38.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=335
translate([17.000, 49.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=155
translate([13.000, 89.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// base_pedestal.stl orient=normal rot=0
translate([244.000, 175.000, 0]) import("../parts/base_pedestal.stl"); // pre-oriented placement, see STL
// spider_hub.stl orient=flip rot=305
translate([186.000, 257.000, 0]) import("../parts/spider_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=290
translate([105.000, 35.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=300
translate([221.000, 91.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=10
translate([132.000, 308.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=90
translate([31.000, 101.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=5
translate([200.000, 213.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=10
translate([48.000, 21.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=10
translate([76.000, 162.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=10
translate([214.000, 165.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=35
translate([126.000, 232.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=165
translate([113.000, 296.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=60
translate([7.000, 17.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=300
translate([303.000, 137.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
