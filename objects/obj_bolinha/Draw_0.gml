// 1. Calcula o valor que oscila entre -1 e 1
var _wave = sin(current_time * 0.009); 

// 2. Define a escala com base na colisão
if(colidiu == false){

escala_x = 1 + (_wave * 0.23);
escala_y = 1 + (_wave * 0.23);
}
// Desenha a imagem deformada SEM alterar a máscara de colisão real do objeto
draw_sprite_ext(
    sprite_index,  
    image_index,   
    x,             
    y,          
    escala_x,    
    escala_y,     
    image_angle,   
    c_white,       
    1              
);