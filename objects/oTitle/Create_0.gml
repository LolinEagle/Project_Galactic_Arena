image_alpha = 0;

//Main
instance_create_layer(RES_W_HALF, 210, layer, oTitle1);
instance_create_layer(RES_W_HALF, 310, layer, oTitle2);
instance_create_layer(RES_W_HALF, 410, layer, oTitle3);
instance_create_layer(RES_W_HALF, 510, layer, oTitle4);
instance_create_layer(RES_W_HALF, 610, layer, oTitle5);

//Side
instance_create_layer(16, 16, layer, oTitleCredit);
instance_create_layer(0, RES_H - 16, layer, oTitleCommands);
instance_create_layer(RES_W - 16, RES_H - 16, layer, oTitreVersion);
instance_create_layer(0, 0, layer, oTitleScoreboard);