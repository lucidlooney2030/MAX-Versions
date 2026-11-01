// one-plate layout (Kobra 3 Max, limit 410 x 410); measured bbox 402.0 x 402.0 x 29.5 mm
// STL is authoritative (composed with trimesh); this file reproduces it in OpenSCAD.
// stator_core_with_bases_in_place.stl orient=normal rot=0
translate([4.000, 4.000, 0]) import("../parts/stator_core_with_bases_in_place.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=255
translate([169.000, 125.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// rotor_hub.stl orient=normal rot=195
translate([125.000, 171.000, 0]) import("../parts/rotor_hub.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=195
translate([187.000, 187.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=300
translate([136.000, 233.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([155.000, 251.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// shaft_collar.stl orient=normal rot=0
translate([231.000, 136.000, 0]) import("../parts/shaft_collar.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([151.000, 141.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([255.000, 151.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([177.000, 268.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=5
translate([195.000, 271.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([162.000, 233.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([264.000, 167.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=310
translate([241.000, 162.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([270.000, 185.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=15
translate([271.000, 203.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([176.000, 221.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([267.000, 221.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_spacer.stl orient=normal rot=0
translate([213.000, 269.000, 0]) import("../parts/gap_spacer.stl"); // pre-oriented placement, see STL
// gap_sleeve.stl orient=normal rot=25
translate([140.000, 154.000, 0]) import("../parts/gap_sleeve.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=70
translate([228.000, 165.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=10
translate([266.000, 239.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([190.000, 213.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
// frame_standoff.stl orient=normal rot=0
translate([258.000, 250.000, 0]) import("../parts/frame_standoff.stl"); // pre-oriented placement, see STL
