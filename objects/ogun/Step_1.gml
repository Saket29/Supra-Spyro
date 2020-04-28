x=oplayer.x;
y=oplayer.y+10;


image_angle=point_direction(x,y,mouse_x,mouse_y);
firingdelay=firingdelay-1;
if(mouse_check_button(mb_left) || keyboard_check_pressed(vk_control)) && (firingdelay<0)
{
	firingdelay=5;
	audio_sound_pitch(snshoot,choose(0.8,1,1.3));
	audio_play_sound(snshoot,5,false);
	with(instance_create_layer(x,y,"bullets",obullet))
	{
		spd=10;
		direction=other.image_angle;
		image_angle=direction;
	}
}

if(image_angle>90) && (image_angle<270)
{
	image_yscale=-1;
}
else
{
	image_yscale=1;
}