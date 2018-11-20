/// @desc shape_circle(x,y,radius);
/// @arg x,y,radius
var cx = argument0;
var cy = argument1;
var rad = argument2;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.Circle;
shape[eShapeCircle.Center] = vec2(cx,cy);
shape[eShapeCircle.Radius] = rad;
return shape;