///@desc Spawn
if(!global.gamePaused){
	//Ennemie Spawn
	if(ennemie){
		spawnRandom--;
		if(spawnRandom <= 0 || recreateEnnemie){
			scCreateEnnemie(oEnnemieSpawn);
			if(spawnRandom <= 0){
				spawnRandom = FPS * SPAWN_RATE;
				if(instance_exists(oBoss3)){spawnRandom = FPS * 3;}
			}
			if(recreateEnnemie){recreateEnnemie = false;}
		}
	}
	
	//Ennemie Gunner
	if(ennemieGunner){
		spawnGunner--;
		if(spawnGunner <= 0 || recreateGunner){
			scCreateEnnemie(oEnnemieGunner);
			if(spawnGunner <= 0){spawnGunner = FPS * rateGunner;}
			if(recreateGunner){recreateGunner = false;}
		}
	}
	
	//Ennemie Healer
	if(ennemieHealer){
		spawnHealer--;
		if(spawnHealer <= 0 || recreateHealer){
			scCreateEnnemie(oEnnemieHealer);
			if(spawnHealer <= 0){spawnHealer = FPS * rateHealer;}
			if(recreateHealer){recreateHealer = false;}
		}
	}
	
	if(ennemieRusher){
		spawnRusher--;
		if(spawnRusher <= 0 || recreateRusher){
			scCreateEnnemie(oEnnemieRusher);
			if(spawnRusher <= 0){spawnRusher = FPS * rateRusher;}
			if(recreateRusher){recreateRusher = false;}
		}
	}
}