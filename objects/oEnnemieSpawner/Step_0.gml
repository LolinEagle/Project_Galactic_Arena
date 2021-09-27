///@desc Spawn Ennemie
if(!global.gamePaused){
	//Spawn
	if(--spawnFixed <= 0){
		if(
			instance_exists(oBoss2)
			&& global.theScore = 0
			&& global.healBoss >= 400
		){
			global.bonusBoss += 0.25;
		}
		instance_create_layer(x, y, "LayerEnnemie1", oEnnemieSpawn);
		spawnFixed = (FPS * global.ennemieSpawner) * SPAWN_RATE * spawnBoss;
	}
	
	//Collision with Player
	scEnnemieMelee();
	
	//For Boss 2
	if(instance_exists(oBoss2)){
		if(global.bonusBoss >= BONUS_BOSS){
			global.bonusBoss -= BONUS_BOSS;
			instance_create_layer(
				x,
				y,
				"LayerOther",
				choose(oBonusHeal, oBonusTeleportation, oBonusMultishot)
			);
		}
	}
}