if(!global.gamePaused){
	//The actual letters draw
	letters += spd;
	textCurrent = string_copy(text, 1, floor(letters));
	draw_set_font(textFont);
	
	//Size
	if(h == 0){h = string_height(text);}
	w = string_width(textCurrent);
	w = max(96, w);

	//Ended
	i++;
	if(letters >= length && i = FPS * 5){instance_destroy();}
}