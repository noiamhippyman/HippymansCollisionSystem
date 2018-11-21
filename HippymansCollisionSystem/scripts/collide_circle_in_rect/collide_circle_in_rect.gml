/// @desc collide_circle_in_rect(circle,rectangle);
/// @arg circle,rectangle
var c = argument0;
var r = argument1;
var cinst = c[SHAPE_INSTANCE];
var ccenter = c[eShapeCircle.Center];
if (instance_exists(cinst)) {
	//ccenter[0] += cinst.x;
	//ccenter[1] += cinst.y;
	var len = point_distance(0,0,ccenter[0],ccenter[1]);
	var dir = point_direction(0,0,ccenter[0],ccenter[1]) + cinst.image_angle;
	ccenter[0] = cinst.x + lengthdir_x(len,dir);
	ccenter[1] = cinst.y + lengthdir_y(len,dir);
}
var clamped = clamp_on_rectangle(ccenter, r);

return collide_point_in_circle(clamped, c);