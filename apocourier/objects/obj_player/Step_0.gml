if(pause){exit;}

if(dying){
	image_alpha -= 1/60;
	image_xscale -= 1/60;
	image_yscale += 1/10;
	vspeed -= 1/3;
	exit;
}

if(mouse_check_button(mb_left) && atkTimer<=0){
	audio_play_sound(snd_throw,1,false);
	atkTimer = 40*(1/max(1,speedmod));
	with(instance_create_layer(x,y,"Danmaku",obj_mail)){
		value = max(1,1 + other.valuemod);
		speed = 8 * other.speedmod;
		direction = point_direction(x,y,mouse_x,mouse_y);
		if(direction>90 && direction<270){image_yscale = -1;}
		image_angle = direction;
	}
}

if(mouse_check_button(mb_right) && atkTimer<=0){
	audio_play_sound(snd_throw,1,false);
	atkTimer = 75*(1/max(1,speedmod));
	with(instance_create_layer(x,y,"Danmaku",obj_mail)){
		value = (3 + other.valuemod) + max(0,(other.valuemod));
		speed = 8 * other.speedmod;
		sprite_index = spr_package;
		direction = point_direction(x,y,mouse_x,mouse_y);
		if(direction>90 && direction<270){image_yscale = -1;}
		image_angle = direction;
	}
}

