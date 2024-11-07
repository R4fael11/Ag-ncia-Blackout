var guil = display_get_gui_width();
var guia = display_get_gui_height();

var margemV = -15;
var margemH = -80;

var larguraObjeto =  sprite_get_width(spr_controle_conectado);
var alturaObjeto = sprite_get_height(spr_controle_conectado);

var xx = guil - larguraObjeto - margemH;
var yy = guia - alturaObjeto - margemV;

draw_sprite(spr_controle_conectado, 0, xx, yy);