if(time%duration = 0){
	with(instance_create_depth(x,y,-10,obj_text)){
		text = other.array[other.index];
		duration = other.duration;
	}
	index++;
	if(index >= array_length_1d(array)){instance_destroy();}	
}

time++;