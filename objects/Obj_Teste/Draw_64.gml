// draw_sprite_ext(nome da sprite, x, localização horizontal , localização vertical )
var xx = 30

repeat(vida){
	draw_sprite_ext(Sprite_Life,0,xx,30,0.2,0.2,image_angle,c_white,1)
	xx+= 50
}

draw_x = 8;
draw_y = 8;

draw_set_font(FontBluePen);

var w_gui = display_get_gui_width()

draw_sprite(Spr_Diamond,0, w_gui - draw_x,draw_y + 7);

draw_set_halign(fa_right);
draw_text( w_gui - draw_x*2, draw_y, diamantes);
draw_set_halign(fa_left)