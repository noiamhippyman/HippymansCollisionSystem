#macro RW25 (room_width * 0.25)
#macro RW50 (room_width * 0.50)
#macro RW75 (room_width * 0.75)
#macro RH25 (room_height * 0.25)
#macro RH50 (room_height * 0.50)
#macro RH75 (room_height * 0.75)

hcs_global_defines();

line = shape_line_angle(RW50,RH75,0);
line2 = shape_line(room_width * 0.1,RH75,0,1);
lineSeg = shape_line_segment(RW25,RH50,RW75,RH50);
circle = shape_circle(RW25,RH50,32);
rect = shape_rectangle(RW50,RH50,64,64);
orect = shape_oriented_rect(RW75,RH50,32,32,45);

shapes = ds_list_create();
ds_list_add(shapes, line);
ds_list_add(shapes, line2);
ds_list_add(shapes, lineSeg);
ds_list_add(shapes, circle);
ds_list_add(shapes, rect);
ds_list_add(shapes, orect);
ds_list_add(shapes, shape_circle(0,0,32,id));
ds_list_add(shapes, shape_circle(65,0,32,id));
ds_list_add(shapes, shape_circle(-65,0,32,id));
ds_list_add(shapes, shape_circle(0,65,32,id));
ds_list_add(shapes, shape_circle(0,-65,32,id));