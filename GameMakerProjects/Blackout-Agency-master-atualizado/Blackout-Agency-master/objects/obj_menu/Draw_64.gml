//------------------------------------ Desenhando o menu ------------------------------------------

// Pegando os itens do menu
var menuItens = array_length(menu);

// Definindo a fonte
draw_set_font(ft_menu); // tem que resetar ele depois porque ele é global

// Dados do texto
var alt = display_get_gui_height();
var altMenu = (string_height("I") + 16) * menuItens;
draw_set_valign(2); // em baixo
draw_set_halign(0); // na esquerda
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Desenhando as opções
for (var i = 0; i < menuItens; i++) {
    var cor = #d1d1d1;
    var margin = 0;
    var texto = menu[i];

    // Se o item atual é o selecionado
    if (select == i) {
        cor = #FFFFFF;
        margin = 20;
    }

    // Coordenadas ajustadas para incluir a margem
    var x_texto = 50 + margin;
    var y_texto = (alt - altMenu) - 50 + i * 50;

    // Verificando se o mouse está passando por cima (ajustando colisão)
    var string_w = string_width(texto);
    var string_h = string_height(texto);
    if (point_in_rectangle(mx, my, x_texto, y_texto - string_h, x_texto + string_w, y_texto + string_h)) {
        select = i; // Atualiza 'select' para o índice do item sobre o qual o mouse está
        mouseSobreItem = true; // O mouse está sobre um item
    } else {
		mouseSobreItem = false;
	}
    // Desenhando o item com a margem aplicada
    draw_text_color(x_texto, y_texto, texto, cor, cor, cor, cor, 1);
}

// Resetando draw_set
draw_set_font(-1);
draw_set_valign(-1);
draw_set_halign(-1);