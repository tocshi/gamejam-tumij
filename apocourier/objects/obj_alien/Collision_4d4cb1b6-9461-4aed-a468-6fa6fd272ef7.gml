if(sprite_index == spr_alien_red){
	if(other.speedmod > 0.6){
		other.speedmod-=0.2;
		with(instance_create_depth(room_width/2,room_height/3,0,obj_narration)){
			array = ["Mail Speed Down!"];
		}
	}
	mask_index = spr_empty;
	speed = 0;
	fading = true;
	audio_play_sound(snd_alien_explode,1,false);
}
else if(sprite_index == spr_alien_yellow){
	if(other.valuemod > -1){
		other.valuemod-=1;
		with(instance_create_depth(room_width/2,room_height/3,0,obj_narration)){
			array = ["Mail Value Down!"];
		}
	}
	mask_index = spr_empty;
	speed = 0;
	fading = true;
	audio_play_sound(snd_alien_explode,1,false);
}
