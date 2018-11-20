/// @desc shape_oriented_rect(x,y,halfWidth,halfHeight,angle);
/// @arg x,y,halfWidth,halfHeight,angle
var rx = argument0;
var ry = argument1;
var halfWidth = argument2;
var halfHeight = argument3;
var angle = argument4;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.OrientedRect;
shape[eShapeOrientedRect.Center] = vec2(rx,ry);
shape[eShapeOrientedRect.HalfSize] = vec2(halfWidth,halfHeight);
shape[eShapeOrientedRect.Angle] = angle;
return shape;