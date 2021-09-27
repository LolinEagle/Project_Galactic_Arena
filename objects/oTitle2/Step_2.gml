///@desc Load Save
if(!file_exists(SAVEFILE)){
	image_index = 2;
}else{
	//Load Save
	var _file = file_text_open_read(SAVEFILE);
	var _room = file_text_read_real(_file);
	global.healPlayer = file_text_read_real(_file);
	file_text_close(_file);
	
	//Go To
	if(selected && mouse_check_button_pressed(mb_left)){room_goto(_room);}
}