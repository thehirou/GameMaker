timer=0

var_system = part_system_create();

Type0 = part_type_create();
part_type_shape(Type0,pt_shape_line);
part_type_size(Type0,0.1,0.1,0,0.01);
part_type_speed(Type0,5,5,0.01,0);
part_type_direction(Type0,0,359,30,15)
part_type_orientation(Type0,0,360,0.90,0.40,0);
part_type_color3(Type0,16384,4259584,8421376);
part_type_alpha3(Type0,0.20,0.50,0.20);
part_type_blend(Type0,0);
part_type_life(Type0,10,20);

/*Type1 = part_type_create();
part_type_shape(Type1,1);
part_type_size(Type1,0,0,0,0);
part_type_blend(Type1,0);
part_type_life(Type1,5,5);*/

Type2 = part_type_create();
part_type_shape(Type2,4);
part_type_size(Type2,0.03,0.03,0,0);
part_type_speed(Type2,1,2,0,0);
part_type_direction(Type2,0,359,0,0)
part_type_color3(Type2,8421376,16744576,16776960);
part_type_alpha3(Type2,0.20,0.70,0);
part_type_blend(Type2,0);
part_type_life(Type2,10,15);

part_type_death(Type0,5,Type2);


