// move out of wall
move_out_of_wall();

time++;

if(time > 180 && (x < -100 || x > room_width+100)){
	instance_destroy();
}