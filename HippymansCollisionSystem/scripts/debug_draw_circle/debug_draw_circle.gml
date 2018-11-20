/// @desc debug_draw_circle(circle);
/// @arg circle
var circle = argument0;
var c = circle[eShapeCircle.Center];
var r = circle[eShapeCircle.Radius];
draw_circle(c[0],c[1],r,true);