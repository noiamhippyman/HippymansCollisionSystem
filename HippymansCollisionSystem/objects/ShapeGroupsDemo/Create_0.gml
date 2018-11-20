#macro RW25 (room_width * 0.25)
#macro RW50 (room_width * 0.50)
#macro RW75 (room_width * 0.75)
#macro RH25 (room_height * 0.25)
#macro RH50 (room_height * 0.50)
#macro RH75 (room_height * 0.75)

hcs_global_defines();

group1 = ds_list_create();
ds_list_add(group1, shape_circle(0,0,32,id));
ds_list_add(group1, shape_circle(65,0,32,id));
ds_list_add(group1, shape_circle(-65,0,32,id));
ds_list_add(group1, shape_circle(0,65,32,id));
ds_list_add(group1, shape_circle(0,-65,32,id));


group2 = ds_list_create();
ds_list_add(group2, shape_line(RW50,RH75,1,0));
ds_list_add(group2, shape_oriented_rect(RW50,RH50,32,32,45));