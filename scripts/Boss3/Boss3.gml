function scBoss3Phase2(){
	var _if = global.pacifismMin >= 2 && global.pacifismSec >= 30;
	if((global.healBoss <= 600 || _if) && phaseTwo = false){return true;}
	else{return false;}
}

function scBoss3Phase3(){
	var _if = global.healBoss <= 300 || global.pacifismMin >= 5;
	if(_if && phaseThree = false){return true;}
	else{return false;}
}