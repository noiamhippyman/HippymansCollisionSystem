/// @desc shape_circle(x,y,radius);
/// @arg x,y,radius
var cx = argument0;
var cy = argument1;
var rad = argument2;

var shape = [];
shape[eCircle.Center] = vec2(cx,cy);
shape[eCircle.Radius] = rad;
return shape;