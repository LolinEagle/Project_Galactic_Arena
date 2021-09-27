if(!global.gamePaused){
	if(order < 1){order = 3;}
	if(order > 3){order = 1;}
	switch(order){
		case 1: bonus = oBonusHeal; break;
		case 2: bonus = oBonusTeleportation; break;
		case 3: bonus = oBonusMultishot; break;
	}
	
	//If problem
	if(recreateBonus = true){
		instance_create_layer(
			irandom_range(x1, x2),
			irandom_range(y1, y2),
			"LayerOther",
			bonus
		);
		recreateBonus = false;
		order++;
	}
	
	//Spawn Bonus
	spawnBonus--;
	if(spawnBonus <= 0){
		instance_create_layer(
			irandom_range(x1, x2),
			irandom_range(y1, y2),
			"LayerOther",
			bonus
		);
		spawnBonus = FPS * 20;
		order++;
	}
}