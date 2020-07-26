if(gameover){exit;}

if(mouse_check_button(mb_left) && atkTimer<=0){
	atkTimer = 40;
	with(instance_create_layer(x,y,"Danmaku",obj_mail)){
		value = 1 + other.valuemod;
		speed = 10 * other.speedmod;
		direction = point_direction(x,y,mouse_x,mouse_y);
		if(direction>90 && direction<270){image_yscale = -1;}
		image_angle = direction;
	}
}

if(mouse_check_button(mb_right) && atkTimer<=0){
	atkTimer = 75;
	with(instance_create_layer(x,y,"Danmaku",obj_mail)){
		value = 3 * (other.valuemod+1);
		speed = 10 * other.speedmod;
		sprite_index = spr_package;
		direction = point_direction(x,y,mouse_x,mouse_y);
		if(direction>90 && direction<270){image_yscale = -1;}
		image_angle = direction;
	}
}

