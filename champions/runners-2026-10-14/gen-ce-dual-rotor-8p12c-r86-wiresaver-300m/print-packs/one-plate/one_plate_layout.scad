// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 403.4 x 404.0 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=90
translate([188.000, 4.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=40
translate([357.000, 4.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=0
translate([263.000, 4.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=270
translate([74.000, 62.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=300
translate([231.000, 103.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// fit_coupon_bay.stl orient=normal rot=210
translate([279.000, 148.000, 0]) import("../parts/fit_coupon_bay.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=255
translate([309.000, 70.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=320
translate([210.000, 155.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=100
translate([321.000, 188.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=130
translate([240.000, 194.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=205
translate([4.000, 196.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([173.000, 196.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=210
translate([286.000, 222.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=350
translate([129.000, 223.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=110
translate([44.000, 224.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=210
translate([213.000, 234.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=230
translate([335.000, 238.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=60
translate([4.000, 251.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=170
translate([99.000, 240.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=10
translate([171.000, 252.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=200
translate([250.000, 261.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=60
translate([285.000, 274.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=30
translate([122.000, 275.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=50
translate([30.000, 277.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=180
translate([208.000, 282.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=220
translate([344.000, 282.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=210
translate([60.000, 300.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=200
translate([144.000, 316.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=350
translate([307.000, 318.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=0
translate([4.000, 324.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=200
translate([88.000, 327.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=200
translate([258.000, 328.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=190
translate([367.000, 331.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=125
translate([178.000, 346.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([4.000, 4.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([226.000, 4.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=10
translate([147.000, 111.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=15
translate([70.000, 131.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([30.000, 4.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([252.000, 4.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([331.000, 4.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([385.000, 4.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([340.000, 20.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([387.000, 22.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([246.000, 23.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([4.000, 31.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([341.000, 38.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([389.000, 41.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([336.000, 56.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([390.000, 60.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=0
translate([231.000, 78.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([48.000, 4.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([173.000, 4.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([392.000, 78.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=5
translate([150.000, 80.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
