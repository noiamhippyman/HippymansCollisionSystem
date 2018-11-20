/// @desc oriented_rectangle_corner(orientedRect,nr);
/// @arg orientedRect,nr
var r = argument0;
var rinst = r[SHAPE_INSTANCE];
var ro = r[eShapeOrientedRect.Center];
if (instance_exists(rinst)) {
	ro[0] += rinst.x;
	ro[1] += rinst.y;
}
var nr = argument1;

var c = r[eShapeOrientedRect.HalfSize];
switch (nr mod 4) {
	case 0:
		c[0] = -c[0];
	break;
	
	case 1:
	break;
	
	case 2:
		c[1] = -c[1];
	break;
	
	default:
		c = vec2_negate(c);
	break;
}

c = vec2_rotate(c, r[eShapeOrientedRect.Angle]);
return vec2_add(c, ro);