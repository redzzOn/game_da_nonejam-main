if (!instance_exists(obj_bolinha)) 
{

    room_restart();

}

if (keyboard_check_pressed(vk_f11)) {
    
    window_set_fullscreen(!window_get_fullscreen());
}
if (keyboard_check_pressed(ord("E"))&&global.arrastando = false) {
    global.modo_const = !global.modo_const;
}