if(global.pause || global.gameover) {
	image_speed = 0;
	return;
}

x = x - hsp
image_speed = 1


if (launch == 1)
{
	direction = -point_direction(x,y,oPlayer.x, oPlayer.y)
	speed = 40
}