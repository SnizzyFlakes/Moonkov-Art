/// @description Insert description here
// You can write your code in this editor
ammo = 4;
canShoot = true;
isShoot = false;
reloading = false;
reloadInt = 0;

innerRad = -50;
outerRad = 1.5;

activating = false;
isActive = false;

window_set_fullscreen(true);

var revDot = instance_create_depth(640,480,1,Shotgun);
revDot.type = 1;

for(i = 1;i <= 4;i++){
	var revIns = instance_create_depth(640,480,1,Shotgun);
	revIns.type = 1 + i;
}