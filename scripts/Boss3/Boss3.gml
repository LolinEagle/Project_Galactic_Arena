function scBoss3Phase2(){
	var _if = array_create(2);
	_if[0] = global.pacifismMin >= 2 && global.pacifismSec >= 30;
	_if[1] = global.healBoss <= 600 || _if[0];
	if(_if[1] && phaseTwo = false){return true;}
	else{return false;}
}

function scBoss3Phase3(){
	var _if = global.healBoss <= 300 || global.pacifismMin >= 5
	if(_if && phaseThree = false){return true;}
	else{return false;}
}