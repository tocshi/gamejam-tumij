if(spawning){
	image_alpha += 1/60;
	image_xscale -= 1/60;
	image_yscale = image_xscale;
	if(image_xscale <= 1){
		spawning = false;
	}
}

if(keyboard_check_pressed(ord("R"))){
	room_restart();
}