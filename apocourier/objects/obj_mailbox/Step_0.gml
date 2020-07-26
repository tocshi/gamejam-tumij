if(instance_exists(anchor)){
	x = anchor.x;
	y = anchor.y;
	image_angle = angle + anchor.image_angle;
}

if(received){
	image_alpha += 1/60;
	if(image_alpha >= 1){
		received = false;
	}
}
