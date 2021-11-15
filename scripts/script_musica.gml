///Codigo_Temas
if !audio_is_playing(derrota_tema){
if place_meeting (x,y,personaje) and (!audio_is_playing(tema) or audio_is_paused(tema)) and global.vida>0 {
audio_pause_all();
audio_resume_sound(tema);
if !audio_is_playing(tema){audio_stop_all();audio_play_sound(tema, 2, true);}
global.temax=tema;
global.tema=tema;
}
}


