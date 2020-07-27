if(room != rm_game || !ready){exit;}

// ramp up difficulty
global.difficulty +=1/1200;
global.time++;

// spawn house
if(global.house == noone){
	event_perform(ev_other,ev_user0);
}

if(instance_exists(obj_gameover)){exit;}

// spawn enemy
if(global.time%30 == 0){
	var roll = random_range(0,75);
	if(roll < global.difficulty*0.8){
		var spawn = irandom_range(0,4);
		// buffers for spawn location
		var x_buffer = room_width*0.2;
		var y_buffer = room_height*0.2;
		switch(spawn){
			case 0:
			case 1:
			case 2:
			with(instance_create_layer(0,0,"Enemy",obj_alien)){
				var xx = 0;
				var yy = 0;
				while(true){
					xx = irandom_range(0-x_buffer,room_width+x_buffer);
					yy = irandom_range(0-y_buffer,room_height+y_buffer);
					if((xx < 0 || xx > room_width) || (yy < 0 || yy > room_height)){
						break;
					}
				}
				x = xx;
				y = yy;
			}
			break;
			
			case 3:
			with(instance_create_layer(0,0,"Enemy",obj_alien)){
				sprite_index = choose(spr_alien_red,spr_alien_yellow);
				hp = 3;
				speed *= 0.7;
				var xx = 0;
				var yy = 0;
				while(true){
					xx = irandom_range(0-x_buffer,room_width+x_buffer);
					yy = irandom_range(0-y_buffer,room_height+y_buffer);
					if((xx < 0 || xx > room_width) || (yy < 0 || yy > room_height)){
						break;
					}
				}
				x = xx;
				y = yy;
			}
			break;
			
			case 4:
			if(!instance_exists(obj_dog)){
				with(instance_create_layer(0,global.player.y,"Enemy",obj_dog)){
					var side = choose(-1,1);
					var start = 0;
					if(side == 1){start = room_width};
					x = start + side*x_buffer;
					speed = -2 * side;
					image_xscale = side;
				}
			}
			break;
			
			
			default:
			show_error("This error literally should not happen. How did we get here...?",true);
		}
	}
}