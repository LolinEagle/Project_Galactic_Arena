///@desc Shader
draw_self();
if(flashPlayer){
	iFlash++;
	if(iFlash >= flashBetween){
		shader_set(flashColor);
		draw_self();
		shader_reset();
		flashPlayer = false;
		if(iFlash >= flashDurasion){iFlash = 0;}
	}
}