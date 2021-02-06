/// @description Insert description here
randomise();
flagWin = false;
target = array_create(2)
target[0] = irandom(3);
target[1] = irandom(3);
while(target[1] == target[0]){
	target[1] = irandom(3);
}
switch(target[0]){
	case 0:
		oSign01.sprite_index = sPumpkin;
		break;
	case 1:
		oSign01.sprite_index = sPotato;
		break;
	case 2:
		oSign01.sprite_index = sTomato;
		break;
	case 3:
		oSign01.sprite_index = sCarrot;
		break;
}
switch(target[1]){
	case 0:
		oSign02.sprite_index = sPumpkin;
		break;
	case 1:
		oSign02.sprite_index = sPotato;
		break;
	case 2:
		oSign02.sprite_index = sTomato;
		break;
	case 3:
		oSign02.sprite_index = sCarrot;
		break;
}
audio_play_sound(audio_BGM, 10,true);