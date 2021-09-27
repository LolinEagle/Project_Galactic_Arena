///@desc Logic

//Image alpha
if(image_alpha < 1){
	if(!credit){image_alpha += 0.25 / FPS;}
}else{
	image_alpha = 1;
}

//Image index & Show text
if(place_meeting(x, y, oCursor) && image_index != 2){
	image_index = 1;
	showText = true;
	iTitle++;
	selected = true;
	xx = oCursor.x + 16;
	yy = oCursor.y + 72;
}else{
	image_index = 0;
	showText = false;
	iTitle = 0;
	selected = false
}