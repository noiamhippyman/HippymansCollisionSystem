/// @desc shape_rectangle(x,y,width,height);
/// @arg x,y,width,height
var rx = argument0;
var ry = argument1;
var width = argument2;
var height = argument3;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.Rect;
shape[eShapeRect.Origin] = vec2(rx,ry);
shape[eShapeRect.Size] = vec2(width,height);
return shape;