///@desc Teleportation
if(!global.gamePaused){
	teleportation--;

	if(
		mouse_check_button_pressed(mb_right)
		&& teleportation <= 0
		&& teleportationSecurity = false
	){
		audio_play_sound(snTeleportation, 0, 0);
		hspd = 0;
		vspd = 0;
		x = mouse_x;
		y = mouse_y;
		teleportation = 900;
	}
	teleportationSecurity = false;
}