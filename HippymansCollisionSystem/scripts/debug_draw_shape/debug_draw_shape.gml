/// @desc debug_draw_shape(shape);
/// @arg shape
var shape = argument0;
var type = shape_get_type(shape);
switch (type) {
	case eShapeType.Line:			debug_draw_line(shape);				break;
	case eShapeType.LineSegment:	debug_draw_line_seg(shape);			break;
	case eShapeType.Circle:			debug_draw_circle(shape);			break;
	case eShapeType.Rect:			debug_draw_rect(shape);				break;
	case eShapeType.OrientedRect:	debug_draw_oriented_rect(shape);	break;
}