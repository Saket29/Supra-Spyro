letters+=spd;
text_current=string_copy(text,1,floor(letters));

draw_set_font(ftext);
if(h==0) h=string_height(text);
w=string_width(text_current);

if(letters>=length) && (keyboard_check_pressed(ord("H")))
{
	instance_destroy();
	with(ocamera) follow=oplayer;
}