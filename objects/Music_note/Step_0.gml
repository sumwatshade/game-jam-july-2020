/*
 * If game paused, skip step
 */
if(global.pause || global.gameover) return;

if (place_meeting (x, y, oPlayer) && !collected)
{
	//audio_play_sound(snd_pickup_coin, 0, 0);
	//oPlayer.coins++;
	audio_play_sound(Pickup_Note, 10, false)
	Note_spawner.note_pitch += 0.05;
	image_index = 0;
	collected = true;	
}

if (collected)
{
	sprite_index = sMusic_note_gone;
	
	if (floor(image_index) >= image_number - 1)
	{
		global.points += 1;
		// audience cheers every {cheerInterval} points
		if (global.points mod oAudience.cheerInterval = 0) {
			oAudience.cheering = 1;
		}
		instance_destroy();
	}
}

y = anchorY + sin(timer*frequency)*amplitude;
timer++;