/// @desc shape_circle(x,y,radius,inst=noone);
/// @arg x,y,radius,inst=noone
var cx = argument[0];
var cy = argument[1];
var rad = argument[2];
var inst = argument_count == 4 ? argument[3] : noone;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.Circle;
shape[SHAPE_INSTANCE] = inst;
shape[eShapeCircle.Center] = vec2(cx,cy);
shape[eShapeCircle.Radius] = rad;
return shape;