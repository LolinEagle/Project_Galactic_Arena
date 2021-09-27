///@desc Ennemie Shot Logic
if(!global.gamePaused){
	image_angle = direction;
	speed = 16;
	
	if(hp <= 0){
		if(
			canScore && global.theScore != 0
			&& !instance_exists(oBoss2) && !instance_exists(oBoss3)
		){
			global.theScore++;
		}
		instance_destroy();
	}

	//Ennemie Wall
	if(place_meeting(x, y, oEnnemieWall)){
		with(instance_place(x, y, oEnnemieWall)){
			if(!canPass){instance_destroy(other);}
		}
	}

	//Collision with Player
	if(place_meeting(x, y, oPlayer)){
		if(global.playerFrame <= 0){
			global.healPlayerFrame++;
			global.healPlayer--;
		}
		with(oPlayer){flashPlayer = true;}
		instance_destroy();
	}

	//Collision with Ennemie Spawner
	if(place_meeting(x, y, oEnnemieSpawner)){
		with(instance_place(x, y, oEnnemieSpawner)){flash = FPS / 10;}
		instance_destroy();
	}
}