///@desc Hud Score
if(!global.gamePaused && room != room_first && room != room_last){
	scDrawSet(fRoboto36, fa_right, fa_top);
	if(room = rLevel1_3 || room = rLevel2_3 || room = rLevel3_3){
		//Labyrinth
		scDrawSet(fRoboto24, fa_center, fa_top);
		draw_sprite(sHudLabyrinth, 0, RES_W_HALF + 2, 0);
		draw_healthbar(
			RES_W_HALF - 130, 10, RES_W_HALF + 130, 38, global.theScore * 12.5,
			c_black, c_orange, c_yellow, 0, true, false
		);
		draw_text(
			RES_W_HALF,
			48,
			"Score : " + string(global.theScore) + " / " + string(scoreToPass)
		);
	}else if(room = rBoss1 || room = rBoss2 || room = rBoss3){
		//Boss
		draw_sprite(sHudScore, 0, RES_W, 0);
		if(global.theScore < 10){
			draw_text(RES_W - 8, 0, "Score : 00" + string(global.theScore));
		}
		if(global.theScore >= 10 && global.theScore < 100){
			draw_text(RES_W - 8, 0, "Score : 0" + string(global.theScore));
		}
		if(global.theScore >= 100){
			draw_text(RES_W - 8, 0, "Score : " + string(global.theScore));
		}
		scScorePacifisme();
	}else if(room = rEndless){
		//Endless
		draw_sprite(sHudScore, 0, RES_W, 0);
		if(global.theScore < 10){
			draw_text(RES_W - 8, 0, "Score : 00" + string(global.theScore));
		}
		if(global.theScore >= 10 && global.theScore < 100){
			draw_text(RES_W - 8, 0, "Score : 0" + string(global.theScore));
		}
		if(global.theScore >= 100){
			draw_text(RES_W - 8, 0, "Score : " + string(global.theScore));
		}
		
		//Pacifisme
		draw_set_font(fRoboto24);
		if(global.theScore = 0){draw_set_colour(c_aqua);}
		else{draw_set_colour(c_maroon);}
		if(slowPacifisme){draw_set_colour(c_maroon);}
		if(global.pacifismMin >= 1 || global.pacifismSec > 20){
			var _s1 = "Pacifisme : " + string(global.pacifismMin) + ".";
			if(global.pacifismSec < 10){
				draw_text(
					RES_W - 8, 48, _s1 + "0" + string(global.pacifismSec)
				);
			}
			if(global.pacifismSec >= 10){
				draw_text(
					RES_W - 8, 48, _s1 + string(global.pacifismSec)
				);
			}
		}
	}else{
		//Normal level
		draw_sprite(sHudScore, 0, RES_W, 0);
		var	_s = string(global.theScore) + " / " + string(scoreToPass);
		if(global.theScore < 10){
			draw_text(RES_W - 8, 0, "Score : 00" + _s);
		}else if(global.theScore < 100){
			draw_text(RES_W - 8, 0, "Score : 0" + _s);
		}else{
			draw_text(RES_W - 8, 0, "Score : " + _s);
		}
		
		//Pacifisme
		scScorePacifisme();
	}
	
	//Level Ended
	if(global.levelEnded){
		draw_set_colour(c_white);
		draw_set_alpha((global.iLevelEnded + 30) / (FPS * 5));
		draw_rectangle(0, 0, RES_W, RES_H, false);
	}
}