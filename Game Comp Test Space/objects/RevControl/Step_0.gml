/// @description Insert description here
// You can write your code in this editor
if displaySelf{
if mouse_check_button_pressed(mb_left) and isShoot == false and ammo > 0 and canShoot{
	ammo -= 1;	
	
	
	reloading = 100;
	tempReload = reloadOffset;
	spinAmount = 60;
					
	isShoot = true;	
	canShoot = false;
}

if mouse_check_button_pressed(mb_right) and isActive = 0{
	activating = true;
}

if activating == true{
	isActive += (100-isActive) / 4;
	
	if isActive > 99{
		isActive = 100;
		activating = false;
		canShoot = true;
	}
}

if reloading > 0{
	reloadOffset = tempReload + (100-reloading)/100;
	reloading -= reloading/10;
	
	if reloading <= 1{
		if ammo <= 0{
			reloading = 100;
			tempReload = reloadOffset;
			spinAmount = 420;
			ammo = 6;
		}
		
		else{
			canShoot = true;
			reloading = 0;
			reloadOffset = round(tempReload + 1);
		}
	}
}

}