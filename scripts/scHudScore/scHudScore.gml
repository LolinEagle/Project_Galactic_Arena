function scHudScore(){
	draw_sprite(sHudScore, 0, RES_W, 0);
	if(global.theScore >= 100){
		draw_text(RES_W - 8, 0, "Score : " + string(global.theScore));
	}else if(global.theScore >= 10 && global.theScore < 100){
		draw_text(RES_W - 8, 0, "Score : 0" + string(global.theScore));
	}else if(global.theScore < 10){
		draw_text(RES_W - 8, 0, "Score : 00" + string(global.theScore));
	}
}