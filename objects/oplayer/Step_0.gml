if(hascontrol)
{
key_right=keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left=keyboard_check(vk_left) || keyboard_check(ord("A"));
key_up=keyboard_check_pressed(vk_up) || keyboard_check(ord("W"));
}
else
{
	key_right=0;
	key_left=0;
	key_up=0;
}
var move=key_right - key_left;

hsp=move * walkspd;
vsp=vsp+grv;

//jump
canjump-=1;
if(canjump>0) && (key_up)
{
	vsp=-5;
	canjump=0;
}

//horizontal collision
if(place_meeting(x+hsp,y,owall))
{
	while(!place_meeting(x+sign(hsp),y,owall))
	{
		x=x+sign(hsp);
	}
	hsp=0;
}
x=x+hsp;

//vertical collision
if(place_meeting(x,y+vsp,owall))
{
	while(!place_meeting(x,y+sign(vsp),owall))
	{
		y=y+sign(vsp);
	}
	vsp=0;
}
y=y+vsp;

//Animation
if(!place_meeting(x,y+1,owall))
{
	sprite_index=splayerJ;
	image_speed=0;
	if(sign(vsp)>0) image_index=1;else image_index=0;
}
else
{
	canjump=5;
	if(sprite_index==splayerJ) 
	{
		audio_play_sound(snlanding,4,false);
		repeat(5)
		{
			with(instance_create_layer(x,bbox_bottom,"player",odust))
			{
				vsp=0;
			}
		}
	}
	image_speed=1;
	if(hsp==0)
	{
		sprite_index=splayer;
	}
	else
	{
		sprite_index=splayerR;
		
	
			with(instance_create_layer(bbox_left,bbox_bottom,"player",odust))
			{
				vsp=0;
			}
		
	}
}

if(hsp!=0) image_xscale=sign(hsp);