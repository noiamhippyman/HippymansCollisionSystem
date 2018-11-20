/// @desc collide_circle_in_rect(circle,rectangle);
/// @arg circle,rectangle
var c = argument0;
var r = argument1;
var cinst = c[SHAPE_INSTANCE];
var ccenter = c[eShapeCircle.Center];
if (instance_exists(cinst)) {
	ccenter[0] += cinst.x;
	ccenter[1] += cinst.y;
}
var clamped = clamp_on_rectangle(ccenter, r);

return collide_point_in_circle(clamped, c);