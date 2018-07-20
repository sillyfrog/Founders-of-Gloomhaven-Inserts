include <consts.scad>;

echo("Prestige lid (WxDxH):", PRESTIGE_LID_W, PRESTIGE_LID_D, PRESTIGE_LID_H);

difference() {
    union() {
        cube([PRESTIGE_LID_W, PRESTIGE_LID_D, PRESTIGE_LID_H]);

    }

    #translate([WALL, COMPLETION_MARKER_W + WALL*2 + THIN_WALL*0, FLOOR]) 
        cube([PRESTIGE_LID_W - WALL*2, R_PREST_1x3_STACK*2, R_PREST_1x3_H]);

    translate([WALL, WALL, PRESTIGE_LID_H - COMPLETION_MARKER_H/2])
        #cube([PRESTIGE_LID_W - WALL*2, COMPLETION_MARKER_W + WALL, COMPLETION_MARKER_H]);

    translate([PRESTIGE_LID_W/2, 0, PRESTIGE_LID_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
    translate([0, PRESTIGE_D/3, PRESTIGE_LID_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL);
    translate([PRESTIGE_W, PRESTIGE_D/3, PRESTIGE_LID_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL);

    translate([PRESTIGE_LID_W/2, 0.4, WALL]) rotate([90,180,0]) linear_extrude(height=0.4) text("Prestige Lid", size=4, halign="center", valign="top");

}
