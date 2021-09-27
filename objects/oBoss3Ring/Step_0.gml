///@desc Change Direction
if(!global.gamePaused){
	if(iDir > 0 && !global.levelEnded){
		iDir--;
		image_angle++;
	}
	
	//Phase Pasifism
	if(phasePasifism && !global.levelEnded){
		var _x1 = x - lengthdir_x(4000, image_angle - 45);
		var _y1 = y - lengthdir_y(4000, image_angle - 45);
		var _x2 = x - lengthdir_x(4000, image_angle + 45);
		var _y2 = y - lengthdir_y(4000, image_angle + 45);
		if(
			!point_in_triangle(oPlayer.x, oPlayer.y, x, y, _x1, _y1, _x2, _y2)
		){
			global.pacifismSec -= 1 / FPS;
			with(oScore){slowPacifisme = true;}
		}else{
			with(oScore){slowPacifisme = false;}
		}
	}
}