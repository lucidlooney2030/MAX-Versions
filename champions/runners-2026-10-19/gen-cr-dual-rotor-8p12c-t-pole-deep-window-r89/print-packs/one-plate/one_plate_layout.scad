// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 398.9 x 400.0 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([1.000, 1.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// endbell_front.stl orient=flip rot=0
translate([96.000, 141.000, 0]) import("../parts/endbell_front.stl"); // pre-oriented placement, see STL
// endbell_rear.stl orient=flip rot=90
translate([204.000, 72.000, 0]) import("../parts/endbell_rear.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=180
translate([101.000, 103.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=225
translate([170.000, 250.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=300
translate([76.000, 233.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([27.000, 220.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=150
translate([263.000, 85.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=330
translate([248.000, 37.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=150
translate([214.000, 14.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=150
translate([309.000, 39.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([223.000, 222.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=300
translate([272.000, 235.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([118.000, 288.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=95
translate([165.000, 310.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=275
translate([213.000, 302.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// coil_lid.stl orient=normal rot=120
translate([306.000, 257.000, 0]) import("../parts/coil_lid.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=95
translate([85.000, 69.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=45
translate([269.000, 171.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=315
translate([128.000, 346.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=45
translate([320.000, 120.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=350
translate([67.000, 281.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=330
translate([14.000, 262.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=225
translate([313.000, 177.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_n.stl orient=normal rot=20
translate([257.000, 295.000, 0]) import("../parts/rotor_arc_n.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=25
translate([81.000, 328.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=270
translate([270.000, 5.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=15
translate([362.000, 114.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=75
translate([23.000, 347.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=190
translate([355.000, 204.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=75
translate([194.000, 360.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=260
translate([251.000, 357.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// rotor_arc_s.stl orient=normal rot=165
translate([304.000, 314.000, 0]) import("../parts/rotor_arc_s.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=155
translate([232.000, 77.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([75.000, 131.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=10
translate([78.000, 104.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([27.000, 209.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([149.000, 95.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([123.000, 234.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([343.000, 245.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=10
translate([231.000, 138.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=270
translate([18.000, 195.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([19.000, 232.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([368.000, 186.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([382.000, 197.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([324.000, 240.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([336.000, 227.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([375.000, 97.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([236.000, 387.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=75
translate([165.000, 370.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([315.000, 12.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([321.000, 95.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=70
translate([384.000, 160.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([311.000, 329.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
