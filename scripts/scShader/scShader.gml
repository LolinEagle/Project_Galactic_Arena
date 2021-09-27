function scShader(_shader){
	if(flash > 0){
		flash--;
		shader_set(_shader);
		draw_self();
		shader_reset();
	}else{
		draw_self();
	}
}