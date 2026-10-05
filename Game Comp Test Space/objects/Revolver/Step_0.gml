/// @description Insert description here
// You can write your code in this editor
if RevControl.isActive < 100{
	radius = 175 * RevControl.isActive/100;	
}

if type == 1{
	sprite_index = RevDot;
}

else{
	if RevControl.ammo < type - 1{
		sprite_index = RevClove;	
	}
	else{
		sprite_index = RevCloveAmmo;
	}
	image_angle = (type + RevControl.reloadOffset) * RevControl.spinAmount;
	if RevControl.isActive == 100{
		if RevControl.isShoot{
			radius += (250 - radius) / 4;
		
			if radius >= 248.5 {
				RevControl.isShoot = false;
				radius = 250;
			}
		}
	
		else{
			if radius > 175{
				radius -= (radius - 175) / 4;	
			}
			if radius <= 177{
				radius = 175;

			}
		}
	}
}

if type != 1{
	x = oriX + lengthdir_x(radius, image_angle + 60);
	y = oriY + lengthdir_y(radius, image_angle + 60);
}