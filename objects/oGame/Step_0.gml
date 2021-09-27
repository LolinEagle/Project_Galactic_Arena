///@desc Game Logic

//Fullscreen & Volume
if(keyboard_check_pressed(vk_f1)){
	window_set_fullscreen(!window_get_fullscreen());
}
audio_group_set_gain(OST, global.gameOST, 0);
audio_group_set_gain(SFX, global.gameSFX, 0);

//Debug
if(global.gameDebug){
	//Room
	if(keyboard_check_pressed(vk_numpad0)){game_restart();}
	if(keyboard_check_pressed(vk_numpad1)){
		if(room != room_last){room_goto_next();}
	}
	if(keyboard_check_pressed(vk_numpad2)){
		if(room != room_first){room_goto_previous();}
	}
	if(keyboard_check_pressed(vk_numpad3)){room_restart();}

	//God mode & Delete save
	if(keyboard_check_pressed(vk_numpad4)){global.healPlayer = infinity;}
	if(keyboard_check_pressed(vk_numpad5)){
		with(oPlayer){multishot = 999;}
	}
	if(keyboard_check_pressed(vk_numpad6)){
		file_delete(SAVEFILE);
		file_delete(SCOREBOARD);
		file_delete(TIMEBOARD);
		file_delete(OPTION);
	}
	
	//Score
	if(keyboard_check_pressed(vk_numpad7)){global.theScore -= 10;}
	if(keyboard_check_pressed(vk_numpad8)){global.theScore += 90;}
	if(keyboard_check_pressed(vk_numpad9)){global.pacifismSec += 10;}
}