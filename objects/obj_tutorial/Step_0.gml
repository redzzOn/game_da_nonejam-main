// Defines os textos de cada passo
if (passo == 1) {
    texto = "Bem-vindo! [D] Avancar | [ESC] Sair";
}
else if (passo == 2) {
    texto = "segure com o botao esquerdo do mouse para segurar e arrastar os itens";
}
else if (passo == 3) {
    texto = "use a tecla [E] para ativar o modo construcao, cada item da um efeito diferente na bolinha";
}

// Teclas
var _avancar = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
var _voltar  = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
var _fechar  = keyboard_check_pressed(vk_escape);

// Ação de Avançar
if (_avancar) {
    if (passo < 3) {
        passo += 1;
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

// Ação de Fechar a qualquer momento
if (_fechar) {
instance_destroy()
}
if (keyboard_check_pressed(vk_f11)) {
    
    window_set_fullscreen(!window_get_fullscreen());
}