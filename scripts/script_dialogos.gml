if !(global.pause or global.pause2) draw_self();
if global.pause{exit}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_font(font0);
presionado=gamepad_button_check_pressed(0, gp_face2) or keyboard_check_pressed(ord('E'))
pulsado=gamepad_button_check(0, gp_face2) or keyboard_check(ord('E'))
if global.dialogm=false and !collision_rectangle( x+17, y+32, x-17, y-32, NPC_Padre, false, true ) and !place_meeting(x,y,obj_murciegato) and !place_meeting(personaje.x,personaje.y,checkpoint) and !place_meeting(personaje.x,personaje.y,objeto_padre) and !place_meeting(personaje.x,personaje.y,escalera) and (!mouse_check_button(mb_left) or finalizado=false)
{
if (presionado or mouse_check_button_pressed(mb_left)) and !(pulsado and mouse_check_button(mb_left)) and abs(personaje.x-x)<16 and place_meeting(x,y,personaje) and presz=true
{
    if finalizado=true{audio_play_sound(f_pausa,0,0);}
    i=i+1;
    ip=i;
    finalizado=false;
    presz=false;
    pos=1;
    global.pause2 = true;
    global.dialog=true;
}

if i=lineas[conversa]
{
    i=-1;
    finalizado=true;
    global.dialog=false;
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
    
}


if abs(personaje.x-x)<16 and place_meeting(x,y,personaje) and finalizado=false
{
    draw_sprite_ext(Dialogos,0,view_xview+view_wview/2,view_yview+view_hview/2,1,1,0, c_white,1)
    textmaq(view_xview+view_wview/2,view_yview+view_hview/2,string(dialogo[i+j]),6*3,161*3)
    draw_text(view_xview+view_wview/2-155,view_yview+view_hview/2-39,nombre)
    depth=-7;
    draw_sprite(sprite_dialog_ima,0,view_xview+view_wview*1/4,view_yview+view_hview*1/4)
    framex=framex+1/6
    if framex>image_number{framex=0}
    if sprite_height<96{
    draw_sprite(sprite_index,framex,view_xview+view_wview*1/4,view_yview+view_hview*1/4)
    }
    else{draw_sprite_ext(sprite_index,framex,view_xview+view_wview*1/4,view_yview+view_hview*1/4,0.5,0.5,0,c_white,1)}
    framey=framey+aumen*1/6
    if framey=2 or framey=0{aumen=-aumen}
    draw_sprite_ext(Save_A, global.teclado,view_xview+view_wview/2+230,view_yview+view_hview/2+32, 0.9+framey/10, 0.9+framey/10, 0, c_white,1);
}
else{i=-1;finalizado=true;presz=true;depth=-3;}


}
else if presionado and !audio_is_playing(f_error) and abs(personaje.x-x)<16 and place_meeting(x,y,personaje) and !mouse_check_button(mb_left) and global.dialogm=false {audio_play_sound(f_error,0,0)}


if finalizado=true{
alpha=clamp(alpha,0,1)
draw_sprite_ext(Save_A, global.teclado, x, y-48, 1, 1, 0, c_white,alpha);
if abs(personaje.x-x)<16 and place_meeting(x,y,personaje)
{alpha=alpha+0.05;}
else{alpha=alpha-0.02;}
}



