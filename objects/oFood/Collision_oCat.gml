/// @description 
if(instance_exists(oController)){ //Level 1
	if(oController.target == itemNo)
	{
		oController.flagWin = true;
	}
	else{
		if(!audio_is_playing(audioNot)){
			audioNot = audio_play_sound(audio_Not, 10, false);
		}
		instance_create_layer(x, y - 128, "Instances", oInfo);
	}
}
else if(instance_exists(oController2)){ //Level 2
	if(oController2.target[oController2.numNow] == itemNo)
	{
		if(oController2.countNum > 0){ oController2.countNum -= 1;}
		if(oController2.numNow < 1){ oController2.numNow += 1;}
		instance_destroy();
	}
	else{
		if(!audio_is_playing(audioNot)){
			audioNot = audio_play_sound(audio_Not, 10, false);
		}
		instance_create_layer(x, y - 128, "Instances", oInfo);
	}
	if(oController2.countNum == 0){
		oController2.flagWin = true;
	}
}
