if (mostrar_icone) {
    // Pega a posição da câmera
    var cam_x = camera_get_view_x(view_camera[VIEW]);
    var cam_y = camera_get_view_y(view_camera[VIEW]);
    
    // Calcula a posição do objeto
    var centro_x = (x - cam_x) * VIEW_SCALE;
    var centro_y = (y - cam_y) * VIEW_SCALE;

    // Desenha o ícone
	if(global.controleConectado){
		draw_sprite(spr_xbox_a, -1, centro_x - (sprite_get_width(spr_xbox_a) /14), centro_y - 32);
	} else{
		draw_sprite(spr_teclado_e, -1, centro_x - (sprite_get_width(spr_teclado_e) / 14), centro_y - 32);
	}
	// Desenha o texto
	draw_set_font(ft_interacoes);
    draw_text(centro_x - (string_width(nome) / 2), centro_y - 10, nome);
	
	// Resetenado a fonte
	draw_set_color(c_white); 
    draw_set_font(-1); 
}
