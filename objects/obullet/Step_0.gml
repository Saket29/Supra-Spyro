x+=lengthdir_x(spd,direction);
y+=lengthdir_y(spd,direction);

if(place_meeting(x,y,oshootable))
{
	with(instance_place(x,y,oshootable))
	{
		hp--;
		flash=8;
		hitfrom=other.direction;
	}

	instance_destroy();
}


if(place_meeting(x,y,owall)) && (image_index!=0)
{
	while(place_meeting(x,y,owall))
	{
		x+=lengthdir_x(-1,direction);
		y+=lengthdir_y(-1,direction);
	}
	spd=0;
	instance_change(ohitspark,true);
}