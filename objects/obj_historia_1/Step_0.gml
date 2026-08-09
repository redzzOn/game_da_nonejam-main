// Defines os textos de cada passo
if (passo == 1) {
    texto = "Voce conseguiu se tornou O MELHOR mesa-tenista"
}else if (passo == 2) {
    texto = "jogo desenvolvido pelo Redzz, lembre de deixar aquela notinha alta ;)"
}else if (passo == 3) {
    texto = "esse jogo deu muito trabalho para fazer, ainda mais sem equipe, tentei ao maximo me diferenciar do basico, estudei arte, musica e muita mais muita programacao"
}else if (passo == 4) {
    texto = "aproveitei todo o caminho, os estudos e os amigos, foi extremamente divertido estar aqui, independentemente do resultado serei sempre grato"
}else if (passo == 5) {
    texto = "VALEU, por tudo... e todos."
}


// Teclas
var _avancar = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
var _voltar  = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
var _fechar  = keyboard_check_pressed(vk_escape);

// Ação de Avançar
if (_avancar) {
    if (passo < 5) {
        passo += 1;
	 alarm[0] = temp;

		
    } else {
        instance_destroy(); // Fecha ao concluir o último passo
    }
}

// Ação de Voltar
if (_voltar) {
    if (passo > 1) {
        passo -= 1;
    }
}

if (keyboard_check_pressed(vk_f11)) {
    
    window_set_fullscreen(!window_get_fullscreen());
}