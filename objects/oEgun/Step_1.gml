x=owner.x;
y=owner.y;

image_xscale=abs(owner.image_xscale);
image_yscale=abs(owner.image_yscale);

if(instance_exists(oplayer))
{
	if(oplayer.x < x) image_yscale=-image_yscale;
	if(point_distance(oplayer.x,oplayer.y,x,y) < 600)
	{
		image_angle=point_direction(x,y,oplayer.x,oplayer.y);
		countdown--;
		if(countdown<=0)
		{
			countdown=countdownrate;
			if(!collision_line(x,y,oplayer.x,oplayer.y,owall,false,false))
			{			
				audio_sound_pitch(snshoot,choose(0.8,1,1.3));
				audio_play_sound(snshoot,5,false);
				with(instance_create_layer(x,y,"bullets",oebullet))
				{
					spd=5;
					direction=other.image_angle;
					image_angle=direction;
				}
			}
		}
	}
	
}