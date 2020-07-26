switch(room){

	case rm_title:
		draw_set_font(fnt_default);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_text(room_width/2, room_height/4, "Apocourier");
		draw_set_font(fnt_default);
		draw_text(room_width/2+160, room_height/4+50, "by tocshi");
		draw_set_halign(fa_left);
		break;
}
