if(room != rm_game){exit;}

global.house = noone;
global.mailscore = 0;
global.housespeed = 1;
global.difficulty = 1;
global.hp = 3;

if(!ready){
	with(instance_create_depth(room_width/2,room_height/3,0,obj_narration)){
		array = [
		"Welcome to your first day on your dream job!",
		"You've always wanted to be a mailman, right?",
		"Left click to throw an envelope.",
		"Right click to place a package.",
		"Packages are worth more than envelopes.",
		"That brown square is a house (I ran out of time to design a real house).",
		"All houses can only receive mail from a small section.",
		"\"A\" and \"D\" move the house, and \"Q\", \"E\", and mousewheel rotate it.",
		"\"S\" makes the house move downwards faster.",
		"Bigger houses usually need more deliveries.",
		"Don't let them hit the bottom until you've finished your delivery!",
		"That's it. Good luck on your first day, champ."
		]
	}
}