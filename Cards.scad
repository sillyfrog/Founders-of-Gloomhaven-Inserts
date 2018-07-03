include <consts.scad>;

CARD_START = VOTING_STACK/2+CARD_BOX_SPACING*2;

echo("Cards Spacing: ", CARD_BOX_SPACING);

echo("Card box (WxDxH):", CARD_BOX_W, CARD_BOX_D, CARD_BOX_H);

difference() {
    union() {
        cube([CARD_BOX_W, CARD_BOX_D, CARD_BOX_H]);
        translate([VOTING_GAP, 0, CARD_BOX_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([CARD_BOX_W - VOTING_GAP, 0, CARD_BOX_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([CARD_BOX_W/3, CARD_BOX_D, CARD_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([CARD_BOX_W/3*2, CARD_BOX_D, CARD_BOX_H]) rotate([90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([0, WALL + VOTING_STACK/4, CARD_BOX_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL);
        translate([CARD_BOX_W, WALL + VOTING_STACK/4, CARD_BOX_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL);
    }

    translate([VOTING_GAP, CARD_BOX_SPACING, CARD_BOX_H - SQUARE_TILE/2]) cube([VOTING_TRIANGLE, VOTING_STACK/2, SQUARE_TILE]);
    translate([VOTING_GAP*2 + VOTING_TRIANGLE, CARD_BOX_SPACING, CARD_BOX_H - SQUARE_TILE/2]) cube([VOTING_TRIANGLE, VOTING_STACK/2, SQUARE_TILE]);

    translate([WALL, CARD_START, FLOOR]) cube([CARD_H, CARD_STACK_BUILDING, CARD_W]);
    translate([0.4, CARD_START, CARD_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Buildings", size=4, halign="center", valign="bottom");

    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_BOX_SPACING*1, FLOOR]) cube([CARD_H, CARD_STACK_ADVISOR, CARD_W]);
    translate([0.4, CARD_START+CARD_STACK_BUILDING+CARD_BOX_SPACING*1, CARD_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Advisors", size=4, halign="center", valign="bottom");

    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_BOX_SPACING*2, FLOOR]) cube([CARD_H, CARD_STACK_INCOME, CARD_W]);
    translate([0.4, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_BOX_SPACING*2, CARD_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Income", size=3, halign="center", valign="bottom");


    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+CARD_BOX_SPACING*3, FLOOR]) cube([CARD_H, CARD_STACK_ACTION, CARD_W]);

    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+CARD_STACK_ACTION*1+CARD_BOX_SPACING*4, FLOOR]) cube([CARD_H, CARD_STACK_ACTION, CARD_W]);

    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+CARD_STACK_ACTION*2+CARD_BOX_SPACING*5, FLOOR]) cube([CARD_H, CARD_STACK_ACTION, CARD_W]);
    translate([0.4, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+CARD_STACK_ACTION*2+CARD_BOX_SPACING*4, CARD_BOX_H/2]) rotate([0,-90,0]) linear_extrude(height=0.4) text("Action Cards", size=3.8, halign="center", valign="bottom");

    translate([WALL, CARD_START+CARD_STACK_BUILDING+CARD_STACK_ADVISOR+CARD_STACK_INCOME+CARD_STACK_ACTION*3+CARD_BOX_SPACING*6, FLOOR]) cube([CARD_H, CARD_STACK_ACTION, CARD_W]);


    translate([CARD_BOX_W/2, 0.4, CARD_BOX_H - WALL]) rotate([90,0,0]) linear_extrude(height=0.4) text("Voting Tiles", size=4, halign="center", valign="top");
}


