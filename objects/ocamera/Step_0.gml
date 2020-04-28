if(instance_exists(follow))
{
	xto=follow.x;
	yto=follow.y;
	if((follow).object_index == oplayerD)
	{
		x=xto;
		y=yto;
	}
}


x+= (xto-x)/50;
y+= (yto-y)/50;

x=clamp(x,view_w_half,room_width-view_w_half);
y=clamp(y,view_h_half,room_height-view_h_half);

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if(layer_exists(mountainid))
{
	layer_x(mountainid,x/2);
}

if(layer_exists(treeid))
{
	layer_x(treeid,x/4);
}