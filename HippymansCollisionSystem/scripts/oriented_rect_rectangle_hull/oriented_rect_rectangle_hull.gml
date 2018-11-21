/// @desc oriented_rect_rectangle_hull(orientedRect);
/// @arg orientedRect
var r = argument0;
var rinst = r[SHAPE_INSTANCE];
var rcenter = r[eShapeOrientedRect.Center];
if (instance_exists(rinst)) {
	//rcenter[0] += rinst.x;
	//rcenter[1] += rinst.y;
	var len = point_distance(0,0,rcenter[0],rcenter[1]);
	var dir = point_direction(0,0,rcenter[0],rcenter[1]) + rinst.image_angle;
	rcenter[0] = rinst.x + lengthdir_x(len,dir);
	rcenter[1] = rinst.y + lengthdir_y(len,dir);
}
var h = shape_rectangle(0,0,0,0);
h[eShapeRect.Origin] = rcenter;


for (var nr = 0; nr < 4; ++nr) {
	var corner = oriented_rectangle_corner(r, nr);
	h = enlarge_rectangle_point(h, corner);
}

return h;