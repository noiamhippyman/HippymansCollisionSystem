/// @desc oriented_rectangle_edge(r,nr);
/// @arg r,nr
var r = argument0;
var nr = argument1;


var edge = shape_line_segment(0,0,0,0);
var a = r[eOrientedRect.HalfSize];
var b = r[eOrientedRect.HalfSize];

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

a = vec2_rotate(a, r[eOrientedRect.Angle]);
a = vec2_add(a, r[eOrientedRect.Origin]);

b = vec2_rotate(b, r[eOrientedRect.Angle]);
b = vec2_add(b, r[eOrientedRect.Origin]);

edge[eLineSegment.A] = a;
edge[eLineSegment.B] = b;
return edge;