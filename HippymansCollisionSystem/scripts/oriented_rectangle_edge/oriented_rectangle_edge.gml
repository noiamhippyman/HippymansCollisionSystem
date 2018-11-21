/// @desc oriented_rectangle_edge(r,nr);
/// @arg r,nr
var r = argument0;
var nr = argument1;
var rinst = r[SHAPE_INSTANCE];
var rcenter = r[eShapeOrientedRect.Center];
var rangle = r[eShapeOrientedRect.Angle];
if (instance_exists(rinst)) {
	//rcenter[0] += rinst.x;
	//rcenter[1] += rinst.y;
	var len = point_distance(0,0,rcenter[0],rcenter[1]);
	var dir = point_direction(0,0,rcenter[0],rcenter[1]) + rinst.image_angle;
	rcenter[0] = rinst.x + lengthdir_x(len,dir);
	rcenter[1] = rinst.y + lengthdir_y(len,dir);
	
	rangle += rinst.image_angle;
}

var edge = shape_line_segment(0,0,0,0);
var a = r[eShapeOrientedRect.HalfSize];
var b = r[eShapeOrientedRect.HalfSize];

switch (nr mod 3) {
	case 0:
		a[0] = -a[0];
	break;
	
	case 1:
		b[1] = -b[1];
	break;
	
	case 2:
		a[1] = -a[1];
		b = vec2_negate(b);
	break;
	
	default:
		a = vec2_negate(a);
		b[0] = -b[0];
	break;
}

a = vec2_rotate(a, rangle);
a = vec2_add(a, rcenter);

b = vec2_rotate(b, rangle);
b = vec2_add(b, rcenter);

edge[eShapeLineSegment.Point1] = a;
edge[eShapeLineSegment.Point2] = b;
return edge;