if (global.modo_const == true) {

    // 1. Início do Arraste
    if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
        sendo_arrastado = true;
        global.arrastando = true;
        
        // Se o item estava em um slot, desocupa usando a função
        if (slot_atual != noone) {
            slot_atual.remover_item();
            slot_atual = noone;
        }
    }

    // 2. Durante e Fim do Arraste
    if (sendo_arrastado) {
        x = mouse_x;
        y = mouse_y;
        
        // Quando solta o botão do mouse
        if (mouse_check_button_released(mb_left)) {
            sendo_arrastado = false;
            global.arrastando = false;
            
            // Busca o slot mais próximo do cursor
            var slot_proximo = instance_nearest(mouse_x, mouse_y, obj_slot);
            var raio_encaixe = 40; // Distância em pixels para aceitar o item (ajuste se precisar)
            
            var encaixou = false;
            
            // Verifica se achou um slot próximo e se está dentro da distância tolerada
            if (slot_proximo != noone && point_distance(mouse_x, mouse_y, slot_proximo.x, slot_proximo.y) <= raio_encaixe) {
                // Tenta colocar o item usando a função do slot!
                if (slot_proximo.colocar_item(id)) {
                    encaixou = true;
                }
            }
            
            // Se não encontrou slot ou o slot já estava ocupado, volta para o início
            if (!encaixou) {
                x = x_inicial;
                y = y_inicial;
            }
        }
    }
}
if x > meiodatela_x {
image_xscale = tamanhox *-1
}else{
image_xscale = tamanhox
}