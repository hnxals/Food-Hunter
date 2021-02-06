/// @description Follow
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
x = vx + 128;
y = vy + 0;

switch(oCat.takenItem){
	case -1:
		oCarryItemIco.sprite_index = sCarryItemIco;
		break;
	case 0:
		oCarryItemIco.sprite_index = sPumpkin;
		break;
	case 1:
		oCarryItemIco.sprite_index = sPotato;
		break;
	case 2:
		oCarryItemIco.sprite_index = sTomato;
		break;
	case 3:
		oCarryItemIco.sprite_index = sCarrot;
		break;
}
