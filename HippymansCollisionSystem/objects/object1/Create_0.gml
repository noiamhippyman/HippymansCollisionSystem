#macro RW25 (room_width * 0.25)
#macro RW50 (room_width * 0.50)
#macro RW75 (room_width * 0.75)
#macro RH25 (room_height * 0.25)
#macro RH50 (room_height * 0.50)
#macro RH75 (room_height * 0.75)

global_defines();

shapes = ds_list_create();
ds_list_add(shapes, shape_line(RW50,RH75,1,0));
ds_list_add(shapes, shape_line_segment(RW25,RH50,RW75,RH50));
ds_list_add(shapes, shape_circle(RW25,RH50,32));
ds_list_add(shapes, shape_rectangle(RW50,RH50,64,64));
ds_list_add(shapes, shape_oriented_rect(RW75,RH50,32,32,45));

var c = shapes[|2];
cpos = c[eShapeCircle.Center];