/// @description hit by mail

if(hp <= 1){
	audio_play_sound(snd_alien_die,1,false);
	//give powerups
	if(sprite_index == spr_alien_red){
		global.player.speedmod+=0.2;
		with(instance_create_depth(room_width/2,room_height/3,0,obj_narration)){
		array = ["Mail Speed Up!"];
		}
	}
	else if(sprite_index == spr_alien_yellow){
		global.player.valuemod+=1;
		with(instance_create_depth(room_width/2,room_height/3,0,obj_narration)){
		array = ["Mail Value Up!"];
		}
	}
	
	sprite_index = spr_alien_dead;
	mask_index = spr_empty;
	speed = 3;
	direction = 90;
	x0 = x;
	dying = true;
	exit;
}

hp--;
audio_play_sound(snd_alien_hit,1,false);