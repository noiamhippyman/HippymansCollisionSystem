/// @desc collide_line_seg_in_circle(segment,circle);
/// @arg segment,circle
var s = argument0;
var c = argument1;

var sinst = s[SHAPE_INSTANCE];
var cinst = c[SHAPE_INSTANCE];

var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];

var ccenter = c[eShapeCircle.Center];

if (instance_exists(sinst)) {
	//sp1[0] += sinst.x; sp2[0] += sinst.x;
	//sp1[1] += sinst.y; sp2[1] += sinst.y;
	var len = point_distance(0,0,sp1[0],sp1[1]);
	var dir = point_direction(0,0,sp1[0],sp1[1]) + sinst.image_angle;
	sp1[0] = sinst.x + lengthdir_x(len,dir);
	sp1[1] = sinst.y + lengthdir_y(len,dir);
	
	len = point_distance(0,0,sp2[0],sp2[1]);
	dir = point_direction(0,0,sp2[0],sp2[1]) + sinst.image_angle;
	sp2[0] = sinst.x + lengthdir_x(len,dir);
	sp2[1] = sinst.y + lengthdir_y(len,dir);
}

if (instance_exists(cinst)) {
	//ccenter[0] += cinst.x;
	//ccenter[1] += cinst.y;
	var len = point_distance(0,0,ccenter[0],ccenter[1]);
	var dir = point_direction(0,0,ccenter[0],ccenter[1]) + cinst.image_angle;
	ccenter[0] = cinst.x + lengthdir_x(len,dir);
	ccenter[1] = cinst.y + lengthdir_y(len,dir);
}

if (collide_point_in_circle(sp1,c) || collide_point_in_circle(sp2,c)) return true;

var d = vec2_subtract(sp2, sp1);
var lc = vec2_subtract(ccenter, sp1);
var p = vec2_project(lc, d);
var near = vec2_add(sp1, p);

return  collide_point_in_circle(near,c) &&
		vec2_length(p) <= vec2_length(d) &&
		0 <= vec2_dot_product(p, d);