/// @desc oriented_rectangle_edge(r,nr);
/// @arg r,nr
var r = argument0;
var nr = argument1;


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

a = vec2_rotate(a, r[eShapeOrientedRect.Angle]);
a = vec2_add(a, r[eShapeOrientedRect.Center]);

b = vec2_rotate(b, r[eShapeOrientedRect.Angle]);
b = vec2_add(b, r[eShapeOrientedRect.Center]);

edge[eShapeLineSegment.Point1] = a;
edge[eShapeLineSegment.Point2] = b;
return edge;