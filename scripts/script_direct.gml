if instance_exists(enemigo_estatico)
{
estatic=instance_nearest(x,y,enemigo_estatico)
dis_estatic=distance_to_object(estatic)
x_estatic=estatic.x
}
else{x_estatic=1;dis_estatic=0}

if instance_exists(enemigo_base)
{
base=instance_nearest(x,y,enemigo_base)
dis_base=distance_to_object(base)
x_base=base.x
}
else{x_base=1;dis_base=0}

if dis_base < dis_estatic
{
    if (x-x_base!=0)
    {
        global.direc=sign(x-x_base)
    }
    else{global.direc=1}
}
else
{
    if (x-x_estatic!=0)
    {
        global.direc=sign(x-x_estatic)
    }
    else{global.direc=1}
}
