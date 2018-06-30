include <consts.scad>;



difference() {
    cube([BANK_BOX_W, BANK_BOX_D, BANK_BOX_H]);

    translate([WALL + MONEY_1_DIA/2, WALL, BANK_BOX_H]) rotate([-90, 00, 0]) cylinder(d=MONEY_1_DIA, h=MONEY_1_STACK);
    translate([WALL*2 + MONEY_1_DIA, WALL, BANK_BOX_H - SQUARE_TILE/2]) cube([SQUARE_TILE, ROAD_STACK, SQUARE_TILE]);
    translate([WALL*3 + MONEY_1_DIA + SQUARE_TILE + MONEY_3_DIA/2, WALL, BANK_BOX_H]) rotate([-90, 00, 0]) cylinder(d=MONEY_3_DIA, h=MONEY_3_STACK);
}


