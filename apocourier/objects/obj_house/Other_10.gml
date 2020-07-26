/// @description create mailbox

// create mailbox
with(instance_create_depth(x,y,depth,obj_mailbox)){
	anchor = other;
	angle = choose(0,90,180,270);
	image_angle = angle;
	image_xscale = random_range(0.8,1.33)*choose(-1,1)*other.image_xscale;
	image_yscale = other.image_yscale;
}