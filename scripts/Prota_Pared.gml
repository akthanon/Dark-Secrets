if (iner>des_iner or iner <-des_iner)
{
    image_speed=0.1;
    stamina=stamina-0.6;
    if stamina<=0{stamina=-5;enfriacaja=false}
    emparedado=true;
}
else{image_speed=0}
sprite_index=sprite_pared
switch(dir){
    case "izquierda":
        image_xscale=-1;
        break;
    case "derecha":
        image_xscale=1;
        break;
}

