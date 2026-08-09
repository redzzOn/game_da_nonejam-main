// Defines os textos de cada passo
if (passo == 1) {
    texto = "Bem-vindo! [D] Avancar | [ESC] Sair";
	texto_pt ="<1/5>"
}
else if (passo == 2) {
    texto = "segure com o botao esquerdo do mouse para segurar e arrastar os itens";
	texto_pt ="<2/5>"
}
else if (passo == 3) {
    texto = "use a tecla [E] para ativar o modo construcao, cada item da um efeito diferente na bolinha";
	texto_pt ="<3/5>"
}
else if (passo == 4) {
    texto = "os itens moveis estarao na parte superior";
	texto_pt ="<4/5>"
}
else if (passo == 5) {
    texto = "lembrece!!! o [F11] deixa tela cheia ajudando a ter uma melhor vizao";
	texto_pt ="<5/5>"
}
// Teclas
var _avancar = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
var _voltar  = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
var _fechar  = keyboard_check_pressed(vk_escape);

// Ação de Avançar
if (_avancar) {
    if (passo < 5) {
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