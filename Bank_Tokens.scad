include <consts.scad>;

echo("Bank Tokens box (WxDxH):", BANK_BOX_W, BANK_BOX_D, BANK_BOX_H);

difference() {
    union() {
        cube([BANK_BOX_W, BANK_BOX_D, BANK_BOX_H]);
        translate([BANK_BOX_W/2, 0, BANK_BOX_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([BANK_BOX_W/3, BANK_BOX_D, BANK_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([BANK_BOX_W/3*2, BANK_BOX_D, BANK_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([0, BANK_BOX_D/2, BANK_BOX_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([BANK_BOX_W, BANK_BOX_D/2, BANK_BOX_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL);
    }

    translate([WALL + MONEY_1_DIA/2, WALL, BANK_BOX_H]) rotate([-90, 00, 0]) cylinder(d=MONEY_1_DIA, h=MONEY_1_STACK);
    translate([WALL + MONEY_1_DIA/2, 0.4, BANK_BOX_H-WALL]) rotate([90, 00, 0]) linear_extrude(height=0.4) text("1s", size=4, halign="center", valign="top");


    translate([WALL*2 + MONEY_1_DIA, WALL, BANK_BOX_H - SQUARE_TILE/2]) cube([SQUARE_TILE, ROAD_STACK, SQUARE_TILE]);
    translate([WALL*2 + MONEY_1_DIA + SQUARE_TILE/2, 0.4, BANK_BOX_H-WALL]) rotate([90, 00, 0]) linear_extrude(height=0.4) text("Roads", size=4, halign="center", valign="top");

    translate([WALL*3 + MONEY_1_DIA + SQUARE_TILE + MONEY_3_DIA/2, WALL, BANK_BOX_H]) rotate([-90, 00, 0]) cylinder(d=MONEY_3_DIA, h=MONEY_3_STACK);
    translate([WALL*2 + MONEY_1_DIA + SQUARE_TILE + MONEY_3_DIA/2, 0.4, BANK_BOX_H-WALL]) rotate([90, 00, 0]) linear_extrude(height=0.4) text("3s", size=4, halign="center", valign="top");
}
/*
≢
NOT IDENTICAL TO
Unicode: U+2262, UTF-8: E2 89 A2

𐀳
LINEAR B SYLLABLE B004 TE
Unicode: U+10033, UTF-8: F0 90 80 B3
*/
