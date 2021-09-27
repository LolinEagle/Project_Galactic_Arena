function scScore(_targetRoom, _score, _pasiMin, _pasiSec){
	//Pacifism
	if(!global.levelEnded && global.theScore = 0){
		global.pacifismSec += 1 / FPS;
		if(global.pacifismSec >= 60){
			global.pacifismSec -= 60;
			global.pacifismMin++;
		}
	}
	
	//Level Ended
	var _p = global.pacifismMin >= _pasiMin && global.pacifismSec >= _pasiSec;
	if(global.theScore >= _score || _p || global.levelEnded){
		layer_destroy_instances("LayerEnnemie1");
		layer_destroy_instances("LayerEnnemie2");
		if(global.pacifismSec < 0.1){global.pacifismSec = 0;}
		
		//Level Ended
		global.levelEnded = true;
		global.iLevelEnded++;
		if(global.iLevelEnded = FPS * 5){
			global.levelEnded = false;
			global.iLevelEnded = 0;
			if(global.healPlayer < 100){global.healPlayer = 100;}
			room_goto(_targetRoom);
		}
	}
}

function scScoreRoomStart(_soundtrack, _text, _bonusX, _bonusY){
	audio_play_sound(_soundtrack, 0, true);
	with(instance_create_layer(x, y, layer, oText)){text = string(_text);}
	with(oScore){ennemieSlugger = FPS * 30;}
	
	//Bonus Spawn
	with(instance_create_layer(x, y, layer, oSpawnBonus)){
		x1 = _bonusX;
		y1 = _bonusY;
		x2 = room_width - x1;
		y2 = room_height - y1;
	}
}
	
function scScoreRoomStartLight(_soundtrack, _text){
	audio_play_sound(_soundtrack, 0, true);
	
	//Text
	with(instance_create_layer(x, y, layer, oText)){
		yy = 200;
		text = string(_text);
	}
}

function scScorePacifisme(){
	draw_set_font(fRoboto24);
	
	//Color
	if(global.theScore = 0 && !slowPacifisme){draw_set_colour(c_aqua);}
	else{draw_set_colour(c_maroon);}
	
	//Pacifism
	if(global.pacifismMin >= 1 || global.pacifismSec > 20){
		var _s0 = "Pacifisme : " + string(global.pacifismMin);
		var _s1 = string(global.pacifismSec) + " / ";
		var _s2 = string(pacifismMinToPass) + "." + string(pacifismSecToPass);
		if(global.pacifismSec < 10){
			draw_text(RES_W - 8, 48, _s0 + "." + _s1 + _s2);
		}else{
			draw_text(RES_W - 8, 48, _s0 + ".0" + _s1 + _s2);
		}
	}
}