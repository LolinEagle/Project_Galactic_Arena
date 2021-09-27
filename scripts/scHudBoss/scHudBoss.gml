function scHudBoss(){
	if(!global.gamePaused){
		scDrawSet(fRoboto36, fa_left, fa_middle);
		draw_sprite(sHudBoss, 0, 0, RES_H);

		//Text
		draw_set_color(c_red);
		draw_text(8, RES_H - 84, "Boss");

		//Heal Bar
		var _y1 = RES_H - 56;
		var _y2 = RES_H - 8;
		var _amount = global.healBoss / 3;
		draw_healthbar(
			8, _y1, 508, _y2, _amount,
			c_black, c_red, c_red, 0, true, false
		);
		draw_healthbar(
			8, _y1, 508, _y2, _amount - 100,
			c_black, c_maroon, c_maroon, 0, false, false
		);
		draw_healthbar(
			8, _y1, 508, _y2, _amount - 200,
			c_black, c_purple, c_purple, 0, false, false
		);
	}
}