///Condición
if global.pause{exit}
if global.pause2=false{
if enfria=0{randelec=irandom(3);}
if randelec=3 and vel!=0{randelec=irandom(2);}

if randelec=0 and activado=true {activado=false;dir=1;vel=1;}
if randelec=1 and activado=true {activado=false;dir=-1;vel=-1;}
if randelec=2 and activado=true {activado=false;vel=0;image_index=0;}

if randelec=3 and vel=0 and activado=true
    {
        activado=false;
        vel=0;
        image_index=0;   
        if dir=1
            {
                sprite_index=argument0;
            }
        else{sprite_index=argument1;} 
    }
if vel!=0{image_index=image_index+1/12}

if place_meeting(x+vel,y,bloque) or place_meeting(x+vel,y,bloque_npc)
{ 
    vel=-vel
    x=x+vel*8
}
if vel=1{sprite_index=argument1;}
if vel=-1{sprite_index=argument0;}

x=x+vel;
enfria=enfria-1
if enfria=-1{enfria=irandom_range(100,180);activado=true;}
}

