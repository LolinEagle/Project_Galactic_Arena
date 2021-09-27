///@desc Set Pause
if(
	(keyboard_check_pressed(vk_escape) || !window_has_focus)
	&& room != room_first
	&& room != room_last
	&& !global.gamePaused
	&& !global.levelEnded
){
	global.gamePaused = true;
	
	//Stop image_speed and speed
	if(global.gamePaused){
		with(all){
			image_speed = 0;
			speed = 0;
		}
	}
}