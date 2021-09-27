///@desc Spawn Variable

//Ennemie
ennemie = true;
recreateEnnemie = false;
spawnRandom = FPS;

//Ennemie Gunner
ennemieGunner = false;
recreateGunner = false;
spawnGunner = FPS;
rateGunner = 10;

//Ennemie Gunner
ennemieHealer = false;
recreateHealer = false;
spawnHealer = FPS;
rateHealer = 10;

//Ennemie Rusher
ennemieRusher = false;
recreateRusher = false;
spawnRusher = FPS;
rateRusher = 10;

function scCreateEnnemie(_ennemieType){
	instance_create_layer(
		irandom_range(x1, x2),
		irandom_range(y1, y2),
		"LayerEnnemie1",
		_ennemieType
	);
}