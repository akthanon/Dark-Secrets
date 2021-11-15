image_speed=0.25;
if conatac=20{image_index=0;}
image_index=3-(conatac-8)/4

switch(dir){
    case "abajo":
        sprite_index=Abajo;
        break;
    case "arriba":
        sprite_index=Arriba;
        break;
    case "izquierda": 
    sprite_index=Espada_Izquierda;
        break;
    case "derecha":   
    sprite_index=Espada_Derecha;
        
        break;
}
//if (image_index==0 and image_index<4){image_index++;}

