amplitud=argument0
b=argument1
horizon=argument2
aumento=argument3
if horizon=false{
for(i=0; i<=sprite_height; i=i+1)
{
draw_sprite_part(sprite_index,0,0,i,sprite_width,1,x+sin((angulo+i)/b)*amplitud-sprite_width/2,y+i-sprite_height/2)
}
}
if horizon=true{
for(i=0; i<=sprite_width; i=i+1)
{
draw_sprite_part(sprite_index,0,i,0,1,sprite_height,x+i-sprite_width/2,y+sin((angulo+i)/b)*amplitud-sprite_height/2)
}
}
angulo+=aumento
