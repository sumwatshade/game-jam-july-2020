/// @description evaluate death
// You can write your code in this editor
if(hp <= 0) {
	global.gameover = 1
	instance_destroy()
}

if(cant_take_damage > 0) {
	cant_take_damage--;
} else if(cant_take_damage == 0) {
	flash = 0;
}