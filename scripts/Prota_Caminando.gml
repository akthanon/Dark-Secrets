if tocagua=true{
    image_speed=0.1;
}
else if romper2=true{image_speed=0.1}
else if romper=true{image_speed=0.5}
else{image_speed=0.25;}
imaval=image_speed
image_speed=imaval*con_vel/3
sprite_index=sprite_camina
switch(dir){
    case "izquierda":
        image_xscale=-1;
        break;
    case "derecha":
        image_xscale=1;
        break;
}
    
