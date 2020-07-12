/// @description create bobbing motion while cheering
// You can write your code in this editor

if(global.pause || global.gameover) return;

//if (cheering) {
//	timer = cheerTime + 1;
//	cheering = 0;
//	frequency *= cheerFrequencyRampFactor
//	y = anchorY + sin(timer*frequency)*amplitude;
//}

//if (timer > 0 || y > anchorY) {
//	y = anchorY + sin(timer*frequency)*amplitude;
//	timer--;
//}

y = anchorY + sin(timer*frequency)*amplitude;
timer++