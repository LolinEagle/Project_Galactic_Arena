///@desc Display
if(global.gamePaused && room != room_first && room != room_last && !option){
	//Commands
	scDrawSet(fRoboto36, fa_left, fa_bottom);
	draw_sprite(sHudCommands, 0, 0, RES_H - 16);
	draw_text(4, RES_H - 136, "Commands :")
	draw_set_font(fRoboto18);
	draw_text(4, RES_H - 116, "WASD : Movement")
	draw_text(4, RES_H - 92, "Mouse1 : Fire")
	draw_text(4, RES_H - 68, "Mouse2 : Teleport")
	draw_text(4, RES_H - 44, "Esc : Pause")
	draw_text(4, RES_H - 20, "F1 : Fullscreen")
	
	//Pause
	scDrawSet(fRoboto36, fa_center, fa_middle);
	draw_sprite(sPauseBackground, 0, RES_W_HALF, RES_H_HALF);
	if(!pauseConfirmation){
		//Main
		draw_text(RES_W_HALF, 200, "- Pause -");
		draw_text(RES_W_HALF, 280, "Return");
		draw_text(RES_W_HALF, 360, "Menu");
		draw_text(RES_W_HALF, 440, "Option");
		draw_text(RES_W_HALF, 520, "Quit");
		switch(pauseCursor){
			case 0: draw_sprite(sPause, 0, 520, 280); break;
			case 1: draw_sprite(sPause, 0, 520, 360); break;
			case 2: draw_sprite(sPause, 0, 520, 440); break;
			case 3: draw_sprite(sPause, 0, 520, 520); break;
		}
	}else{	
		//Pause Confirmation
		draw_text(RES_W_HALF, 200, "Are you sure?");
		draw_text(RES_W_HALF, 280, "Yes");
		draw_text(RES_W_HALF, 360, "No");
		switch(pauseCursor){
			case 10: draw_sprite(sPause, 0, 520, 280); break;
			case 11: draw_sprite(sPause, 0, 520, 360); break;
		}
	}
}