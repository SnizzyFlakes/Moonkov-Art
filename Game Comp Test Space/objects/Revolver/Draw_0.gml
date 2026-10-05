/// @description Insert description here
// You can write your code in this editor
if RevControl.displaySelf{
	draw_self();
	draw_text(0,10,RevControl.spinAmount);
	draw_text(0,25,RevControl.reloadOffset);
	draw_text(0,type * 50,y);
	draw_text(100,type * 50,x);
	draw_text(0,type * 50 + 25,radius);
}