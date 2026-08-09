if (!mudou_de_sala) {
    // A barra (rede) vai crescendo da esquerda para a direita
    progresso += velocidade;
    
    // Quando cobrir a tela inteira
    if (progresso >= largura_tela) {
        progresso = largura_tela;
        mudou_de_sala = true;
        room_goto(sala_destino);
    }
} else {
    // Na nova sala, a barra diminui revelando o mapa
    progresso -= velocidade;
    
    // Quando sumir totalmente da tela
    if (progresso <= 0) {
        instance_destroy();
    }
}