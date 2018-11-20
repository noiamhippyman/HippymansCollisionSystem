/// @desc shape_line_angle(baseX,baseY,angle,inst=noone);
/// @arg baseX,baseY,angle,inst=noone
var bx = argument[0];
var by = argument[1];
var angle = argument[2];
var dx = lengthdir_x(1,angle);
var dy = lengthdir_y(1,angle);
var inst = argument_count == 4 ? argument[3] : noone;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.Line;
shape[SHAPE_INSTANCE] = inst;
shape[eShapeLine.Base] = vec2(bx,by);
shape[eShapeLine.Direction] = vec2(dx,dy);
return shape;