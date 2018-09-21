include <consts.scad>;

echo("Player Tokens Lid (WxDxH):", TOKEN_BOX_W, TOKEN_BOX_D, TOKEN_BOX_LID_H);

difference() {
    cube([TOKEN_BOX_W, TOKEN_BOX_D, TOKEN_BOX_LID_H]);

    translate([CLIP_WALL + WALL*2 +MEEPLE_W+CLAIM_DIA, WALL, TOKEN_BOX_LID_H - CUBE/2])  cube([DELIVERY_STACK_W, DELIVERY_STACK_D, DELIVERY_STACK_H]);

    translate([CLIP_WALL + WALL + CLAIM_DIA, WALL, TOKEN_BOX_H - MEEPLE_H/2]) cube([MEEPLE_W, TOKEN_BOX_D-WALL*2, MEEPLE_H]);
    translate([CLIP_WALL + WALL + CLAIM_DIA, WALL*2 + MEEPLE_STACK, FLOOR]) cube([MEEPLE_W, SQUARE_TILE, SQUARE_TILE]); // Use MEEPLE_W for X so room for the tokens to fall sideways

    translate([CLIP_WALL, WALL, TOKEN_BOX_H - CLAIM_DIA/2]) cube([CLAIM_DIA, TOKEN_BOX_D-WALL*2, CLAIM_DIA]); // Go the full length of the container.
    translate([CLIP_WALL + CLAIM_DIA/4, WALL+CLAIM_DIA/4, 0]) cube([CLAIM_DIA/2, TOKEN_BOX_D-WALL*2-CLAIM_DIA/2, TOKEN_BOX_LID_H]); // Go the full length of the container.
    //rotate([-90, 00, 0]) cylinder(d=CLAIM_DIA, h=TOKEN_BOX_D-WALL*2);

    translate([TOKEN_BOX_W/2, 0.4, 2]) rotate([90,180,0]) linear_extrude(height=0.4) text("Player Tokens", size=4, halign="center", valign="top");
    translate([TOKEN_BOX_W/2, 0.4, 7]) rotate([90,180,0]) linear_extrude(height=0.4) text("Lid", size=4, halign="center", valign="top");
    
    //translate([-CLIP, TOKEN_BOX_D/2, TOKEN_BOX_H-CLIP_STOPPER]) rotate([90, 0, 90]) cliphollow(h=CLIP*3);
    //translate([TOKEN_BOX_W+CLIP, TOKEN_BOX_D/2, TOKEN_BOX_H-CLIP_STOPPER]) rotate([-90, 180, 90]) cliphollow(h=CLIP*3);
            translate([CLIP_SOCKET_WALL, TOKEN_BOX_D/2, TOKEN_BOX_H]) rotate([90, 180, 90]) socket(h=CLIP_SOCKET);
        translate([TOKEN_BOX_W-CLIP_SOCKET_WALL, TOKEN_BOX_D/2, TOKEN_BOX_H]) rotate([90, -180, -90]) socket(h=CLIP_SOCKET);
}
    //translate([TOKEN_BOX_W/2, 0, TOKEN_BOX_H]) rotate([-90, 180, 0]) clip(h=WALL);
    //translate([TOKEN_BOX_W/2, TOKEN_BOX_D, TOKEN_BOX_H]) rotate([90, 0, 0]) clip(h=1);
    //translate([TOKEN_BOX_W/3*2, TOKEN_BOX_D, TOKEN_BOX_H]) rotate([90, 0, 0]) clip(h=WALL);
    //translate([0, TOKEN_BOX_D/2, TOKEN_BOX_H-CLIP_STOPPER]) rotate([90, 0, 90]) clip(h=CLIP);
    //translate([TOKEN_BOX_W, TOKEN_BOX_D/2, TOKEN_BOX_H-CLIP_STOPPER]) rotate([-90, 180, 90]) clip(h=CLIP);
