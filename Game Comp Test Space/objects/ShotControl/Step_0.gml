/// @description Insert description here
// You can write your code in this editor
if displaySelf{
if mouse_check_button_pressed(mb_left) and canShoot and isActive and ammo > 0{
	canShoot = false;
	isShoot = true;
	ammo -= 1;
}

if mouse_check_button_pressed(mb_right){
	activating = true;	
}

if activating{
	if innerRad < 0{
		innerRad -= (innerRad) / 4;	
	}
	
	if outerRad > 1{
		outerRad -= (outerRad - 1) / 4;	
	}	
	
	
	if outerRad < 1.05 and innerRad > -0.5 {
		outerRad = 1;
		innerRad = 0;
		activating = false;
		isActive = true;
	}
}

if isShoot and isActive{
	if innerRad < 125{
		innerRad += (125 - innerRad) / 2;	
	}
	
	if outerRad < 1.3{
		outerRad += (1.3 - outerRad) / 2;	
	}
	
	if innerRad > 124.5 and outerRad > 1.295{
		innerRad = 125;
		outerRad = 1.3;
		isShoot = false;
	}
	
}

else if isActive and reloading == false{
	if innerRad != 0{
		innerRad -= innerRad / 4;	
	}
	
	if outerRad > 1{
		outerRad -= (outerRad - 1) / 4;	
	}
	
	if (innerRad < 0.25 or innerRad > -0.25) and outerRad < 1.05{
		innerRad = 0;
		outerRad = 1;
		
		if ammo <= 0{
			reloading = true;
		}
		else{
			canShoot = true;
		}
	}
}

if reloading{
	if innerRad > -50{
		innerRad += (-50 - innerRad) / 2;	
	}
	
	if outerRad < 1.5{
		outerRad += (1.5 - outerRad) / 2;	
	}
	
	if innerRad < -49.5 and outerRad > 1.45{
		if reloadInt <= 0{
			ammo += 1;
			reloadInt = 25;
		}
		
		if ammo == 4{
			reloading = false;
			canShoot = true;
		}
		
		reloadInt -= 1;
	}
}

}