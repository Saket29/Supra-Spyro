with(ogun) instance_destroy();
instance_change(oplayerD,true);
direction=point_direction(other.x,other.y,x,y);
hsp=lengthdir_x(2,direction);
vsp=lengthdir_y(1,direction)-2;
if(sign(hsp)!=0) image_xscale=sign(hsp); 

global.kills -= global.killsthisroom;