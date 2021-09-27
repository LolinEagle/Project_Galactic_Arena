///@desc Slugger logic
if(!global.gamePaused){
	//Size
	if(image_xscale <= 0.85){
		image_xscale += 1 / FPS;
		image_yscale += 1 / FPS;
	}else{
		image_xscale = 0.85;
		image_yscale = 0.85;
		speed = 2.5;
	}

	//Pathfinding
	mp_potential_step_object(oPlayer.x, oPlayer.y, speed, oEnnemieWall);
	if(x = oPlayer.x && y = oPlayer.y){speed = 0;}
	
	//Reflect
	if(hp < 0){
		hp++;
		audio_play_sound(snShotReflect, 0, 0);
		instance_create_layer(x, y, "LayerEnnemie2", oEnnemieShot);
	}

	//Collision with Player
	scEnnemieMelee();
}