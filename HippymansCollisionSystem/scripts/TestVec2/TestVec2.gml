var v1,v2,v3,expression;

v1 = vec2(5,5);
v2 = vec2(5,10);

v3 = vec2_add(v1,v2);
expression = vec2_equals(v3,vec2(10,15));
show_debug_message("vec2_add: " + string(expression));

v3 = vec2_subtract(v1,v2);
expression = vec2_equals(v3,vec2(0,-5));
show_debug_message("vec2_subtract: " + string(expression));

v3 = vec2_multiply(v1,v2);
expression = vec2_equals(v3,vec2(25,50))
show_debug_message("vec2_multiply vec2,vec2: " + string(expression));

v3 = vec2_multiply(v1,2);
expression = vec2_equals(v3,vec2(10,10));
show_debug_message("vec2_multiply vec2,real: " + string(expression));

v3 = vec2_divide(v1,v2);
expression = vec2_equals(v3,vec2(1,0.5));
show_debug_message("vec2_divide vec2,vec2: " + string(expression));

v3 = vec2_divide(v1,2);
expression = vec2_equals(v3,vec2(2.5,2.5));
show_debug_message("vec2_divide vec2,real: " + string(expression));

v3 = vec2_length(v1);
expression = point_distance(0,0,5,5) == vec2_length(v1);
show_debug_message("vec2_length: " + string(expression));

v3 = vec2_unit(vec2(5,0));
expression = vec2_equals(v3,vec2(1,0));
show_debug_message("vec2_unit: " + string(expression));

v3 = vec2_rotate(v1,360);
expression = vec2_equals(v3,v1);
show_debug_message("vec2_rotate: " + string(expression));

v3 = vec2_enclosed_angle(v2,vec2(-10,5));
expression = (v3 == 90);
show_debug_message("vec2_enclosed_angle: " + string(expression));

v3 = vec2_project(v1,v2);
expression = vec2_equals(vec2_unit(v3),vec2_unit(v2));
show_debug_message("vec2_project: " + string(expression));

game_end();