//Player inputs
key_left		  =	keyboard_check(vk_left)			 || keyboard_check(ord("A"));			// If left arrow key or A is held
key_right		  =	keyboard_check(vk_right)		 || keyboard_check(ord("D"));			// If Right arrow key or D is held
key_left_pressed  =	keyboard_check_pressed(vk_left)	 || keyboard_check_pressed(ord("A"));	// If left arrow key or A is pressed
key_right_pressed = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));	// If right arrow key or D is pressed
key_up_pressed	  =	keyboard_check_pressed(vk_up)	 || keyboard_check_pressed(ord("W"));	// If up arrow key or W is pressed
key_down_pressed  =	keyboard_check_pressed(vk_down)  || keyboard_check_pressed(ord("S"));	// If down arrow key or S is pressed
key_jump		  =	keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);	// If space or Enter is pressed
key_jump_held	  =	keyboard_check(vk_space)		 || keyboard_check(vk_enter);			// If space or Enter is held
key_cheat_pressed = keyboard_check_pressed(ord("P"));										//If "P" is pressed
key_test		  = keyboard_check(ord("O"));

/*
 * If game paused, skip step
 */
if(global.pause || global.gameover) return;

//Cheat and test modes
if key_cheat_pressed			//If cheat key is pressed
{
	hp = hp_max;
	cancel_high_score = 1;
}

if (key_test) {
	testing = 1		//If test key is pressed	
} else { 
	testing = 0
}

//Horizontal Movement
var move = key_right-key_left;					//Just right returns 1, just left returns -1, both or none returns 0. In GMS positive is right and negative is left


//Horizontal acceleration coast

// Set a variable for deceleration based on in air or on ground
curr_decel = hsp_decel
if(!on_floor)
{
	curr_decel *= hsp_decel_air_multiply;
}

// Switch will separate between left (-1), right (1) and no motion (0).
switch(move)
{
	// Moving to the left
	case -1:
	{
		if(move == -sign(hsp))
		{
			dir_looking = -1*dir_looking;
			hsp -= curr_decel *hsp_decel_turn_multiply;
		}
		else
		{
			hsp = max(hsp - move_speed, -max_hsp);
		}
		break;
	}
	// No move; Slow down
	case 0:
	{
		hsp -= curr_decel*sign(hsp);
		if(abs(hsp) < move_speed)
		{
			hsp = 0;
		}
		break;
	}
	// Moving to the right
	case 1:
	{
		if(move == -sign(hsp))
		{
			dir_looking = -1*dir_looking;
			hsp += curr_decel * hsp_decel_turn_multiply;
		}
		else
		{
			hsp = min(hsp + move_speed, max_hsp);
		}
		break;
	}
}

if(move == 0)
	dir_looking = sign(hsp) == 0 ? dir_looking : sign(hsp)
else
	dir_looking = sign(move);





//Vertical Movement 
vsp = vsp + grv;					//adds grv to your vsp. Contantly accelerating


//on floor detection
if (place_meeting(x, y+1, oWall)) on_floor = 1; else on_floor = 0;					//If on floor set 'on_floor to 1. Otherwise its 0

if (on_floor = 1) && (key_jump)
{
	vsp = jump_power;
}

//Jumping
//can_jump -= 1;
//if (can_jump > 0) && (key_jump)					//If floor you are on the floor and you press jump
//{
//	vsp = jump_power;
//	can_jump = 0;
//}

if (vsp < 0) && (!key_jump_held) vsp = max(vsp,jump_power*vsp_decel) //variable jump its touchy though 

//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (vsp < max_vsp) vsp += grv;

//Animation

if(on_floor != 1)
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	//can_jump = coyote_time;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sSax_man_run;
		//sprite_index = sPlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

//recoil for collision 
if (recoil = 1)
{
	sprite_index = sPlayer_recoil;
	vsp = - 30;
	hsp = -10*sign(dir_looking);
	recoil = 0;
}
	
	
	
	