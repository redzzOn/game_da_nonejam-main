if (!mudou_de_sala) {
   
    progresso += velocidade;
    

    if (progresso >= largura_tela) {
        progresso = largura_tela;
        mudou_de_sala = true;
        room_goto(sala_destino);
    }
} else {
    
    progresso -= velocidade;
    
   
    if (progresso <= 0) {
        instance_destroy();
    }
}