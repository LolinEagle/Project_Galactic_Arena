///@desc Check what to do
if(!global.gamePaused){
	if(!instance_exists(oBoss2)){
		z += scWave(-1, 1, 1, 0);
		
		//If can't be recovered
		if(
			place_meeting(x, y, oEnnemieWall)
			|| place_meeting(x, y, oEnnemieSpawner)
		){
			with(oSpawnBonus){
				recreateBonus = true;
				order--;
			}
			instance_destroy();
		}
	}else{
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		speed = 8;
	}
}