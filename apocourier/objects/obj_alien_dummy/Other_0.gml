if(time > room_speed*10){
	with(instance_create_depth(room_width/2,room_height/8,0,obj_narration)){
		array = [
		"AAH",
		"GET THAT AWAY FROM ME"
		]
	}
	instance_destroy();
}
