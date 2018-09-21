include <consts.scad>;

union() {
    clip(CLIP);
    mirror([0, 1, 0]) clip(CLIP);
}
