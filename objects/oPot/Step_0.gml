/// @description Insert description here

if(place_meeting(x,y,oCat)){
	oInPot.visible = true;
	oPotSlot01.visible = true;
	oPotSlot02.visible = true;
	
	if(keyboard_check_pressed(vk_space)){
		if(oCat.takenItem == -1 && slot02 != -1){
			oCat.takenItem = slot02;
			slot02 = -1;
			audio_play_sound(audio_Pick, 10, false);
		}
		else if(oCat.takenItem == -1 && slot01 != -1){
			oCat.takenItem = slot01;
			slot01 = -1;
			audio_play_sound(audio_Pick, 10, false);
		}
		else if(oCat.takenItem != -1 && slot01 == -1){
			slot01 = oCat.takenItem;
			oCat.takenItem = -1;
			audio_play_sound(audio_EnterPot, 10, false);
		}
		else if(oCat.takenItem != -1 && slot02 == -1){
			slot02 = oCat.takenItem;
			oCat.takenItem = -1;
			audio_play_sound(audio_EnterPot, 10, false);
		}
	}
}
else{
	oInPot.visible = false;
	oPotSlot01.visible = false;
	oPotSlot02.visible = false;
}
