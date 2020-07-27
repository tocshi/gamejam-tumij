if(dying){
	image_alpha -= 1/120;
	x = x0+10*sin((global.time*pi)/30);
	if(image_alpha <= 0){instance_destroy();}
	exit;
}

if(fading){
	image_alpha-=1/10;
	image_xscale *= 1.1;
	image_yscale *= 1.1;
	if(image_alpha <= 0){
		instance_destroy();
	}
}

if(instance_exists(obj_gameover) || global.player.dying){
	image_speed = 0;
	speed = 0;
	exit;
}

direction = point_direction(x,y,global.player.x,global.player.y);