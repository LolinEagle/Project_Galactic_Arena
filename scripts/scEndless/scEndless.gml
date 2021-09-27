function scEndless(
	_phase, _textEnnemie,
	_ennemie, _ennemieGunner,
	_ennemieHealer, _ennemieRusher,
	_ennemieTurret, _ennemieSpawner
){
	//Start
	phase = _phase;
	if(phase > 1){
		instance_create_layer(
			room_width / 2, room_height / 2, "LayerOther", oBonusMultishotBig
		);
	}
	with(instance_create_layer(x, y, layer, oTextEnnemie)){
		text = _textEnnemie;
	}
	
	//Ennemie
	with(endlessEnnemie){
		ennemie = _ennemie;
		ennemieGunner = _ennemieGunner;
		ennemieHealer = _ennemieHealer;
		ennemieRusher = _ennemieRusher;
	}
	with(oEnnemieTurret){active = _ennemieTurret;}
	with(oEnnemieSpawner){spawnFixed = _ennemieSpawner;}
}