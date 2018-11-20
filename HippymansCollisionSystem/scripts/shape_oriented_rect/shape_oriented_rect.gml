/// @desc shape_oriented_rect(x,y,halfWidth,halfHeight,angle,inst=noone);
/// @arg x,y,halfWidth,halfHeight,angle,inst=noone
var rx = argument[0];
var ry = argument[1];
var halfWidth = argument[2];
var halfHeight = argument[3];
var angle = argument[4];
var inst = argument_count == 6 ? argument[5] : noone;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.OrientedRect;
shape[SHAPE_INSTANCE] = inst;
shape[eShapeOrientedRect.Center] = vec2(rx,ry);
shape[eShapeOrientedRect.HalfSize] = vec2(halfWidth,halfHeight);
shape[eShapeOrientedRect.Angle] = angle;
return shape;