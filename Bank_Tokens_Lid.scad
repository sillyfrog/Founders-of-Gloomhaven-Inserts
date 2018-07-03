include <consts.scad>;


INTERNAL_LEN = BANK_BOX_D - WALL*2;

difference() {
    cube([BANK_BOX_W, BANK_BOX_D, BANK_BOX_H]);

    translate([WALL*3 + MONEY_3_DIA + SQUARE_TILE, WALL, BANK_BOX_H - MONEY_1_DIA/2]) cube([MONEY_1_DIA, INTERNAL_LEN, MONEY_1_DIA]);
    translate([WALL*2 + MONEY_3_DIA, WALL, BANK_BOX_H - SQUARE_TILE/2]) cube([SQUARE_TILE, INTERNAL_LEN, SQUARE_TILE]);
    translate([WALL, WALL, BANK_BOX_H - MONEY_3_DIA/2]) cube([MONEY_3_DIA, INTERNAL_LEN, MONEY_3_DIA]);
    translate([WALL + MONEY_3_DIA/2, WALL, BANK_BOX_H]) rotate([-90, 00, 0]) cylinder(d=MONEY_3_DIA, h=INTERNAL_LEN);

    translate([BANK_BOX_W/2, 0, BANK_BOX_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL*1.5);
    translate([BANK_BOX_W/3, BANK_BOX_D, BANK_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL*1.5);
    translate([BANK_BOX_W/3*2, BANK_BOX_D, BANK_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL*1.5);
    translate([0, BANK_BOX_D/2, BANK_BOX_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL*1.5);
    translate([BANK_BOX_W, BANK_BOX_D/2, BANK_BOX_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL*1.5);
}


