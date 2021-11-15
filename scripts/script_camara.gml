velox=argument0.x-x;
veloy=argument0.y-y;

velo=1/20*sqrt(velox*velox+veloy*veloy)
if velo > 20 {velo=20}
if velo < 0.2 {velo=0.2}

if !position_meeting(argument0.x, argument0.y, self)
{
vecx=argument0.x-x;
vecy=argument0.y-y;
unit=sqrt(sqr(vecx)+sqr(vecy));
velx=vecx/unit;
vely=vecy/unit;
//x=floor(x+velo*velx);
//y=floor(y+velo*vely);
x=round(x+velo*velx);
y=round(y+velo*vely);
//x=x+velo*velx;
//y=y+velo*vely;
//mp_potential_step(argument0.x,argument0.y,velo,false)
}
