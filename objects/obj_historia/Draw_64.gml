draw_set_font(fnt_historia); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Posição no centro da tela
var _x = display_get_gui_width() / 2;
var _y = display_get_gui_height() / 2;

// Largura máxima que o texto pode ocupar )
var _largura_maxima = display_get_gui_width() * 0.8;

// Altura de separação entre as linhas (em pixels)
var _separacao_linhas = 55; 

draw_set_color(c_white);

// Desenha o texto com quebra de linha automática
draw_text_ext(_x, _y, texto , _separacao_linhas, _largura_maxima);