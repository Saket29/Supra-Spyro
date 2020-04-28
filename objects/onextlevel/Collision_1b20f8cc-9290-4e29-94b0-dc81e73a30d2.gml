with(oplayer)
{
	if(hascontrol)
	{
		hascontrol=false;
		slidetransition(TRANS_MODE.GOTO,other.target);
	}
}