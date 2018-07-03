include <consts.scad>;


echo("Tier 2 box (WxDxH):", TIER2_W, TIER2_D, TIER2_H);

difference() {
    union() {
        cube([TIER2_W, TIER2_D, TIER2_H]);
        translate([TIER2_W/2, 0, TIER2_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([TIER2_W/3, TIER2_D, TIER2_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([TIER2_W/3*2, TIER2_D, TIER2_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([0, TIER2_D/2, TIER2_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([TIER2_W, TIER2_D/2, TIER2_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL);
    }

    #translate([TIER2_W - WALL - R_JEWELRY_W, WALL + R_STACK*0 + THIN_WALL*0, FLOOR]) cube([R_JEWELRY_W, R_STACK, R_JEWELRY_H]);

    translate([0, R_STACK*1 + WALL + THIN_WALL*1, 0]) anglebuilding(); // Leather

    #translate([TIER2_W - WALL - R_MACH_W, WALL + R_STACK*2 + THIN_WALL*2, FLOOR]) cube([R_MACH_W, R_STACK, R_MACH_H]);

    translate([0, R_STACK*3 + WALL + THIN_WALL*3, 0]) anglebuilding(); // Books

    #translate([TIER2_W - WALL - R_FOOD_W, WALL + R_STACK*4 + THIN_WALL*4, FLOOR]) cube([R_FOOD_W, R_STACK, R_FOOD_H]);

    translate([0, R_STACK*5 + WALL + THIN_WALL*5, 0]) anglebuilding(); // Bricks

    translate([TIER2_W/2, 0.4, TIER2_H - WALL]) rotate([90,0,0]) linear_extrude(height=0.4) text("Tier 2 Resource Buildings", size=4, halign="center", valign="top");


    //translate([TIER2_W-10, 0, 0]) cube([100,100,100]);
    //cube([100, 5, 100]);
}

module anglebuilding() {
    #translate([WALL, 0, R_3*cos(R_3x1_ANG)+FLOOR]) rotate([0, 90-R_3x1_ANG, 0]) cube([R_3, R_STACK, R_1]);
    translate([WALL, R_STACK, FLOOR]) rotate([90, 0, 0]) linear_extrude(height=R_STACK) polygon([[0, R_3*cos(R_3x1_ANG)], [R_3x1_W, R_1*sin(R_3x1_ANG)], [R_3x1_W, R_3x1_H], [0, R_3x1_H]]);
}
//translate([WALL, 3, -10]) #cube([R_WEAPONS_W, FLOOR, R_WEAPONS_H]);
//%cube([1000, 1000, FLOOR]);
