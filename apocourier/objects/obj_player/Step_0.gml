if(mouse_check_button(mb_left) && atkTimer<=0){
	atkTimer = 40;
	with(instance_create_layer(x,y,"Danmaku",obj_mail)){
		speed = 10 * other.speedmod;
		direction = point_direction(x,y,mouse_x,mouse_y);
		if(direction>90 && direction<270){image_yscale = -1;}
		image_angle = direction;
	}
}

