function scHealPlayer(){
	draw_set_color(c_blue);
	draw_text(8, 8, "Heal");
	
	//Health Bar 1
	draw_healthbar(
		80, 8, 380, 40, global.healPlayer,
		c_black, c_blue, c_blue, 0, true, false
	);
	
	//Health Bar 2
	draw_healthbar(
		80, 8, 380, 40, global.healPlayer - 100,
		c_black, c_navy, c_navy, 0, false, false
	);
	
	//Health Bar 3
	draw_healthbar(
		80, 8, 380, 40, global.healPlayer - 200,
		c_black, c_teal, c_teal, 0, false, false
	);
}