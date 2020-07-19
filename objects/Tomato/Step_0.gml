/*
 * If game paused, skip step
 */
if(global.pause || global.gameover) return;

vsp = vsp + grv;					//adds grv to your vsp. Contantly accelerating

image_speed = 0;


if (place_meeting(x,y+vsp,oWall))
{
	can_do_damage = 0;
	image_index = 1;
	vsp = 0;
	if (timer = 1)
	{
	alarm[0] = 500;
	timer = 0
	}
}
y = y + vsp;

if (launch == 1) && (image_index == 0)
{
	direction = point_direction(x,y,oPlayer.x, oPlayer.y)
	speed = -20;
	launch = 0;
}