if(!global.gamePaused){
	//Roundrect
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(
		xx - w - border - 10,
		yy - h - (border * 2),
		xx + w + border - 10,
		yy,
		15,
		15,
		false
	);
	
	//Text
	scDrawSet(textFont, fa_right, fa_top);
	draw_text(xx - 10, yy - h - border, textCurrent);
}