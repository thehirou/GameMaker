timer ++

if timer>0
{
instance_destroy(self)	
}

//Start
part_particles_create(var_system,x+10,y+10,Type0,2)

x=getID.x
y=getID.y