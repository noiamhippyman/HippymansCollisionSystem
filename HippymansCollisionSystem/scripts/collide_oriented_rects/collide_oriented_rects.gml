/// @desc collide_oriented_rects(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var edge = oriented_rectangle_edge(a, 0);
if (separating_axis_for_oriented_rect(edge, b)) return false;

edge = oriented_rectangle_edge(a, 1);
if (separating_axis_for_oriented_rect(edge, b)) return false;

edge = oriented_rectangle_edge(b, 0);
if (separating_axis_for_oriented_rect(edge, a)) return false;

edge = oriented_rectangle_edge(b, 1);
return !separating_axis_for_oriented_rect(edge, a);