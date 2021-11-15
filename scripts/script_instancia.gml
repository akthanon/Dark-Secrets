with (generador_proyectil)
{
  if (argument0 == generador)
  {
        if place_meeting(x,y,personaje){instance_activate_object(generador)}
        else {instance_deactivate_object(generador)}
    break;
  }
}
