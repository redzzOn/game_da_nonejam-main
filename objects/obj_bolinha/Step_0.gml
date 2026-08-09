
if (colidiu) {

    image_xscale = 0.5; 
    image_yscale = 1.4; 

    colidiu = false; 
}

image_xscale = lerp(image_xscale, 1, damp);
image_yscale = lerp(image_yscale, 1, damp)

if (speed > 0) {
    image_angle = direction - 90;
	if (alarm[0] < 0) {
		audio_sound_gain(snd_bolinha_sond, 0.6, 0);
        audio_play_sound(snd_bolinha_sond, 1, false);
        alarm[0] = 45;
    }
}

if global.modo_const = true{
x = x_inicial
y = y_inicial
hspeed = 0
vspeed = 0
vel_mudavel_y = -6
vel_mudavel_x = 0
}else{
hspeed = vel_mudavel_x;
vspeed = vel_mudavel_y;
}

// se o  objeto passou dos limites da tela explosion fodastica
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

