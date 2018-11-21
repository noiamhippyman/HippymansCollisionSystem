/// @desc collide_line_seg_in_oriented_rect(segment,orientedRect);
/// @arg segment,orientedRect
var s = argument0;
var r = argument1;

var sinst = s[SHAPE_INSTANCE];
var rinst = r[SHAPE_INSTANCE];

var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];
var rcenter = r[eShapeOrientedRect.Center];
var rsize = r[eShapeOrientedRect.HalfSize];
var rangle = r[eShapeOrientedRect.Angle];

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

var ls = shape_line_segment(0,0,0,0);
ls[eShapeLineSegment.Point1] = vec2_subtract(sp1, rcenter);
ls[eShapeLineSegment.Point1] = vec2_rotate(ls[eShapeLineSegment.Point1], -rangle);
ls[eShapeLineSegment.Point1] = vec2_add(ls[eShapeLineSegment.Point1], rsize);

ls[eShapeLineSegment.Point2] = vec2_subtract(sp2, rcenter);
ls[eShapeLineSegment.Point2] = vec2_rotate(ls[eShapeLineSegment.Point2], -rangle);
ls[eShapeLineSegment.Point2] = vec2_add(ls[eShapeLineSegment.Point2], rsize);

return collide_line_seg_in_rect(ls, lr);