/// @description Insert description here
// You can write your code in this editor
randomise();
flagWin = false;
target = irandom(3); //0 = pumpkin; 1 = potato; 2 = tomato; 3 = carrot;
switch(target){
	case 0:
		oTargetImg.sprite_index = sPumpkin;
		break;
	case 1:
		oTargetImg.sprite_index = sPotato;
		break;
	case 2:
		oTargetImg.sprite_index = sTomato;
		break;
	case 3:
		oTargetImg.sprite_index = sCarrot;
		break;
}
audio_play_sound(audio_BGM, 10,true);