/// @desc oriented_rectangle_corner(orientedRect,nr);
/// @arg orientedRect,nr
var r = argument0;
var nr = argument1;

var c = r[eOrientedRect.HalfSize];
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

c = vec2_rotate(c, r[eOrientedRect.Angle]);
return vec2_add(c, r[eOrientedRect.Origin]);