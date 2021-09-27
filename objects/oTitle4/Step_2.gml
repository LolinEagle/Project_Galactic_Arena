///@desc Option
if(selected && mouse_check_button_pressed(mb_left)){
	option = !option;
	var _titleBack = layer_background_get_id("BackgroundsTitle");
	if(option){
		y = 592;
		layer_background_index(_titleBack, 1);
		
		//Instance Deactivate
		instance_deactivate_layer("LayerTitle");
		instance_deactivate_object(oTitle1);
		instance_deactivate_object(oTitle2);
		instance_deactivate_object(oTitle5);
		instance_deactivate_object(oTitleCredit);
		instance_create_layer(RES_W_HALF, 128, "LayerFirst", oOption);
		titleWord = "Return";
	}else{
		y = ystart;
		layer_background_index(_titleBack, 0);
		
		//Instance Activate
		instance_activate_layer("LayerTitle");
		instance_activate_object(oTitle1);
		instance_activate_object(oTitle2);
		instance_activate_object(oTitle5);
		instance_activate_object(oTitleCredit);
		instance_destroy(oOption);
		titleWord = "Option";
	}
}