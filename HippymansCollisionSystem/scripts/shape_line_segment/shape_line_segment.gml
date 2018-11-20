/// @desc shape_line_segment(ax,ay,bx,by,inst=noone);
/// @arg ax,ay,bx,by,inst=noone
var ax = argument[0];
var ay = argument[1];
var bx = argument[2];
var by = argument[3];
var inst = argument_count == 5 ? argument[4] : noone;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.LineSegment;
shape[SHAPE_INSTANCE] = inst;
shape[eShapeLineSegment.Point1] = vec2(ax,ay);
shape[eShapeLineSegment.Point2] = vec2(bx,by);
return shape;