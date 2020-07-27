if(y > room_height && !outOfBounds){
	hspeed = 0;
	outOfBounds = true;
	global.house = noone;
	
	// check if quota met, and if not, decrement life
	if(mailreq > 0 && global.hp > 0 && !instance_exists(obj_gameover)){
		global.hp--;
	}
}

if(global.house = id && !instance_exists(obj_gameover)){
	// speed up downwards
	vspeed = orig_speed + speedmod;
	speedmod = 0;
	if(keyboard_check(ord("S"))){
		speedmod = orig_speed*4;
	}
	
	// horizontal movement
	hspeed = 0;
	if(keyboard_check(ord("A"))){
		hspeed = -3 * (1/sizemod);
	}
	if(keyboard_check(ord("D"))){
		hspeed = 3 * (1/sizemod);
	}
	
	// rotation
	var rotation = 0;
	if(mouse_wheel_up() || keyboard_check(ord("Q"))){
		rotation=5;
	}
	else if(mouse_wheel_down() || keyboard_check(ord("E"))){
		rotation=-5;
	}
	image_angle+=rotation;
}

// check if quota met, and speed up if it is
if(complete){
	orig_speed+=0.1;
}