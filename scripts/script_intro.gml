draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_set_font(font0);



presionado=gamepad_button_check_pressed(0, gp_face2) or keyboard_check_pressed(ord('E'))
pulsado=gamepad_button_check(0, gp_face2) or keyboard_check(ord('E'))
if (presionado or mouse_check_button_pressed(mb_left)) and presz=true and i<array_length_1d(dialogo)
{
    i=i+1;
    ip=i;
    finalizado=false;
    presz=false;
    pos=1;
}

if finalizado=false
{
    framex=framex+aumen*1/6
    if framex=2 or framex=0{aumen=-aumen}
    script_text(view_xview+view_wview/2,view_yview+view_hview/2,string(dialogo[i]),6*3,161*3)
    draw_sprite_ext(Save_A, global.teclado,view_xview+view_wview/2+240,view_yview+view_hview/2+120, 0.9+framex/10, 0.9+framex/10, 0, c_white,1);
}
else{i=-1;finalizado=true;presz=true;}



