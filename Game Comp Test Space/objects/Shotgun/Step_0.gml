/// @description Insert description here
// You can write your code in this editor
if type == 1{
	sprite_index = ShotShell;	
	image_index = 4 - ShotControl.ammo;
	image_xscale = ShotControl.outerRad;
	image_yscale = ShotControl.outerRad;
}

else{
	sprite_index = ShotDot;
	image_angle = 90 * (type - 2);

	x = oriX + lengthdir_x(ShotControl.innerRad, image_angle + 135);
	y = oriY + lengthdir_y(ShotControl.innerRad, image_angle + 135);

}