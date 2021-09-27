///@desc Final Boss
global.healBoss = 900;

//Iterator
iFx = 0;
iDir = 0;
iRing = 0;
iEndless = 0;

//Charge
iCharge = 0;
charge = false;
xP = 0;
yP = 0;
chargeTime = 0;

//Phase
phaseTwo = false;
phaseThree = false;
phaseEndless = false;

//Instance
Ring = instance_create_layer(x, y, "LayerEnnemie3", oBoss3Ring);
Spawner = instance_create_layer(x, y, "LayerEnnemie2", oEnnemieSpawnerBoss3);
Turret1 = instance_create_layer(x, y, "LayerEnnemie2", oEnnemieTurret);