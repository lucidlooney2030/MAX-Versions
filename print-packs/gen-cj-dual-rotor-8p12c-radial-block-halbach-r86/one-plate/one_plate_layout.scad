// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 403.7 x 402.2 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=150
translate([207.000, 10.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=60
translate([201.000, 140.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=140
translate([74.000, 97.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=0
translate([168.000, 206.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=180
translate([146.000, 256.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=85
translate([251.000, 245.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=265
translate([278.000, 272.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=85
translate([331.000, 292.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=130
translate([108.000, 283.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=255
translate([139.000, 328.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=85
translate([238.000, 294.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=165
translate([230.000, 340.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=160
translate([86.000, 232.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=100
translate([76.000, 308.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=280
translate([68.000, 352.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=280
translate([33.000, 282.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=250
translate([25.000, 226.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=200
translate([4.000, 200.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=195
translate([267.000, 87.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=110
translate([280.000, 147.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([279.000, 21.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=270
translate([318.000, 9.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=90
translate([356.000, 26.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=15
translate([265.000, 206.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=35
translate([192.000, 4.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=275
translate([324.000, 77.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=95
translate([356.000, 99.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=285
translate([339.000, 158.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=340
translate([11.000, 314.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=105
translate([356.000, 195.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=95
translate([286.000, 321.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=350
translate([334.000, 330.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=10
translate([112.000, 328.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=225
translate([168.000, 290.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=15
translate([57.000, 301.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=15
translate([92.000, 371.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([340.000, 144.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([87.000, 382.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([281.000, 247.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([229.000, 76.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([35.000, 268.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([51.000, 271.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([179.000, 288.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([178.000, 304.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([193.000, 316.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([52.000, 364.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([36.000, 366.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([386.000, 181.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=25
translate([119.000, 308.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=345
translate([63.000, 377.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([333.000, 221.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=195
translate([318.000, 246.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([342.000, 248.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
