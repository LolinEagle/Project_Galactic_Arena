///@desc Credit
scDrawSet(fRoboto36, fa_center, fa_bottom);

//Rectangle Background
draw_set_color(c_black);
draw_rectangle(RES_W_HALF - 320, 0, RES_W_HALF + 320, RES_H, false);
draw_set_color(c_white);
draw_rectangle(RES_W_HALF - 320, 0, RES_W_HALF + 320, RES_H, true);

//Text
draw_text(RES_W_HALF, CREDIT + iy, "~ Congratulations ~");

//Programming
draw_text(RES_W_HALF, (CREDIT * 3) + iy, "~ Programming ~");
draw_text(RES_W_HALF, (CREDIT * 4) + iy, "LolinEagle");

//Composer
draw_text(RES_W_HALF, (CREDIT * 6) + iy, "~ Composer ~");
draw_text(RES_W_HALF, (CREDIT * 7) + iy, "CrazyBoyo");

//Soundtrack
draw_text(RES_W_HALF, (CREDIT * 9) + iy, "~ Soundtrack ~");
scDrawSet(fRoboto24, fa_left, fa_bottom);
draw_text(RES_W_HALF / 1.5, (CREDIT * 10) + iy, "Kalte Ohren - Alex");
draw_text(RES_W_HALF / 1.5, (CREDIT * 11) + iy, "Kalte Ohren - Septahelix");
draw_text(RES_W_HALF / 1.5, (CREDIT * 12) + iy, "Are You With Us - Wontolla");
draw_text(RES_W_HALF / 1.5, (CREDIT * 13) + iy, "Raindancer - Wontolla");

//The End
draw_set_halign(fa_center);
draw_text(RES_W_HALF, (CREDIT * 18) + iy, "The End");