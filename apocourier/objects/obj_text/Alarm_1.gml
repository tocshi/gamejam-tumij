/// @description throw mail

audio_play_sound(snd_throw,1,false);
with(instance_create_layer(global.player.x,global.player.y,"Danmaku",obj_mail)){
	value = 1;
	speed = 10;
	direction = point_direction(x,y,obj_alien_dummy.x,obj_alien_dummy.y);
	if(direction>90 && direction<270){image_yscale = -1;}
	image_angle = direction;
}