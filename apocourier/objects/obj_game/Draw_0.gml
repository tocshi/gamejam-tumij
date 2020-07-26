if(room != rm_game){exit;}

draw_set_font(fnt_default);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(10,0,"Mail Delivered: " + string(global.mailscore));

if(global.hp > 0){
	for(var i = 0; i < global.hp; ++i){
		draw_sprite(spr_hp,0,10 + 72*i,64);
	}
}

