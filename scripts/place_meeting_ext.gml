xx=argument0;
yy=argument1;
zz=argument2;
obj=argument3;

with(obj){
    var hw=other.sprite_width*1;
    var hl=other.sprite_height*1;
    var h =other.height*1-16;
    if (other.xx>x-hw+1&&
        other.xx<x+sprite_width+hw-1 &&
        other.yy>y-hl+1 &&
        other.yy<y+sprite_height+hl-1 &&
        other.zz>z-h+1 &&
        other.zz<z+sprite_height-1){return true;}
        }
return false;
