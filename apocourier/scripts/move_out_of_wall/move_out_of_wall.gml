// Become unstuck from a wall
if(instance_place(x,y,obj_house)){
	if(speed > 0){
		move_outside_all(direction+180,speed);
	}
	else{
		// TODO: find a way to find the closest direction to outside wall
		var wall = instance_place(x,y,obj_house);
		move_outside_all(point_direction(wall.x,wall.y,x,y),10);
	}
}