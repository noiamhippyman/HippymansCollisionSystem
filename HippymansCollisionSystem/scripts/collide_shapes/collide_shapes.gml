/// @desc collide_shapes(shapeA,shapeB);
/// @arg shapeA,shapeB
var shapeA = argument0;
var shapeB = argument1;

var typeA = shape_get_type(shapeA);
var typeB = shape_get_type(shapeB);

if (typeA == typeB) {
	
	switch(typeA) {
		case eShapeType.Line:
			return collide_lines(shapeA,shapeB);
		break;
		case eShapeType.LineSegment:
			return collide_segments(shapeA,shapeB);
		break;
		case eShapeType.Circle:
			return collide_circles(shapeA,shapeB);
		break;
		case eShapeType.Rect:
			return collide_rectangles(shapeA,shapeB);
		break;
		case eShapeType.OrientedRect:
			return collide_oriented_rects(shapeA,shapeB);
		break;
	}
	
} else {

	var colFlags = set_bit(0,typeA) | set_bit(0,typeB);
	switch (colFlags) {
		case COL_LINE_LINESEG:
			var line = typeA == eShapeType.Line ? shapeA : shapeB;
			var lineSeg = typeA == eShapeType.LineSegment ? shapeA : shapeB;
			return collide_line_in_line_seg(line,lineSeg);
		break;
		case COL_LINE_CIRCLE:
			var line = typeA == eShapeType.Line ? shapeA : shapeB;
			var circle = typeA == eShapeType.Circle ? shapeA : shapeB;
			return collide_line_in_circle(line,circle);
		break;
		case COL_LINE_RECT:
			var line = typeA == eShapeType.Line ? shapeA : shapeB;
			var rect = typeA == eShapeType.Rect ? shapeA : shapeB;
			return collide_line_in_rect(line,rect);
		break;
		case COL_LINE_ORECT:
			var line = typeA == eShapeType.Line ? shapeA : shapeB;
			var orect = typeA == eShapeType.OrientedRect ? shapeA : shapeB;
			return collide_line_in_oriented_rect(line,orect);
		break;
		
		case COL_LINESEG_CIRCLE:
			var lineSeg = typeA == eShapeType.LineSegment ? shapeA : shapeB;
			var circle = typeA == eShapeType.Circle ? shapeA : shapeB;
			return collide_line_seg_in_circle(lineSeg,circle);
		break;
		case COL_LINESEG_RECT:
			var lineSeg = typeA == eShapeType.LineSegment ? shapeA : shapeB;
			var rect = typeA == eShapeType.Rect ? shapeA : shapeB;
			return collide_line_seg_in_rect(lineSeg,rect);
		break;
		case COL_LINESEG_ORECT:
			var lineSeg = typeA == eShapeType.LineSegment ? shapeA : shapeB;
			var orect = typeA == eShapeType.OrientedRect ? shapeA : shapeB;
			return collide_line_seg_in_oriented_rect(lineSeg,orect);
		break;
		
		case COL_CIRCLE_RECT:
			var circle = typeA == eShapeType.Circle ? shapeA : shapeB;
			var rect = typeA == eShapeType.Rect ? shapeA : shapeB;
			return collide_circle_in_rect(circle,rect);
		break;
		case COL_CIRCLE_ORECT:
			var circle = typeA == eShapeType.Circle ? shapeA : shapeB;
			var orect = typeA == eShapeType.OrientedRect ? shapeA : shapeB;
			return collide_circle_in_oriented_rect(circle,orect);
		break;
		
		case COL_RECT_ORECT:
			var rect = typeA == eShapeType.Rect ? shapeA : shapeB;
			var orect = typeA == eShapeType.OrientedRect ? shapeA : shapeB;
			return collide_rect_in_oriented_rect(rect,orect);
		break;
	}
}