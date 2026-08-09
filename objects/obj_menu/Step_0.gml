// 1. CAPTURA DO TECLADO E MOUSE
var cima = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var baixo = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var mouse_clicou = mouse_check_button_pressed(mb_left);

var confirmar_teclado = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
var confirmar = confirmar_teclado;


// 2. LÓGICA DE NAVEGAÇÃO COM O TECLADO
if (cima) {
    opcao_selecionada--;
    if (opcao_selecionada < 0) {
        opcao_selecionada = total_opcoes - 1;
    }
}

if (baixo) {
    opcao_selecionada++;
    if (opcao_selecionada >= total_opcoes) {
        opcao_selecionada = 0;
		
		
    }
}


// 3. LÓGICA DE DETECÇÃO DO MOUSE (CANTO SUPERIOR ESQUERDO)
var margem_esquerda = 40; // Distância da borda esquerda
var pos_x = margem_esquerda;
var pos_y_inicial = 40;
var espacamento = 67; // Espaçamento alterado para 67!

var gui_mouse_x = device_mouse_x_to_gui(0);
var gui_mouse_y = device_mouse_y_to_gui(0);

draw_set_font(fnt_menu);

for (var i = 0; i < total_opcoes; i++) {
    var pos_y = pos_y_inicial + (i * espacamento);
	
    
    var largura_texto = string_width(opcoes[i]) + 40;
    var altura_texto = string_height(opcoes[i]);
    
    // Caixa de colisão para texto alinhado à esquerda (de pos_x até pos_x + largura)
    if (point_in_rectangle(gui_mouse_x, gui_mouse_y, pos_x, pos_y, pos_x + largura_texto, pos_y + altura_texto)) {
        opcao_selecionada = i;
        
        if (mouse_clicou) {
            confirmar = true;
        }
    }
}


// 4. CONFIRMAÇÃO E TRANSIÇÃO
if (confirmar) {
    switch (opcao_selecionada) {
        case 0: // Jogar
            if (!instance_exists(obj_transicao_pingpong)) {
                var t = instance_create_layer(0, 0, "Instances", obj_transicao_pingpong);
                t.sala_destino = Room1;
            }
            break;
            
        case 1: // Tutorial
            if (!instance_exists(obj_transicao_pingpong)) {
                var t = instance_create_layer(0, 0, "Instances", obj_transicao_pingpong);
                t.sala_destino = rm_tutorial;
            }
            break;
            
        case 2: // Sair
            game_end();
            break;
    }
}
if (keyboard_check_pressed(vk_f11)) {
    
    window_set_fullscreen(!window_get_fullscreen());
}