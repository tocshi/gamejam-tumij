/// @description spawn house

// roll a random size modifier
var roll = random_range(0.4,2.5);
with(instance_create_layer(irandom_range(room_width*0.2,room_width*0.8),-0.5*sprite_get_width(spr_house)*roll,"Instances",obj_house)){
	global.house = id;
		
	// random size modifier
	sizemod = roll;
	image_xscale = sizemod;
	image_yscale = image_xscale;
		
	// random speed modifier based on size
	orig_speed = global.housespeed * (1/sizemod);
	vspeed = orig_speed;
		
	mailreq = ceil(1.2 * random_range(max(1,global.difficulty/2),global.difficulty) * random_range(0.8,1.5) * sizemod);
		
	// create mailbox
	event_perform(ev_other,ev_user0);
}