include <consts.scad>;

echo("Prestige box (WxDxH):", PRESTIGE_W, PRESTIGE_D, PRESTIGE_H);

COMPLETION_SPACING = (PRESTIGE_W - WALL*2 - COMPLETION_MARKER_D*6)/5;

difference() {
    union() {
        cube([PRESTIGE_W, PRESTIGE_D, PRESTIGE_H]);
        translate([PRESTIGE_W/2, 0, PRESTIGE_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([PRESTIGE_W/3, PRESTIGE_D, PRESTIGE_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([PRESTIGE_W/3*2, PRESTIGE_D, PRESTIGE_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([0, PRESTIGE_D/3*2, PRESTIGE_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([PRESTIGE_W, PRESTIGE_D/3*2, PRESTIGE_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL);
    }

    #translate([PRESTIGE_W/2 - R_PREST_1x3_W/2, COMPLETION_MARKER_W + WALL*2 + THIN_WALL*0, PRESTIGE_H - R_PREST_1x3_H/2]) 
        cube([R_PREST_1x3_W, R_PREST_1x3_STACK, R_PREST_1x3_H]);

    // These are next to each other, with a THIN_WALL between them, width is based on these
    #translate([WALL, R_PREST_1x3_STACK + COMPLETION_MARKER_W + WALL*2 + THIN_WALL*1, FLOOR]) 
        cube([R_PREST_L_W, R_PREST_L_STACK, R_PREST_L_H]);
    #translate([THIN_WALL + WALL + R_PREST_L_W, R_PREST_1x3_STACK + COMPLETION_MARKER_W + WALL*2 + THIN_WALL*1, FLOOR]) 
        cube([R_PREST_1x2_W, R_PREST_1x2_STACK, R_PREST_1x2_H]);

    #translate([PRESTIGE_W/2-R_PREST_T_W/2, R_PREST_L_STACK + R_PREST_1x3_STACK + COMPLETION_MARKER_W + WALL*2 + THIN_WALL*2, FLOOR]) 
        cube([R_PREST_T_W, R_PREST_T_STACK, R_PREST_T_H]);

    #translate([PRESTIGE_W/2-R_PREST_Z_W/2, R_PREST_T_STACK + R_PREST_L_STACK + R_PREST_1x3_STACK + COMPLETION_MARKER_W + WALL*2 + THIN_WALL*3, FLOOR]) 
        cube([R_PREST_Z_W, R_PREST_Z_STACK, R_PREST_Z_H]);

    #translate([PRESTIGE_W/2-R_PREST_LL_W/2, R_PREST_Z_STACK + R_PREST_T_STACK + R_PREST_L_STACK + R_PREST_1x3_STACK + COMPLETION_MARKER_W + WALL*2 + THIN_WALL*4, FLOOR]) 
        cube([R_PREST_LL_W, R_PREST_LL_STACK, R_PREST_LL_H]);

    #translate([PRESTIGE_W/2 - R_PREST_2x2_W/2, R_PREST_LL_STACK + R_PREST_Z_STACK + R_PREST_T_STACK + R_PREST_L_STACK + R_PREST_1x3_STACK + COMPLETION_MARKER_W + WALL*2 + THIN_WALL*5, FLOOR]) 
        cube([R_PREST_2x2_W, R_PREST_2x2_STACK, R_PREST_2x2_H]);

    #translate([PRESTIGE_W/2-R_PREST_ODD_W/2, R_PREST_2x2_STACK + R_PREST_LL_STACK + R_PREST_Z_STACK + R_PREST_T_STACK + R_PREST_L_STACK + R_PREST_1x3_STACK + COMPLETION_MARKER_W + WALL*2 + THIN_WALL*6, FLOOR]) 
        cube([R_PREST_ODD_W, R_PREST_ODD_STACK, R_PREST_ODD_H]);

    for (i = [0:5]) {
        translate([WALL + i*(COMPLETION_SPACING+COMPLETION_MARKER_D), WALL, PRESTIGE_H - COMPLETION_MARKER_H/2])
            #cube([COMPLETION_MARKER_D, COMPLETION_MARKER_W, COMPLETION_MARKER_H]);
    }

    translate([PRESTIGE_W/2, 0.4, PRESTIGE_H - WALL]) rotate([90,0,0]) linear_extrude(height=0.4) text("Prestige Buildings", size=4, halign="center", valign="top");
    translate([PRESTIGE_W/2, 0.4, PRESTIGE_H - WALL*2 - 5]) rotate([90,0,0]) linear_extrude(height=0.4) text("Completion Markers", size=4, halign="center", valign="top");
}
//translate([WALL, 3, -10]) #cube([R_WEAPONS_W, FLOOR, R_WEAPONS_H]);
//%cube([1000, 1000, FLOOR]);
        /*
cube([_W, R_STACK, _H]);
*/
