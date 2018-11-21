/// @desc oriented_rectangle_corner(orientedRect,nr);
/// @arg orientedRect,nr
var r = argument0;
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

c = vec2_rotate(c, rangle);
return vec2_add(c, rcenter);