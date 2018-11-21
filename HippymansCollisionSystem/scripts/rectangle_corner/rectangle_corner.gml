/// @desc rectangle_corner(r,nr);
/// @arg r,nr
var r = argument0;
var rinst = r[SHAPE_INSTANCE];
var nr = argument1;
var ro = r[eShapeRect.Origin];
if (instance_exists(rinst)) {
	//ro[0] += rinst.x;
	//ro[1] += rinst.y;
	var len = point_distance(0,0,ro[0],ro[1]);
	var dir = point_direction(0,0,ro[0],ro[1]) + rinst.image_angle;
	ro[0] = rinst.x + lengthdir_x(len,dir);
	ro[1] = rinst.y + lengthdir_y(len,dir);
}
var rs = r[eShapeRect.Size];
var corner = ro;
switch (nr mod 4) {
	case 0:
		corner[0] += rs[0];
	break;
	case 1:
		corner = vec2_add(corner, rs);
	break;
	case 2:
		corner[1] += rs[1];
	break;
	default:
	break;
}
return corner;