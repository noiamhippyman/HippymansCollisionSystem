/// @desc shape_rectangle(x,y,width,height,inst=noone);
/// @arg x,y,width,height,inst=noone
var rx = argument[0];
var ry = argument[1];
var width = argument[2];
var height = argument[3];
var inst = argument_count == 5 ? argument[4] : noone;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.Rect;
shape[SHAPE_INSTANCE] = inst;
shape[eShapeRect.Origin] = vec2(rx,ry);
shape[eShapeRect.Size] = vec2(width,height);
return shape;