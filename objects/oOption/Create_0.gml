///@desc Variable
scCameraGetView();
selected = false;
percentage = round(global.gameOST * 100);

//Limit
limitLeft  = x - 320;
limitRight = x + 320;
x = limitLeft + ((limitRight - limitLeft) * global.gameOST);

//Create Option Instance
instance_create_layer(cx + RES_W_HALF - 256, cy + 320, layer, oKeyUp);
instance_create_layer(cx + RES_W_HALF + 64, cy + 320, layer, oKeyDown);
instance_create_layer(cx + RES_W_HALF - 256, cy + 440, layer, oKeyLeft);
instance_create_layer(cx + RES_W_HALF + 64, cy + 440, layer, oKeyRight);
instance_create_layer(cx + RES_W_HALF, cy + 224, layer, oOptionSFX);