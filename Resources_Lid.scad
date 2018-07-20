include <consts.scad>;


echo("Resources lid (WxDxH):", RESOURCE_LID_W, RESOURCE_LID_D, RESOURCE_LID_H);

difference() {
    union() {
        cube([RESOURCE_LID_W, RESOURCE_LID_D, RESOURCE_LID_H]);
    }

    #translate([WALL, WALL, RESOURCE_LID_H - SQUARE_TILE/2]) cube([RESOURCE_LID_W - WALL*2, SQUARE_TILE, SQUARE_TILE]);
    #translate([WALL, WALL, RESOURCE_LID_H - FIRST_PLAYER_H/2 ]) cube([FIRST_PLAYER_D, FIRST_PLAYER_W, FIRST_PLAYER_H]);

    translate([RESOURCE_LID_W/2, 0, RESOURCE_LID_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
    translate([RESOURCE_LID_W/3, RESOURCE_BOX_D, RESOURCE_LID_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
    translate([RESOURCE_LID_W/3*2, RESOURCE_BOX_D, RESOURCE_LID_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
    translate([0, RESOURCE_LID_D/2, RESOURCE_LID_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL);
    translate([RESOURCE_LID_W, RESOURCE_BOX_D/2, RESOURCE_LID_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL);

    translate([WALL, SQUARE_TILE + WALL, FLOOR]) #cube([RESOURCE_CARD_H, RESOURCE_LID_D - WALL*2 - SQUARE_TILE, RESOURCE_CARD_W]);

    translate([RESOURCE_LID_W/2, 0.4, WALL]) rotate([90,180,0]) linear_extrude(height=0.4) text("Resources Lid", size=4, halign="center", valign="top");
}


