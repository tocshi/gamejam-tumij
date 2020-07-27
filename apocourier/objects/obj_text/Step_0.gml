if(time < 30){alpha+= 1/30;}
if(time > duration-30){alpha-= 1/30;}

if(time > duration){instance_destroy()};

time++;


// some special interactions

if(text == "That brown square is a house (I ran out of time to design a real house)." && !done){
	event_perform_object(obj_game,ev_other,ev_user0);
	global.house.x = room_width/5;
	global.house.orig_speed = 0.6;
	global.house.mailreq = 1;
	with(obj_mailbox){x = room_width/5;}
	done = true;
}
else if(text == "That's it. Good luck on your first day, champ." && !done){
	alarm[0] = 60;
	done = true;
}
else if(text == "AND WE HAVE YOUR DOGS" && !done){
	alarm[1] = 230;
	done = true;
}
else if(text == "GET THAT AWAY FROM ME" && !done){
	with(obj_game){ready = true;}
	global.player.pause = false;
	done = true;
}