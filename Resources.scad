include <consts.scad>;


echo("Resources box (WxDxH):", RESOURCE_BOX_W, RESOURCE_BOX_D, RESOURCE_BOX_H);

difference() {
    union() {
        cube([RESOURCE_BOX_W, RESOURCE_BOX_D, RESOURCE_BOX_H]);
        translate([RESOURCE_BOX_W/2, 0, RESOURCE_BOX_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([RESOURCE_BOX_W/3, RESOURCE_BOX_D, RESOURCE_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([RESOURCE_BOX_W/3*2, RESOURCE_BOX_D, RESOURCE_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([0, RESOURCE_BOX_D/2, RESOURCE_BOX_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([RESOURCE_BOX_W, RESOURCE_BOX_D/2, RESOURCE_BOX_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL);
    }

    translate([WALL, WALL, RESOURCE_BOX_H - SQUARE_TILE/2]) #cube([RESOURCE_TOKEN_STACK, SQUARE_TILE, SQUARE_TILE]);
    translate([WALL + RESOURCE_TOKEN_STACK/2, 0.4, RESOURCE_BOX_H - WALL]) rotate([90,0,0]) linear_extrude(height=0.4) text("Resource Tokens", size=4, halign="center", valign="top");
    translate([RESOURCE_BOX_W - WALL - FIRST_PLAYER_D, WALL, RESOURCE_BOX_H - FIRST_PLAYER_H/2]) #cube([FIRST_PLAYER_D, FIRST_PLAYER_W, FIRST_PLAYER_H]);
    translate([RESOURCE_BOX_W - WALL - 5, 0.4, RESOURCE_BOX_H - WALL]) rotate([90,-90,0]) linear_extrude(height=0.4) text("Active", size=3, halign="right", valign="bottom");
    translate([RESOURCE_BOX_W - WALL, 0.4, RESOURCE_BOX_H - WALL]) rotate([90,-90,0]) linear_extrude(height=0.4) text("Player", size=3, halign="right", valign="bottom");

    translate([WALL, SQUARE_TILE + WALL*2, FLOOR]) #cube([RESOURCE_CARD_H, RESOURCE_CARD_STACK, RESOURCE_CARD_W]);
    translate([0.4, SQUARE_TILE + WALL*2, RESOURCE_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Resource", size=3, halign="center", valign="bottom");

    translate([WALL, SQUARE_TILE + RESOURCE_CARD_STACK + THIN_WALL + WALL*2, FLOOR]) #cube([RESOURCE_CARD_H, ACHIEVEMENT_STACK, RESOURCE_CARD_W]);
    translate([0.4, SQUARE_TILE + RESOURCE_CARD_STACK + THIN_WALL + WALL*3, RESOURCE_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Achievement", size=2.9, halign="center", valign="bottom");
}


