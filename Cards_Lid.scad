include <consts.scad>;

// To prevent lift, only cover the voting tiles, as the cards are held with the carton lid


echo("Card box lid (WxDxH):", CARD_BOX_LID_W, CARD_BOX_LID_D, CARD_BOX_LID_H);

difference() {
    union() {
        cube([CARD_BOX_LID_W, CARD_BOX_LID_D, CARD_BOX_LID_H]);
    }

    translate([WALL, WALL, FLOOR]) cube([CARD_BOX_LID_W-WALL*2, CARD_BOX_LID_D-WALL*2, CARD_BOX_LID_H]);

    translate([VOTING_GAP, 0, CARD_BOX_LID_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL*1.5);
    translate([CARD_BOX_W - VOTING_GAP, 0, CARD_BOX_LID_H]) rotate([-90, 0, 0]) cylinder(d=CLIP_DIA, h=WALL*1.5);
    translate([0, WALL + VOTING_STACK/4, CARD_BOX_LID_H]) rotate([0, 90, 0]) cylinder(d=CLIP_DIA, h=WALL*1.5);
    translate([CARD_BOX_W, WALL + VOTING_STACK/4, CARD_BOX_LID_H]) rotate([0, -90, 0]) cylinder(d=CLIP_DIA, h=WALL*1.5);

    #translate([CARD_BOX_W/2, 0.4, WALL]) rotate([90,180,0]) linear_extrude(height=0.4) text("Voting Tiles Lid", size=4, halign="center", valign="top");
}


