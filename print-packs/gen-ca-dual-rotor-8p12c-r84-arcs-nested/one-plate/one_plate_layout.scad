// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 402.6 x 403.6 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=130
translate([223.000, 19.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=40
translate([261.000, 142.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=90
translate([95.000, 73.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=250
translate([164.000, 204.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=355
translate([300.000, 277.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// fit_coupon_bay.stl orient=normal rot=75
translate([300.000, 226.000, 0]) import("../parts/fit_coupon_bay.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=70
translate([344.000, 284.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=70
translate([291.000, 173.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=350
translate([257.000, 92.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=70
translate([252.000, 40.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=170
translate([113.000, 229.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=250
translate([220.000, 268.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=255
translate([334.000, 201.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=250
translate([225.000, 326.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=70
translate([188.000, 290.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=70
translate([192.000, 346.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=250
translate([138.000, 302.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=70
translate([105.000, 322.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=175
translate([66.000, 81.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=290
translate([306.000, 343.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=240
translate([107.000, 268.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=55
translate([288.000, 122.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=165
translate([82.000, 228.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=165
translate([53.000, 239.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=165
translate([24.000, 250.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=345
translate([64.000, 306.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=215
translate([14.000, 317.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=40
translate([327.000, 128.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=135
translate([304.000, 69.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=125
translate([333.000, 57.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=65
translate([303.000, 21.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=15
translate([363.000, 7.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=260
translate([249.000, 7.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=75
translate([121.000, 364.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=5
translate([54.000, 353.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=300
translate([104.000, 148.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=5
translate([199.000, 18.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=15
translate([323.000, 6.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([306.000, 121.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([128.000, 149.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([66.000, 224.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([249.000, 254.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([87.000, 150.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([106.000, 376.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([109.000, 58.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([176.000, 278.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([361.000, 14.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([93.000, 61.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([50.000, 223.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([37.000, 235.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=25
translate([329.000, 43.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([126.000, 62.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([264.000, 315.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([238.000, 254.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=20
translate([214.000, 49.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
