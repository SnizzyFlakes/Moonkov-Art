/// @description Insert description here
// You can write your code in this editor
ammo = 6;
reloadOffset = 0;
reloading = 0;
tempReload = 0;
spinAmount = 60;

displaySelf = false;

isShoot = false;
canShoot = false;
isActive = 0;
activating = false

window_set_fullscreen(true);

var revDot = instance_create_depth(640,480,1,Revolver);
revDot.type = 1;

for(i = 1;i <= 6;i++){
	var revIns = instance_create_depth(640,480,1,Revolver);
	revIns.type = 1 + i;
}