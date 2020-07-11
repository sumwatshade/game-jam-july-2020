/*
 * If game paused, skip step
 */
if(global.pause) return;

if (place_meeting (x, y, oPlayer) && !collected)
{
	//audio_play_sound(snd_pickup_coin, 0, 0);
	//oPlayer.coins++;
	image_index = 0;
	collected = true;	
}

if (collected)
{
	//sprite_index = s_coin_effect;
	
	if (floor(image_index) >= image_number - 1)
	{
		instance_destroy();
	}
}