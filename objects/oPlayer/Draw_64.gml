///@desc Hud Player
if(!global.gamePaused){
	scDrawSet(fRoboto24, fa_left, fa_top);
	
	//If not Labyrinth
	if(room != rLevel1_3 && room != rLevel2_3 && room != rLevel3_3){
		draw_sprite(sHudHeal, 0, 0, 0);

		//Heal Player
		scHealPlayer();

		//Teleportation
		draw_set_font(fRoboto18);
		draw_set_color(c_white);
		draw_text(8, 40, "Beam");
		draw_healthbar(
			80, 48, 380, 60, teleportation / 9,
			c_white, c_black, c_black, 1, true, false
		);

		//Multishot
		draw_set_font(fRoboto12);
		if(multishot > 0){
			draw_set_color(c_orange);
			draw_text(8, 66, "Multishot : " + string(multishot));
		}
	}else{
		//Heal Player
		scHealPlayer();
	}
}