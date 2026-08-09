var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

var _centro_x = _gui_w / 2;
var _centro_y = _gui_h / 2;

// Raio máximo suficiente para cobrir os cantos da tela
var _raio_max = point_distance(0, 0, _centro_x, _centro_y) * 1.5;

// Inverte o progresso: quando progresso = 0 (aberto), raio = raio_max.
// Quando progresso = largura_tela (fechado), raio = 0.
var _fator = 1 - (progresso / largura_tela);
var _raio_atual = _raio_max * _fator;

draw_set_color(c_black);

var _passo_angulo = 360 / numero_pontas;

draw_primitive_begin(pr_trianglestrip);

for (var i = 0; i <= numero_pontas; i++) {
    var _ang = i * _passo_angulo;
    
    // Ponto interno (buraco que se fecha no centro)
    var _px = _centro_x + lengthdir_x(_raio_atual, _ang);
    var _py = _centro_y + lengthdir_y(_raio_atual, _ang);
    
    // Ponto externo (cobre a borda inteira da tela)
    var _ex = _centro_x + lengthdir_x(_raio_max * 2, _ang);
    var _ey = _centro_y + lengthdir_y(_raio_max * 2, _ang);
    
    draw_vertex(_px, _py);
    draw_vertex(_ex, _ey);
}

draw_primitive_end();