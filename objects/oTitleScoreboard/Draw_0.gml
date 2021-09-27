///@desc Draw Scoreboard
scDrawSet(fRoboto24, fa_right, fa_middle);
draw_set_alpha(image_alpha);
var _x = RES_W - 8;

if(scrScore[0] != 0 && scrTime[0] = 0){
	//Score
	draw_text(_x, RES_H_HALF - 24, scrScore[0]);
	draw_text(_x, RES_H_HALF + 24, scrScore[1]);
	draw_text(_x, RES_H_HALF + 72, scrScore[2]);
	draw_set_color(c_maroon);
	draw_text(_x, RES_H_HALF - 72, "Best Score:");
}else if(scrScore[0] = 0 && scrTime[0] != 0){
	//Time
	draw_text(_x, RES_H_HALF - 24, string(scrTime[0]) + " Min");
	draw_text(_x, RES_H_HALF + 24, string(scrTime[1]) + " Min");
	draw_text(_x, RES_H_HALF + 72, string(scrTime[2]) + " Min");
	draw_set_color(c_aqua);
	draw_text(_x, RES_H_HALF - 72, "Best Time:");
}else if(scrScore[0] != 0 && scrTime[0] != 0){
	//Score
	draw_text(_x, RES_H_HALF - 24 - 128, scrScore[0]);
	draw_text(_x, RES_H_HALF + 24 - 128, scrScore[1]);
	draw_text(_x, RES_H_HALF + 72 - 128, scrScore[2]);
	draw_set_color(c_maroon);
	draw_text(_x, RES_H_HALF - 72 - 128, "Best Score:");
	draw_set_color(c_white);
	
	//Time
	draw_text(_x, RES_H_HALF - 24 + 128, string(scrTime[0]) + " Min");
	draw_text(_x, RES_H_HALF + 24 + 128, string(scrTime[1]) + " Min");
	draw_text(_x, RES_H_HALF + 72 + 128, string(scrTime[2]) + " Min");
	draw_set_color(c_aqua);
	draw_text(_x, RES_H_HALF - 72 + 128, "Best Time:");
}