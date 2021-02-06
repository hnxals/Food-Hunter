/// @description 
if(facing == 0 && inAir == 0 && oCat.sprite_index != sCatLeftStand){
	oCat.sprite_index = sCatLeftStand;
}
if(facing == 1 && inAir == 0 && oCat.sprite_index != sCatRightStand){
	oCat.sprite_index = sCatRightStand;

}
if(facing == 0 && inAir == 1 && oCat.sprite_index != sCatLeftJump){
	oCat.sprite_index = sCatLeftJump;
}

if(facing == 1 && inAir == 1 && oCat.sprite_index != sCatRightJump){
	oCat.sprite_index = sCatRightJump;
}

// input
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_up);
var canJump = 0;
if( place_meeting(x, y+1, oBlock) ){
	canJump = 1;
}
var left_n1_right_p1; // -1 for left. 1 for right. 0 for no moves on x-axis.
left_n1_right_p1 = key_right - key_left;
if(inAir == 0 && left_n1_right_p1 == -1){
	facing = 0;
	if(inAir == 0 && oCat.sprite_index != sCatLeftWalking){
		oCat.sprite_index = sCatLeftWalking;
	}
}
if(inAir == 0 && left_n1_right_p1 == 1){
	facing = 1;
	if(oCat.sprite_index != sCatRightWalking){
		oCat.sprite_index = sCatRightWalking;
	}
}

//horizontal
var xs = left_n1_right_p1 * WALKSP;
if( place_meeting(x + xs, y, oBlock) ){
	while( !place_meeting(x + left_n1_right_p1, y, oBlock)){
		x = x + left_n1_right_p1;
	}
	xs = 0; // already moved on x
}
x = x + xs;
if( canJump && key_jump ){
	ys = JUMPSP;
	inAir = 1;
	if(facing == 0 && inAir == 1 && oCat.sprite_index != sCatLeftJump){
		oCat.sprite_index = sCatLeftJump;
	}
	if(facing == 1 && inAir == 1 && oCat.sprite_index != sCatRightJump){
		oCat.sprite_index = sCatRightJump;
	}
}


//vertical
ys = ys + gr;
if( place_meeting(x, y + ys, oBlock) ){
	while( !place_meeting(x, y + sign(ys), oBlock)){
		y = y + sign(ys);
	}
	ys = 0; // already moved on y
	inAir = 0;
}
y = y + ys;

if(oCat.sprite_index == sCatRightJump || oCat.sprite_index == sCatLeftJump){
	if(!audio_is_playing(aJump)){
		aJump = audio_play_sound(audio_Jumping, 10, true);
	}
	if(audio_is_playing(aStand)){
		audio_stop_sound(aStand);
	}
	if(audio_is_playing(aWalk)){
		audio_stop_sound(aWalk);
	}
}
else if(oCat.sprite_index == sCatRightStand || oCat.sprite_index == sCatLeftStand){
	if(!audio_is_playing(aStand)){
		aStand = audio_play_sound(audio_Stand, 10, true);
	}
	if(audio_is_playing(aJump)){
		audio_stop_sound(aJump);
	}
	if(audio_is_playing(aWalk)){
		audio_stop_sound(aWalk);
	}
}
else if(oCat.sprite_index == sCatLeftWalking || oCat.sprite_index == sCatRightWalking){
	if(!audio_is_playing(aWalk)){
		aWalk = audio_play_sound(audio_Walking, 10, true);
	}
	if(audio_is_playing(aJump)){
		audio_stop_sound(aJump);
	}
	if(audio_is_playing(aStand)){
		audio_stop_sound(aStand);
	}
}

