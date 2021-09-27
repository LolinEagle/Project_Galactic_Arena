///@desc Variable
speedPlus = random_range(-1, 1);

//Boss
if(instance_exists(oBoss2)){
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speedBoss = 4 + speedPlus;
	hp2 = false;
	hp1 = false;
}