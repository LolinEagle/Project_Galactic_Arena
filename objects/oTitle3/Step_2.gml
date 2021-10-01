///@desc Go to Endless
if(!global.gameEndless){
	image_index = 2;
}else{
	if(selected && mouse_check_button_pressed(mb_left)){room_goto(rEndless);}
}