include <consts.scad>;


echo("Tier 3 box (WxDxH):", TIER3_W, TIER3_D, TIER3_H);

difference() {
    cube([TIER3_W, TIER3_D, TIER3_H]);

    #translate([WALL, WALL, R_WEAPONS_W_SQ*cos(R_WEAPONS_ANG)+FLOOR]) rotate([0, 15, 0]) cube([R_WEAPONS_W_SQ, R_STACK, R_WEAPONS_H_SQ]);
    translate([WALL, WALL+R_STACK, FLOOR]) rotate([90, 0, 0]) linear_extrude(height=R_STACK) polygon([[0, R_WEAPONS_W_SQ*cos(R_WEAPONS_ANG)], [R_WEAPONS_W, R_WEAPONS_H_SQ*sin(R_WEAPONS_ANG)], [R_WEAPONS_W, R_WEAPONS_H], [0, R_WEAPONS_H]]);

    #translate([WALL + R_CLOTH_W/2, WALL + R_STACK*1 + THIN_WALL*1, FLOOR]) cube([R_CLOTH_W, R_STACK, R_CLOTH_H]);

    #translate([TIER3_W - WALL - R_LABOR_W, WALL + R_STACK*2 + THIN_WALL*2, FLOOR]) cube([R_GOV_W, R_STACK, R_GOV_H]);

    #translate([WALL, WALL + R_STACK*3 + THIN_WALL*3, FLOOR]) cube([R_LABOR_W, R_STACK, R_LABOR_H]);

    translate([TIER3_W/2, 0.4, TIER3_H - WALL]) rotate([90,0,0]) linear_extrude(height=0.4) text("Tier 3 Resource Buildings", size=4, halign="center", valign="top");
}
//translate([WALL, 3, -10]) #cube([R_WEAPONS_W, FLOOR, R_WEAPONS_H]);
//%cube([1000, 1000, FLOOR]);
