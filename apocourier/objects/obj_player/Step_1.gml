// TIMERS
atkTimer--;

// move outside of houses
move_out_of_wall();

// check for gameover
if(instance_exists(obj_gameover)){exit;}
if(global.hp <= 0){
	gameover = 0;
}
if(x < (0-(sprite_width/2)) || x > (room_width + (sprite_width/2)) || y > room_height + sprite_height/2){
	gameover = 1;
}

if(gameover>-1){
	with(instance_create_depth(room_width/2,room_height/2,-1,obj_gameover)){
		x += irandom_range(-60,60);
		y += irandom_range(-60,60);
		image_angle += random_range(-20,20);
		image_index = other.gameover;
	}
}