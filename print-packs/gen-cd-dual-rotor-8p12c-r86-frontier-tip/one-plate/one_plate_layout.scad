// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 403.1 x 403.5 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=150
translate([207.000, 10.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=60
translate([201.000, 140.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=90
translate([98.000, 77.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=165
translate([259.000, 218.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=15
translate([235.000, 286.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// fit_coupon_bay.stl orient=normal rot=90
translate([272.000, 167.000, 0]) import("../parts/fit_coupon_bay.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=40
translate([201.000, 8.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([321.000, 157.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=300
translate([278.000, 32.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=295
translate([265.000, 88.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([308.000, 61.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([173.000, 248.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([159.000, 300.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([128.000, 256.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([114.000, 308.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=165
translate([152.000, 352.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=15
translate([81.000, 232.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=195
translate([72.000, 271.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=260
translate([41.000, 323.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=265
translate([57.000, 353.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=180
translate([69.000, 75.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=240
translate([4.000, 295.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=355
translate([328.000, 208.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=355
translate([359.000, 206.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=185
translate([279.000, 312.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=245
translate([208.000, 355.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=205
translate([308.000, 294.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=215
translate([337.000, 300.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=280
translate([310.000, 367.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=105
translate([305.000, 114.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=200
translate([359.000, 55.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=180
translate([47.000, 218.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=175
translate([16.000, 230.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=140
translate([312.000, 6.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([95.000, 60.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([133.000, 230.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([27.000, 209.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=5
translate([286.000, 144.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([120.000, 61.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([129.000, 153.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([310.000, 149.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([325.000, 279.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([229.000, 76.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([378.000, 127.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([290.000, 16.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=270
translate([196.000, 198.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([157.000, 240.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([156.000, 224.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([173.000, 239.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([172.000, 223.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=25
translate([245.000, 326.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([136.000, 66.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=20
translate([84.000, 67.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([215.000, 244.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([204.000, 243.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
