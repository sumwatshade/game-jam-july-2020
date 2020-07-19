
if(global.pause || global.gameover) { return; }

if(other.can_do_damage && cant_take_damage == 0) 
{
	hp -= other.collision_damage;
	cant_take_damage = 60
	flash = 60;
	recoil = other.recoil
	death_sound = irandom_range(1, 6)
	if death_sound = 1 audio_play_sound(Hit_sax_1, 10, false)
	if death_sound = 2 audio_play_sound(Hit_sax_2, 10, false)
	if death_sound = 3 audio_play_sound(Hit_sax_3, 10, false)
	if death_sound = 4 audio_play_sound(Hit_sax_4, 10, false)
	if death_sound = 5 audio_play_sound(Hit_sax_5, 10, false)
	if death_sound = 6 audio_play_sound(Hit_sax_6, 10, false)
}
