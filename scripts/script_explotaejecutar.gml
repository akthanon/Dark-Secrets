desintegrarse=argument0
for(i=0; i<=sprite_width; i=i+1*size)
{
for(j=0; j<=sprite_height; j=j+1*size)
{
draw_sprite_part(sprite_index,image_index,i,j,size,size,x+px[i,j],y+py[i,j])

if desintegrarse=true
{
px[i,j]-=cos(degtorad(point_direction(x+i,y+j,x+sprite_width/2,y+sprite_height/2)))*(2+random(5))
py[i,j]+=sin(degtorad(point_direction(x+i,y+j,x+sprite_width/2,y+sprite_height/2)))*(2+random(5))
}

}
}
