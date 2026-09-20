// Gen-J rear endbell — Gen-E family 6× M3 @ R=72 + brace (compact feet)
od = 152; thick = 8; bearing_d = 21.85; bearing_h = 7.2;
shaft_clear = 10; bolt_r = 72; bolt_n = 6; m3_clear = 3.5;
brace_r = 68; brace_d = 4.3; brace_n = 4; $fn = 64;
difference() {
    union() {
        cylinder(d=od, h=thick);
        translate([0,0,thick-0.01]) cylinder(d=30, h=bearing_h);
        for (s = [-1, 1])
            translate([s*(od/2 - 10) - 12, -od/2 - 1, 0]) cube([24, 12, 14]);
    }
    translate([0,0,-0.1]) cylinder(d=shaft_clear, h=50);
    translate([0,0,thick-0.02]) cylinder(d=bearing_d, h=bearing_h+0.2);
    for (i=[0:bolt_n-1]) {
        a=i*360/bolt_n;
        translate([bolt_r*cos(a), bolt_r*sin(a), -20]) cylinder(d=m3_clear, h=50);
    }
    for (i=[0:brace_n-1]) {
        a=i*360/brace_n+15;
        translate([brace_r*cos(a), brace_r*sin(a), -20]) cylinder(d=brace_d, h=50);
    }
}
