key_mute  =	keyboard_check_pressed(ord("M"));

if (mute = 0)
{
	if (keyboard_check_pressed(ord("M")))
	{
		audio_master_gain(0);
		mute = 1
	}
}

if (mute = 1)
{
	if (keyboard_check_pressed(ord("M")))
	{
		audio_master_gain(1);
		mute = 0
	}
}