///@desc Ennemie logic
if(!global.gamePaused){
	if(!instance_exists(oBoss2)){
		//Normal Logic
		switch(hp){
			case 3:
				image_index = 0; image_xscale = 1.00; image_yscale = 1.00;
				speed = 2.5 + speedPlus;
				break;
			case 2:
				image_index = 1; image_xscale = 0.85; image_yscale = 0.85;
				speed = 3.5 + speedPlus;
				break;
			case 1:
				image_index = 2; image_xscale = 0.70; image_yscale = 0.70;
				speed = 4.5 + speedPlus;
				break;
		}
		
		//Pathfinding
		mp_potential_step_object(oPlayer.x, oPlayer.y, speed, oEnnemieWall);
		if(x = oPlayer.x && y = oPlayer.y){speed = 0;}
	}else{
		//Boss 2 Logic
		speed = speedBoss;
		
		//Heal logic
		if(hp = 2 && !hp2){
			image_index = 1; image_xscale = 0.85; image_yscale = 0.85;
			direction = point_direction(x, y, oPlayer.x, oPlayer.y);
			speedBoss = 5 + speedPlus; hp2 = true;
		}
		if(hp = 1 && !hp1){
			image_index = 2; image_xscale = 0.70; image_yscale = 0.70;
			direction = point_direction(x, y, oPlayer.x, oPlayer.y);
			speedBoss = 6 + speedPlus; hp1 = true;
		}
	}
	
	if(hp <= 0){
		global.theScore++;
		audio_play_sound(snDie, 0, 0);
		instance_destroy();
		
		if(instance_exists(oBoss2)){
			if(++global.bonusBoss >= BONUS_BOSS){
				instance_create_layer(
					x,
					y,
					"LayerOther",
					choose(oBonusHeal, oBonusTeleportation, oBonusMultishot)
				);
				global.bonusBoss -= BONUS_BOSS;
			}
		}instance_destroy();
	}

	//Collision with Player
	scEnnemieMelee();
}