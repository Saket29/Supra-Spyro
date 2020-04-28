menu_x+=(menu_x_target-menu_x)/menu_speed;

if(menu_control)
{
	if(keyboard_check_pressed(vk_up))
	{
		if(menu_cursor==2)menu_cursor=-1
		menu_cursor++;
		if(menu_cursor>menu_items) menu_cursor=0;
	}

	if(keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if(menu_cursor<0) menu_cursor=menu_items-1;
	}
	
	if(keyboard_check_pressed(vk_enter))
	{
		menu_x_target=gui_width+220;
		menu_committed=menu_cursor;
		menu_control=false;
		audio_play_sound(sndeath,10,false);
	}
}

if(menu_x> gui_width+150) && (menu_committed != -1)
{
	switch(menu_committed)
	{
		case 2: slidetransition(TRANS_MODE.NEXT);break;
		case 1:
		{
			if(!file_exists(SAVEFILE))
			{
				slidetransition(TRANS_MODE.NEXT);
			}
			else
			{
				var file=file_text_open_read(SAVEFILE);
				var target=file_text_read_real(file);
				global.kills=file_text_read_real(file);
				file_text_close(file);
				slidetransition(TRANS_MODE.GOTO,target);
			}
		}
		break;
		case 0:game_end();break;
	}
}