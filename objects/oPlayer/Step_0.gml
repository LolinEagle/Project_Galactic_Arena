///@desc Player logic
if(!global.gamePaused){
	direction = point_direction(x, y, mouse_x, mouse_y);
	image_angle = direction;

	#region Movements
	up    = keyboard_check(global.gameUp);
	left  = keyboard_check(global.gameLeft);
	down  = keyboard_check(global.gameDown);
	right = keyboard_check(global.gameRight);
	inputDirection = point_direction(0, 0, right - left, down - up);
	inputMagnitude = (right - left != 0) || (down - up != 0);
	hspd = lengthdir_x(inputMagnitude * xspd, inputDirection);
	vspd = lengthdir_y(inputMagnitude * 16, inputDirection);
	x += hspd;
	y += vspd;
	var bbox_side;

	//Horizontal
	if(hspd > 0){bbox_side = bbox_right;}
	else{bbox_side = bbox_left;}
	if(
		tilemap_get_at_pixel(tilemapH, bbox_side + hspd, bbox_top) != 0
		|| tilemap_get_at_pixel(tilemapH, bbox_side + hspd, bbox_bottom) != 0
	){
		if(hspd > 0){x -= hspd;}
		else{x -= hspd;}
	}

	//Vertical
	if(vspd > 0){bbox_side = bbox_bottom;}
	else{bbox_side = bbox_top;}
	if(
		tilemap_get_at_pixel(tilemapV, bbox_left , bbox_side + vspd) != 0
		|| tilemap_get_at_pixel(tilemapV, bbox_right, bbox_side + vspd) != 0
	){
		if(vspd > 0){y -= vspd;}
		else{y -= vspd;}
	}#endregion

	#region Shot
	rateOfFire--;
	var _x = x + lengthdir_x(64, direction);
	var _y = y + lengthdir_y(64, direction);

	//Multishot
	if(mouse_check_button(mb_left) && rateOfFire <= 0 && multishot > 0){
		audio_play_sound(snShot, 1, 0);
		instance_create_layer(_x, _y, "LayerOther", oShot);
		with(instance_create_layer(_x, _y, "LayerOther", oShot)){
			direction = point_direction(x, y, mouse_x, mouse_y)
			direction += random_range(SHOT_LOW, SHOT_TOP);
		}
		with(instance_create_layer(_x, _y, "LayerOther", oShot)){
			direction = point_direction(x, y, mouse_x, mouse_y)
			direction += random_range(-SHOT_LOW, -SHOT_TOP);
		}
		multishot--;
		rateOfFire = FPS * 0.15;
	}

	//Single shot
	if(mouse_check_button(mb_left) && rateOfFire <= 0 && multishot <= 0){
		audio_play_sound(snShot, 1, 0);
		instance_create_layer(_x, _y, "LayerOther", oShot);
		rateOfFire = FPS * 0.15;
	}#endregion

	#region Player Heal
	//Max heal
	if(!global.gameDebug){global.healPlayer = min(300, global.healPlayer);}
	
	//Player Frame
	global.playerFrame--;
	global.healPlayerFrame -= 1 / 3;
	global.healPlayerFrame = max(0, global.healPlayerFrame);
	if(global.healPlayerFrame >= 20){global.playerFrame = FPS * 3;}
	
	//Shader
	if(global.playerFrame > 0){
		flashPlayer = true;
		flashColor = shBlue;
	}else{
		flashColor = shWhite;
	}
	
	//Die
	if(global.healPlayer <= 0){
		if(room != rEndless){
			//Load Save
			var file = file_text_open_read(SAVEFILE);
			file_text_read_real(file);
			global.healPlayer = file_text_read_real(file);
			file_text_close(file);
			room_restart();
		}else{
			if(!endless){
				//Open & Write
				if(global.theScore > 0){
					var file = file_text_open_append(SCOREBOARD);
					file_text_writeln(file);
					file_text_write_real(file, global.theScore);
				}else{
					var file = file_text_open_append(TIMEBOARD);
					file_text_writeln(file);
					file_text_write_real(file, global.pacifismMin);
				}
				
				//Close
				file_text_close(file);
				
				//Level Ended
				layer_destroy_instances("LayerOther");
				layer_destroy_instances("LayerEnnemie1");
				layer_destroy_instances("LayerEnnemie2");
				layer_destroy_instances("LayerEnnemie3");
				global.levelEnded = true;
				endless = true;
			}
		
			//Countdown
			if(++global.iLevelEnded = FPS * 5){
				global.levelEnded = false;
				global.iLevelEnded = 0;
				room_goto(rCredit);
			}
		}
	}#endregion
}