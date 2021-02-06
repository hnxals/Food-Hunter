/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oController3)){ //Level 3
	if(place_meeting(x,y,oCat)){
		if(keyboard_check_pressed(vk_space)){
			if(oCat.takenItem == -1){
				oCat.takenItem = itemNo;
				audio_play_sound(audio_Pick, 10, false);
				instance_destroy();
			}
			else{
				var temp = oCat.takenItem;
				oCat.takenItem = itemNo;
				audio_play_sound(audio_Pick, 10, false);
				instance_destroy();
				switch(temp){
					case 0:
						instance_create_layer(x,y,"Instances",oPumpkin);
						break;
					case 1:
						instance_create_layer(x,y,"Instances",oPotato);
						break;
					case 2:
						instance_create_layer(x,y,"Instances",oTomato);
						break;
					case 3:
						instance_create_layer(x,y,"Instances",oCarrot);
						break;
				}
			}
		}
	}
}