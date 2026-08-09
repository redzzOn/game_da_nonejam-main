// Alinha à esquerda no topo
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_menu);

var margem_esquerda = 40;
var pos_x = margem_esquerda;
var pos_y_inicial = 40;
var espacamento = 67; // Espaçamento alterado para 67!

for (var i = 0; i < total_opcoes; i++) {
    var pos_y = pos_y_inicial + (i * espacamento);
    
    if (i == opcao_selecionada) {
        draw_set_colour(c_red);
        draw_text(pos_x, pos_y, "> " + opcoes[i] + " <"); 
    } else {
        draw_set_colour(c_white);
        draw_text(pos_x, pos_y, opcoes[i]);
    }
}

// Reseta o alinhamento
draw_set_halign(fa_left);
draw_set_valign(fa_top);