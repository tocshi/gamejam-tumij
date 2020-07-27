// Become unstuck from a wall
if(instance_place(x,y,obj_house)){
	var wall = instance_place(x,y,obj_house);
	move_outside_all(point_direction(wall.x,wall.y,x,y),10);
}