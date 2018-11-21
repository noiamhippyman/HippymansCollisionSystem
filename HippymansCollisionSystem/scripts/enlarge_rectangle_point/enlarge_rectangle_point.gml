/// @desc enlarge_rectangle_point(rect,vec2);
/// @arg rect,vec2
var r = argument0;
var rinst = r[SHAPE_INSTANCE];
var v = argument1;
var ro = r[eShapeRect.Origin];
var rs = r[eShapeRect.Size];
if (instance_exists(rinst)) {
	//ro[0] += rinst.x;
	//ro[1] += rinst.y;
	var len = point_distance(0,0,ro[0],ro[1]);
	var dir = point_direction(0,0,ro[0],ro[1]) + rinst.image_angle;
	ro[0] = rinst.x + lengthdir_x(len,dir);
	ro[1] = rinst.y + lengthdir_y(len,dir);
}

var enlarged = shape_rectangle(
	min(ro[0], v[0]),
	min(ro[1], v[1]),
	max(ro[0]+rs[0], v[0]),
	max(ro[1]+rs[1], v[1])
);

enlarged[eShapeRect.Size] = vec2_subtract(enlarged[eShapeRect.Size], enlarged[eShapeRect.Origin]);
return enlarged;