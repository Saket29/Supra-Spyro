
if(room!=rmenu) && (instance_exists(oplayer)) && (global.kills>0)
{
	killtextscale = max(killtextscale * 0.95,1);
	drawtext(c_black,fmenu,fa_right,fa_top);
	draw_text_transformed(RES_W-8,12,string(global.kills)+" Score",killtextscale,killtextscale,0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10,10,string(global.kills)+" Score",killtextscale,killtextscale,0);
}