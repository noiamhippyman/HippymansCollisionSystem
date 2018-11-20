/// @desc shape_line(baseX,baseY,dirX,dirY,inst=noone);
/// @arg baseX,baseY,dirX,dirY,inst=noone
var bx = argument[0];
var by = argument[1];
var dx = argument[2];
var dy = argument[3];
var inst = argument_count == 5 ? argument[4] : noone;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.Line;
shape[SHAPE_INSTANCE] = inst;
shape[eShapeLine.Base] = vec2(bx,by);
shape[eShapeLine.Direction] = vec2(dx,dy);
return shape;