/// @description Insert description here
// You can write your code in this editor
if(other.can_do_damage && cant_take_damage == 0) 
{
	hp -= other.collision_damage;
	cant_take_damage = 60
	flash = 60;
	recoil = other.recoil
}
