// DESENHA O CURSOR CUSTOMIZADO NA CAMADA DE INTERFACE (GUI)
window_set_cursor(cr_none)   
if (global.arrastando == true) {
    draw_sprite_ext(spr_mouse_segurando, 0, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0) - 32, 1.5, 1.5, 0, c_white, 1);
} else {
    draw_sprite_ext(spr_mouse, 0, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 1.5, 1.5, 0, c_white, 1);
}
