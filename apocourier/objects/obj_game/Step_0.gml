if(global.house == noone){
	// roll a random size modifier
	var roll = random_range(0.33,3);
	with(instance_create_layer(irandom_range(room_width*0.2,room_width*0.8),-0.5*sprite_get_width(spr_house),"Instances",obj_house)){
		global.house = id;
		
		// random size modifier
		sizemod = roll;
		image_xscale = sizemod;
		image_yscale = image_xscale;
		
		// random speed modifier based on size
		orig_speed = global.housespeed * (1/sizemod);
		vspeed = orig_speed;
		
		mailreq = ceil(1 * random_range(1,global.difficulty) * random_range(0.7,1.5) * sizemod);
	}
}