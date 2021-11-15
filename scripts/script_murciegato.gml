if global.pause{exit}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_font(font0);

presionado=keyboard_check_pressed(ord('E')) or gamepad_button_check_pressed(0, gp_face2) or mouse_check_button_pressed(mb_left)
pulsado=gamepad_button_check(0, gp_face2) or keyboard_check(ord('E'))
iniciador=((gamepad_button_check_pressed(0, gp_shoulderrb) or gamepad_button_check_pressed(0, gp_face3)) and palanqueado=true) or mouse_check_button_pressed(mb_left)
script_opciones();
if (!place_meeting(personaje.x,personaje.y,checkpoint) and !place_meeting(personaje.x,personaje.y,escalera) and !place_meeting(personaje.x,personaje.y,puerta) and (global.item_ataque=-1 or global.coli=true)) and global.dialog=false
{
if (iniciador=true or global.coli=true) and presz=true and finalizado=true
{
    if finalizado=true{audio_play_sound(f_pausa,0,0);}
    i=0;
    ip=i;
    finalizado=false;
    presz=false;
    pos=1;
    global.pause2 = true;
    nocol=false;
    alpha=0;
    global.coli=false;
    global.item_ataque=-1;
    global.dialogm=true;
}
if (presionado=true or global.coli=true) and presz=true
{
//    if finalizado=true{audio_play_sound(f_pausa,0,0);}
    i=i+1;
    ip=i;
    finalizado=false;
    presz=false;
    pos=1;
//    global.pause2 = true;
//    nocol=false;
//    alpha=0;
//    global.coli=false;
//    global.item_ataque=-1;
//    global.dialogm=true;
}
if i=lineas[conversa] and finalizado=false
{
    i=-1;
    finalizado=true;
    global.pause2 = false;
    conversa=conversa+1;
    if conversa=nconver{conversa=conversa-1}
    j=0;
    for (raconver=0;raconver<conversa;raconver+=1)
    {
        j=j+lineas[raconver]
    }
    presz=true;
    audio_play_sound(f_despausa,0,0);
    global.dialogm=false;
    global.item_ataque=global.last_item;
}
if finalizado=false
{
    draw_sprite_ext(Dialogos,0,view_xview+view_wview/2,view_yview+view_hview/2,1,1,0, c_white,1)
    textmaq(view_xview+view_wview/2,view_yview+view_hview/2,string(dialogo[i+j]),6*3,161*3)
    draw_text(view_xview+view_wview/2-155,view_yview+view_hview/2-39,"Murciegato")
    draw_sprite(sprite_dialog_ima,0,view_xview+view_wview*1/4,view_yview+view_hview*1/4)
    framex=framex+1/6
    if framex>2{framex=0}
    draw_sprite(sprite_murciegato,framex,view_xview+view_wview*1/4,view_yview+view_hview*1/4)
    framey=framey+aumen*1/6
    if framey=2 or framey=0{aumen=-aumen}
    draw_sprite_ext(Save_A, global.teclado,view_xview+view_wview/2+230,view_yview+view_hview/2+32, 0.9+framey/10, 0.9+framey/10, 0, c_white,1);
}
else{i=-1;finalizado=true;presz=true;}


}

//show_debug_message(string(i)+"-----"+string(finalizado));

//if finalizado=true and global.item_ataque=-1 and global.dialog=false{
//alpha=clamp(alpha,0,1)
//draw_sprite_ext(Save_A, global.teclado, murciegato_personaje.x, murciegato_personaje.y-32, 1, 1, 0, c_white,alpha);
//if place_meeting(x,y,personaje) or place_meeting(x,y,NPC_Padre) or place_meeting(x,y,murciegato_personaje) or place_meeting(x,y,objeto_padre) or place_meeting(x,y,bloque_dan_total) or place_meeting(x,y,enemigo_base) or place_meeting(x,y,enemigo_movil) or place_meeting(x,y,bloque_llave)
//{alpha=alpha+0.05;}
//else{alpha=alpha-0.02;}
//}


