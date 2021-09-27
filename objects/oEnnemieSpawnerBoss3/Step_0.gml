///@desc Spawn Ennemie
if(!global.gamePaused){
	if(--spawnFixed <= 0){
		instance_create_layer(x, y, "LayerEnnemie1", oEnnemieRusher);
		spawnFixed = FPS * 20;
	}
	
	//Collision with Player
	scEnnemieMelee();
}