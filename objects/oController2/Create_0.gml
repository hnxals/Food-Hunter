/// @description Insert description here
// You can write your code in this editor
randomise();
flagWin = false;
countNum = 2;
target = array_create(2)
target[0] = irandom(3);
target[1] = irandom(3);
while(target[1] == target[0]){
	target[1] = irandom(3);
}
numNow = 0;
audio_play_sound(audio_BGM, 10,true);