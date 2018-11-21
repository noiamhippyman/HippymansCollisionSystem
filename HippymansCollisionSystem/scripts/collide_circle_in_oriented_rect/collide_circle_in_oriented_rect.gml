/// @desc collide_circle_in_oriented_rect(circle,orientedRect);
/// @arg circle,orientedRect
var c = argument0;
var r = argument1;
var cinst = c[SHAPE_INSTANCE];
var rinst = r[SHAPE_INSTANCE];
var ccenter = c[eShapeCircle.Center];
var rcenter = r[eShapeOrientedRect.Center];
var rangle = r[eShapeOrientedRect.Angle];
if (instance_exists(cinst)) {
	//ccenter[0] += cinst.x;
	//ccenter[1] += cinst.y;
	var len = point_distance(0,0,ccenter[0],ccenter[1]);
	var dir = point_direction(0,0,ccenter[0],ccenter[1]) + cinst.image_angle;
	ccenter[0] = cinst.x + lengthdir_x(len,dir);
	ccenter[1] = cinst.y + lengthdir_y(len,dir);
}

if (instance_exists(rinst)) {
	//rcenter[0] += rinst.x;
	//rcenter[1] += rinst.y;
	var len = point_distance(0,0,rcenter[0],rcenter[1]);
	var dir = point_direction(0,0,rcenter[0],rcenter[1]) + rinst.image_angle;
	rcenter[0] = rinst.x + lengthdir_x(len,dir);
	rcenter[1] = rinst.y + lengthdir_y(len,dir);
	
	rangle += rinst.image_angle;
}


var lr = shape_rectangle(0,0,0,0);
lr[eShapeRect.Size] = vec2_multiply(r[eShapeOrientedRect.HalfSize], 2);

var lc = shape_circle(0,0,c[eShapeCircle.Radius]);
var dist = vec2_subtract(ccenter, rcenter);
dist = vec2_rotate(dist, -rangle);
lc[eShapeCircle.Center] = vec2_add(dist, r[eShapeOrientedRect.HalfSize]);

return collide_circle_in_rect(lc,lr);