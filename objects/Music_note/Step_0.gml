/*
 * If game paused, skip step
 */
if(global.pause || global.gameover) return;

if (place_meeting (x, y, oPlayer) && !collected)
{
	//audio_play_sound(snd_pickup_coin, 0, 0);
	//oPlayer.coins++;
	image_index = 0;
	collected = true;	
}

if (collected)
{
	sprite_index = sMusic_note_gone;
	
	if (floor(image_index) >= image_number - 1)
	{
		noteScore.points+=1;
		if (noteScore.points mod 2 = 0) {
			oAudience.cheering = 1;
		}
		//oAudience.cheering = 1;
		instance_destroy();
	}
}

y = anchorY + sin(timer*frequency)*amplitude;
timer++;