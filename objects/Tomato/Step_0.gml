vsp = vsp + grv;					//adds grv to your vsp. Contantly accelerating

image_speed = 0;



if (place_meeting(x,y+vsp,oWall))
{
	image_index = 1;
	vsp = 0;
}
y = y + vsp;