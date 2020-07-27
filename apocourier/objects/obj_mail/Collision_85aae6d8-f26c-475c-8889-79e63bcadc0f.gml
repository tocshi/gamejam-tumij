fading = true;
expanding = true;
speed = 0;
mask_index = spr_empty;

if(other.alarm[0] <= 0){other.direction += 180;}
other.alarm[0] = 10;