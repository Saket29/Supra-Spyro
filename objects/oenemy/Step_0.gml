
vsp=vsp+grv;

if(grounded) && (afraidofheight) && (!place_meeting(x+hsp,y+1,owall))
{
	hsp=-hsp;
}


//horizontal collision
if(place_meeting(x+hsp,y,owall))
{
	while(!place_meeting(x+sign(hsp),y,owall))
	{
		x=x+sign(hsp);
	}
	hsp=-hsp;
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
	grounded=false;
	sprite_index=senemyA;
	image_speed=0;
	if(sign(vsp)>0) image_index=1;else image_index=0;
}
else
{
	grounded=true;
	image_speed=1;
	if(hsp==0)
	{
		sprite_index=senemy;
	}
	else
	{
		sprite_index=senemyR;
	}
}

if(hsp!=0) image_xscale=sign(hsp) * size;
image_yscale=size;