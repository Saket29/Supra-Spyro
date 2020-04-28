layer_x("title",min(layer_get_x("title")+1.1,RES_W));


letters += spd;
text=string_copy(endtext[currentline],1,floor(letters));

if(letters >= length)
{
	if(currentline +1 == array_length_1d(endtext))
	{
		slidetransition(TRANS_MODE.RESTART);
	}
	else
	{
		currentline++;
		letters=0;
		length=string_length(endtext[currentline]);
	}
	
}