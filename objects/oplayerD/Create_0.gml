hsp=0;
vsp=0;
grv=0.08;
done=0;

image_speed=0;
image_index=0;
audio_play_sound(sndeath,10,false);
game_set_speed(30,gamespeed_fps);
with(ocamera) 
{
	follow=other.id;
}