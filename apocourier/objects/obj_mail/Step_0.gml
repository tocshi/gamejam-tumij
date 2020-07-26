if(position_meeting(x,y,obj_house)){
	fading = true;
	mask_index = spr_empty;
}

if(fading){
	image_alpha-=1/10;
	if(image_alpha <= 0){
		instance_destroy();
	}
}

if(expanding){
	image_xscale *= 1.1;
	image_yscale *= 1.1;
}

if(sprite_index = spr_package){
	if(speed > 0){
		speed = max(0,speed-0.4);
	}
}
