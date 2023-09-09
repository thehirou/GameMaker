particleStart=false
var_system = part_system_create();

Type0 = part_type_create();
part_type_shape(Type0,2);
part_type_size(Type0,0.01,0.05,0.00,0.00);
part_type_speed(Type0,0.70,0.70,0,0);
part_type_direction(Type0,0,360,0,9)
part_type_gravity(Type0,0.03,90)
part_type_alpha3(Type0,0.70,0.50,0.20);
part_type_blend(Type0,0);
part_type_life(Type0,20,30);


Emitter0 = part_emitter_create(var_system);
part_emitter_region(var_system,Emitter0,-10,10,-100,-100,3,0);
/*
Emitter0 = part_emitter_create(var_system);
part_emitter_region(var_system,Emitter0,-10,10,-10,0,0,0);
