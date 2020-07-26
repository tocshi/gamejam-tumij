if(ds_list_find_index(hitlist,other.id)<0){
	anchor.mailreq-=other.value;
	global.mailscore+=other.value;
	ds_list_add(hitlist,other.id);
	received = true;
	image_alpha = 0.6;
	
	if(anchor.mailreq <=0){
		anchor.complete = true;
	}
}

