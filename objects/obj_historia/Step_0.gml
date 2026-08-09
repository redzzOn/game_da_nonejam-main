// Defines os textos de cada passo
if (passo == 1) {
    texto = "voce eh um dinossauro, solitario e sem amigos"
    if (alarm[0] <= 0) alarm[0] = temp;


}
else if (passo == 2) {
    texto = "voce sempre foi extremamente preguicoso, mas com uma criatividade tremenda"
if (alarm[0] <= 0) alarm[0] = temp;

}
else if (passo == 3) {
    texto = "sua mae a dona Bronta, estava cansada e pediu para voce arrumar teu quarto";
if (alarm[0] <= 0) alarm[0] = temp;

}
else if (passo == 4) {
    texto = "voce queria jogar pingpong, ate que juntando uma coisa com a outra voce tem a melhor ideia da vida";
if (alarm[0] <= 0) alarm[0] = temp;

}
else if (passo == 5) {
    texto = "AGORA VAI!!! se torne um mestre MESA-TENISTA";
if (alarm[0] <= 0) alarm[0] = temp;

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