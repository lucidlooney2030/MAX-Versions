// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 344.9 x 401.0 x 48.6 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// rotor_arc_n.stl orient=normal rot=295
translate([4.000, 4.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=325
translate([173.000, 59.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=115
translate([7.000, 41.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=220
translate([104.000, 165.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// base_pedestal.stl orient=normal rot=0
translate([134.000, 295.000, 0]) import("../parts/base_pedestal.stl"); // pre-oriented placement, see STL
// spider_hub.stl orient=flip rot=230
translate([240.000, 203.000, 0]) import("../parts/spider_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=285
translate([45.000, 24.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=0
translate([242.000, 287.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=15
translate([183.000, 95.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=0
translate([192.000, 155.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=10
translate([274.000, 105.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=0
translate([255.000, 65.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=0
translate([220.000, 36.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// stator_post.stl orient=normal rot=0
translate([148.000, 147.000, 0]) import("../parts/stator_post.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=165
translate([199.000, 230.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=5
translate([178.000, 269.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=30
translate([174.000, 201.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=165
translate([264.000, 39.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
