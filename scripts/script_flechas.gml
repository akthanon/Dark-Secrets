//Mueve x hacia la posción
if dir="izq"{
    if instancia.image_index=0{
        with (instance_create(x+32, y, enemigo_flecha))
       {
            image_xscale=1;
       }
       contador=1*60;
    }
}
if dir="der"{
    if instancia.image_index=1{
       with (instance_create(x+32, y, enemigo_flecha))
       {
            image_xscale=1;
       }
       contador=1*60;
    }
}
if dir="arr"{
    if instancia.image_index=1{
        with (instance_create(x, y+32, obj_mpicos))
        {
            image_xscale=1;
        }
        contador=1*60;
    }
}
if dir="aba"{
    if instancia.image_index=1{

        with (instance_create(x, y-32, obj_mpicos))
        {
            image_xscale=1;
        }
        contador=1*60;
    }
}
