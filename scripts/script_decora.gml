if position_meeting(x+32,y,bloque) and position_meeting(x-32,y,bloque) and position_meeting(x,y+32,bloque) and position_meeting(x,y-32,bloque)
    {
        if !position_meeting(x+32,y-32,bloque) and !position_meeting(x-32,y+32,bloque) and !position_meeting(x+32,y+32,bloque) and !position_meeting(x-32,y-32,bloque)
        {
            sprite_index=sprite_bloque2
        }
        
        else if !position_meeting(x-32,y+32,bloque) and !position_meeting(x+32,y+32,bloque) and !position_meeting(x-32,y-32,bloque){sprite_index=sprite_bloque_esquina3;image_angle=180}
        
        else if !position_meeting(x+32,y-32,bloque) and !position_meeting(x+32,y+32,bloque) and !position_meeting(x-32,y-32,bloque){ sprite_index=sprite_bloque_esquina3}
        
        else if !position_meeting(x+32,y-32,bloque) and !position_meeting(x-32,y+32,bloque) and !position_meeting(x-32,y-32,bloque){sprite_index=sprite_bloque_esquina3;image_angle=90}
        
        else if !position_meeting(x+32,y-32,bloque) and !position_meeting(x-32,y+32,bloque) and !position_meeting(x+32,y+32,bloque){sprite_index=sprite_bloque_esquina3;image_angle=270}
        
        else if !position_meeting(x+32,y-32,bloque) and !position_meeting(x-32,y-32,bloque){sprite_index=sprite_bloque_bordes}
        else if !position_meeting(x+32,y+32,bloque) and! position_meeting(x-32,y+32,bloque){sprite_index=sprite_bloque_bordes;image_angle=180}
        else if !position_meeting(x+32,y-32,bloque) and !position_meeting(x+32,y+32,bloque){sprite_index=sprite_bloque_bordes;image_angle=270}
        else if !position_meeting(x-32,y-32,bloque) and !position_meeting(x-32,y+32,bloque){sprite_index=sprite_bloque_bordes;image_angle=90}
        
        else if !position_meeting(x+32,y-32,bloque) and !position_meeting(x-32,y+32,bloque)  {sprite_index=sprite_bloque_esquina2}
        else if !position_meeting(x+32,y+32,bloque) and !position_meeting(x-32,y-32,bloque) {sprite_index=sprite_bloque_esquina2;image_angle=270}
        
        
        else if !position_meeting(x+32,y-32,bloque){sprite_index=sprite_bloque_esquina}
        else if !position_meeting(x-32,y+32,bloque){sprite_index=sprite_bloque_esquina;image_angle=180}
        else if !position_meeting(x+32,y+32,bloque){sprite_index=sprite_bloque_esquina;image_angle=270}
        else if !position_meeting(x-32,y-32,bloque){sprite_index=sprite_bloque_esquina;image_angle=90}
        
        else{sprite_index=sprite_bloque}
        
    }
else if !position_meeting(x+32,y-32,bloque) and !position_meeting(x-32,y+32,bloque) and !position_meeting(x+32,y+32,bloque) and !position_meeting(x-32,y-32,bloque)
    {
        sprite_index=sprite_bloque2
    }
   
   
else if position_meeting(x+32,y,bloque) and position_meeting(x-32,y,bloque) and position_meeting(x,y+32,bloque) and (position_meeting(x-32,y+32,bloque) and position_meeting(x+32,y+32,bloque)){sprite_index=sprite_bloque_bordes}
else if position_meeting(x+32,y,bloque) and position_meeting(x-32,y,bloque) and position_meeting(x,y-32,bloque) and (position_meeting(x-32,y-32,bloque) and position_meeting(x+32,y-32,bloque)){sprite_index=sprite_bloque_bordes;image_angle=180}
else if position_meeting(x-32,y,bloque) and position_meeting(x,y+32,bloque) and position_meeting(x,y-32,bloque) and (position_meeting(x-32,y-32,bloque) and position_meeting(x-32,y+32,bloque)){sprite_index=sprite_bloque_bordes;image_angle=270}
else if position_meeting(x+32,y,bloque) and position_meeting(x,y+32,bloque) and position_meeting(x,y-32,bloque) and (position_meeting(x+32,y+32,bloque) and position_meeting(x+32,y-32,bloque)){sprite_index=sprite_bloque_bordes;image_angle=90}
    
    
    
else if position_meeting(x-32,y,bloque)and position_meeting(x,y+32,bloque) and position_meeting(x-32,y+32,bloque) and (!position_meeting(x+32,y-32,bloque) or !position_meeting(x-32,y-32,bloque) or !position_meeting(x+32,y+32,bloque)){sprite_index=sprite_bloque_esquina3}
else if position_meeting(x+32,y,bloque)and position_meeting(x,y+32,bloque) and position_meeting(x+32,y+32,bloque) and (!position_meeting(x-32,y-32,bloque) or !position_meeting(x+32,y-32,bloque) or !position_meeting(x-32,y+32,bloque)){sprite_index=sprite_bloque_esquina3;image_angle=90}
else if position_meeting(x-32,y,bloque)and position_meeting(x,y-32,bloque) and position_meeting(x-32,y-32,bloque) and (!position_meeting(x+32,y+32,bloque) or !position_meeting(x+32,y-32,bloque) or !position_meeting(x-32,y+32,bloque)){sprite_index=sprite_bloque_esquina3;image_angle=270}
else if position_meeting(x+32,y,bloque)and position_meeting(x,y-32,bloque) and position_meeting(x+32,y-32,bloque) and (!position_meeting(x-32,y+32,bloque) or !position_meeting(x-32,y-32,bloque) or !position_meeting(x+32,y+32,bloque)){sprite_index=sprite_bloque_esquina3;image_angle=180}

else if position_meeting(x-32,y,bloque)and position_meeting(x,y+32,bloque) and position_meeting(x-32,y+32,bloque) and position_meeting(x+32,y-32,bloque) and position_meeting(x-32,y-32,bloque) and position_meeting(x+32,y+32,bloque){sprite_index=sprite_bloque_esquina3}
else if position_meeting(x+32,y,bloque)and position_meeting(x,y+32,bloque) and position_meeting(x+32,y+32,bloque) and position_meeting(x-32,y-32,bloque) and position_meeting(x+32,y-32,bloque) and position_meeting(x-32,y+32,bloque){sprite_index=sprite_bloque_esquina3;image_angle=90}
else if position_meeting(x-32,y,bloque)and position_meeting(x,y-32,bloque) and position_meeting(x-32,y-32,bloque) and position_meeting(x+32,y+32,bloque) and position_meeting(x+32,y-32,bloque) and position_meeting(x-32,y+32,bloque){sprite_index=sprite_bloque_esquina3;image_angle=270}
else if position_meeting(x+32,y,bloque)and position_meeting(x,y-32,bloque) and position_meeting(x+32,y-32,bloque) and position_meeting(x-32,y+32,bloque) and position_meeting(x-32,y-32,bloque) and position_meeting(x+32,y+32,bloque){sprite_index=sprite_bloque_esquina3;image_angle=180}


else {sprite_index=sprite_bloque2}
