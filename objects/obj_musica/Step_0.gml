if (room == rm_menu || room == rm_tutorial)
{
    if (!jastatocando_menu)
    {
        audio_stop_sound(snd_emgame);
        audio_play_sound(snd_menu_tutorial, 1, true);

        jastatocando_menu = true;
        jastatocando_game = false;
    }
}
else
{
    if (!jastatocando_game)
    {
        audio_stop_sound(snd_menu_tutorial);
        audio_play_sound(snd_emgame, 1, true);

        jastatocando_game = true;
        jastatocando_menu = false;
    }
}