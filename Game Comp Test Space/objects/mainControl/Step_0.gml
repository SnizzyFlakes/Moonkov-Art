/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord(1)){
	disable();
	if revolver == 0{
		revolver = instance_create_depth(0,0,1,RevControl);	
	}
	revolver.displaySelf = true;	

}

if keyboard_check_pressed(ord(2)){
	disable();
	if shotgun == 0{
		shotgun = instance_create_depth(0,0,1,ShotControl);	
	}
	shotgun.displaySelf = true;	

}