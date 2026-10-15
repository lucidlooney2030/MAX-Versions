// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 403.6 x 391.4 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=140
translate([219.000, 34.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=50
translate([238.000, 155.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=300
translate([86.000, 63.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=15
translate([141.000, 217.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=185
translate([185.000, 288.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// fit_coupon_bay.stl orient=normal rot=285
translate([260.000, 104.000, 0]) import("../parts/fit_coupon_bay.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=0
translate([264.000, 57.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=290
translate([272.000, 279.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=290
translate([277.000, 222.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=110
translate([309.000, 244.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=290
translate([267.000, 335.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=110
translate([305.000, 300.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=290
translate([282.000, 166.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=110
translate([315.000, 187.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([89.000, 230.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([44.000, 222.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=170
translate([56.000, 274.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=350
translate([74.000, 310.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=115
translate([125.000, 279.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=65
translate([266.000, 10.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=260
translate([163.000, 352.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=105
translate([326.000, 153.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=115
translate([323.000, 114.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=115
translate([335.000, 84.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=125
translate([338.000, 45.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=330
translate([22.000, 290.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=345
translate([5.000, 319.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=270
translate([50.000, 361.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=195
translate([364.000, 198.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=175
translate([360.000, 274.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=100
translate([308.000, 355.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=350
translate([7.000, 213.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=185
translate([128.000, 316.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=305
translate([338.000, 5.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=335
translate([211.000, 35.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([309.000, 93.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([324.000, 70.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([309.000, 48.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([227.000, 272.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([207.000, 178.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([328.000, 35.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([355.000, 347.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([159.000, 345.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([147.000, 130.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([70.000, 77.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([204.000, 212.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([38.000, 212.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([135.000, 143.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([117.000, 304.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([117.000, 141.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=20
translate([207.000, 196.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([222.000, 298.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([137.000, 348.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([366.000, 26.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([293.000, 33.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
