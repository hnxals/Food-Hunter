/// @description Insert description here
// You can write your code in this editor
switch(target[numNow]){
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
if(flagWin){
	room_goto_next();
}