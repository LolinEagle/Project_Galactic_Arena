///@desc Draw Option
scDrawSet(fRoboto24, fa_center, fa_middle);

//Rectangle
draw_set_color(c_black);
draw_rectangle(128, 64, RES_W - 128, RES_H - 64, 0);
draw_set_color(c_white);
draw_rectangle(128, 64, RES_W - 128, RES_H - 64, 1);

//Volume
draw_text(xstart - cx, y - cy - 32, "Sound effects"); 
draw_sprite(sPauseSliderBar, 0, xstart - cx, y - cy);
draw_set_halign(fa_left);
draw_text(xstart - cx + 328, y - cy, string(percentage) + "%");
scDrawSpriteExt();

//Pause
if(room != room_first){
	scDrawSet(fRoboto24, fa_center, fa_middle);
	draw_text(RES_W_HALF, RES_H_HALF + 240, "Pressed Enter to Return");
}