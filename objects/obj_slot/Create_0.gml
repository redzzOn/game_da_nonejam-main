slot_ocupado = false;
item_guardado = noone;

//////// botar os items com function
function colocar_item(novo_item){
    if (slot_ocupado == false){
        slot_ocupado = true;
        item_guardado = novo_item;
        
        ///////// bota no lugar do slot ///////////
        novo_item.x = x;
        novo_item.y = y;
        novo_item.slot_atual = id; // avisa qual o slot certo
        return true; // deu boa
    }
    return false; // deu ruim
}

////// pra tirar dos buraco
function remover_item(){
    if (slot_ocupado == true){
        var item_removido = item_guardado;
        
        slot_ocupado = false; // <-- Adicionado: Libera o slot novamente!
        item_guardado = noone;
        
        return item_removido;
    }
    return noone;
}