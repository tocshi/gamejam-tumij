if(other.sprite_index != spr_alien){exit;}

// abduct animation
alarm[0] = 60;
mask_index = spr_empty;
dying = true;
audio_play_sound(snd_abduct,1,false);
