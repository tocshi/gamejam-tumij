if(ds_list_find_index(hitlist,other.id)<0 && !other.fading){
	anchor.mailreq-=other.value;
	global.mailscore+=other.value;
	ds_list_add(hitlist,other.id);
	received = true;
	image_alpha = 0.6;
	
	if(anchor.mailreq <=0){
		anchor.complete = true;
	}
}

if(other.sprite_index == spr_mail){audio_play_sound(snd_mail_receive,1,false);}
else{audio_play_sound(snd_package_receive,1,false);}
