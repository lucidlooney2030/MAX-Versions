// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 403.4 x 403.4 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=150
translate([206.000, 12.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=60
translate([200.000, 142.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=180
translate([95.000, 74.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=165
translate([258.000, 218.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// fit_coupon.stl orient=normal rot=15
translate([234.000, 286.000, 0]) import("../parts/fit_coupon.stl"); // pre-oriented placement, see STL
// fit_coupon_bay.stl orient=normal rot=90
translate([271.000, 165.000, 0]) import("../parts/fit_coupon_bay.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([203.000, 4.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([277.000, 311.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([264.000, 83.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([319.000, 154.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([279.000, 27.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([323.000, 16.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([172.000, 248.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([127.000, 254.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=15
translate([78.000, 231.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([321.000, 300.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([152.000, 302.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([309.000, 77.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=120
translate([14.000, 201.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=270
translate([315.000, 354.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=285
translate([329.000, 208.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=300
translate([334.000, 237.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=285
translate([232.000, 351.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=300
translate([59.000, 264.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=180
translate([30.000, 245.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_a.stl orient=normal rot=315
translate([60.000, 297.000, 0]) import("../parts/rotor_face_a.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=345
translate([112.000, 301.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=315
translate([38.000, 320.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=270
translate([90.000, 373.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=195
translate([355.000, 74.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=0
translate([4.000, 303.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=0
translate([370.000, 144.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=90
translate([161.000, 373.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// rotor_face_b.stl orient=normal rot=0
translate([373.000, 287.000, 0]) import("../parts/rotor_face_b.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([132.000, 229.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=60
translate([327.000, 130.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=15
translate([237.000, 380.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=45
translate([6.000, 281.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([109.000, 356.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([184.000, 361.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([147.000, 308.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([107.000, 60.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([300.000, 295.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([14.000, 265.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([155.000, 360.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=270
translate([228.000, 75.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([127.000, 151.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([16.000, 249.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([384.000, 128.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([386.000, 112.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=15
translate([244.000, 326.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([124.000, 63.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([214.000, 244.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([203.000, 243.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([162.000, 301.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
