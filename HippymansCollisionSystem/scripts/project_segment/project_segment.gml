/// @desc project_segment(segment,onto);
/// @arg segment,onto
var s = argument0;
var o = argument1;
var sinst = s[SHAPE_INSTANCE];
var ounit = vec2_unit(o);

var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];
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

var dp1 = vec2_dot_product(ounit, sp1);
var dp2 = vec2_dot_product(ounit, sp2);
var r = vec2(dp1,dp2);
return vec2_sort(r);