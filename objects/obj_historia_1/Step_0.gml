// Defines os textos de cada passo
if (passo == 1) {
    texto = "Voce conseguiu se tornou o melhor mesa-tenista"
 


}

// Teclas
var _avancar = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
var _voltar  = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
var _fechar  = keyboard_check_pressed(vk_escape);

// Ação de Avançar
if (_avancar) {
    if (passo < 1) {
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