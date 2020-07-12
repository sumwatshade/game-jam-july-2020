/*
 * If game paused, skip step
 */
if(global.pause || global.gameover) return;

if (place_meeting (x, y, oPlayer) && !collected)
{
	//audio_play_sound(snd_pickup_coin, 0, 0);
	//oPlayer.coins++;
	audio_play_sound(Pickup_Note, 10, false)
	image_index = 0;
	collected = true;	
}

if (collected)
{
	sprite_index = sMusic_note_gone;
	
	if (floor(image_index) >= image_number - 1)
	{
		noteScore.points+=1;
		instance_destroy();
	}
}

y = anchorY + sin(timer*frequency)*amplitude;
timer++;