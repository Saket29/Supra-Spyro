if(instance_exists(oplayer)) && (point_in_circle(oplayer.x,oplayer.y,x,y,32)) && (!instance_exists(otext))
{
	nearby=true;
	if(keyboard_check_pressed(ord("H")))
	{
		with(instance_create_layer(x,y-32,layer,otext))
		{
			text=other.text;
			length=string_length(text);
		}
		with(ocamera)
		{
			follow=other.id;
		}
	}
}else nearby=false;	