var halfw = w * 0.5;

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*5),x+halfw+border,y,15,15,false);
draw_sprite(smarker,0,x,y);
draw_set_alpha(1);

drawtext(c_white,ftext,fa_center,fa_top);
draw_text(x,y-h-border,text_current);