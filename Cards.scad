include <consts.scad>;

CARD_START = max(SQUARE_TILE, VOTING_STACK)+WALL*2;

difference() {
    union() {
        cube([CARD_BOX_W, CARD_BOX_D, CARD_BOX_H]);
        translate([CARD_BOX_W/2, 0, CARD_BOX_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([CARD_BOX_W/3, CARD_BOX_D, CARD_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([CARD_BOX_W/3*2, CARD_BOX_D, CARD_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([0, CARD_BOX_D/2, CARD_BOX_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([CARD_BOX_W, CARD_BOX_D/2, CARD_BOX_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL);
    }

    translate([WALL, WALL, CARD_BOX_H - SQUARE_TILE/2]) cube([RESOURCE_STACK, SQUARE_TILE, SQUARE_TILE]);
    translate([CARD_BOX_W - WALL - VOTING_TRIANGLE, WALL, CARD_BOX_H - SQUARE_TILE/2]) cube([VOTING_TRIANGLE, VOTING_STACK, SQUARE_TILE]);

    translate([WALL, CARD_START, FLOOR]) cube([CARD_H, CARD_STACK_BUILDING, CARD_W]);
    translate([0.4, CARD_START, CARD_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Buildings", size=4, halign="center", valign="bottom");

    translate([WALL, CARD_START+CARD_STACK_BUILDING+THIN_WALL*1, FLOOR]) cube([CARD_H, CARD_STACK_ADVISOR, CARD_W]);
    translate([0.4, CARD_START+CARD_STACK_BUILDING+THIN_WALL*1, CARD_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Advisors", size=4, halign="center", valign="bottom");

    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+THIN_WALL*2, FLOOR]) cube([CARD_H, CARD_STACK_INCOME, CARD_W]);
    translate([0.4, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+THIN_WALL*2, CARD_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Income", size=2, halign="center", valign="bottom");


    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+THIN_WALL*3, FLOOR]) cube([CARD_H, CARD_STACK_ACTION, CARD_W]);
    translate([0.4, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+CARD_STACK_ACTION*1+THIN_WALL*3, CARD_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Action Cards", size=3.8, halign="center", valign="bottom");

    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+CARD_STACK_ACTION*1+THIN_WALL*4, FLOOR]) cube([CARD_H, CARD_STACK_ACTION, CARD_W]);

    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+CARD_STACK_ACTION*2+THIN_WALL*5, FLOOR]) cube([CARD_H, CARD_STACK_ACTION, CARD_W]);

    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+CARD_STACK_ACTION*3+THIN_WALL*6, FLOOR]) cube([CARD_H, CARD_STACK_ACTION, CARD_W]);


    translate([RESOURCE_STACK/2, 0.4, CARD_BOX_H - WALL]) rotate([90,0,0]) linear_extrude(height=0.4) text("Round Tokens", size=4, halign="center", valign="top");
    translate([CARD_BOX_W - WALL, 0.4, CARD_BOX_H - WALL]) rotate([90,0,0]) linear_extrude(height=0.4) text("Voting Tokens", size=4, halign="right", valign="top");
}


