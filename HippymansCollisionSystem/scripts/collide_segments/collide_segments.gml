/// @desc collide_segments(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;
var instA = a[SHAPE_INSTANCE];
var instB = b[SHAPE_INSTANCE];
var ap1 = a[eShapeLineSegment.Point1];
var ap2 = a[eShapeLineSegment.Point2];
var bp1 = b[eShapeLineSegment.Point1];
var bp2 = b[eShapeLineSegment.Point2];

if (instance_exists(instA)) {
	//ap1[0] += instA.x; ap2[0] += instA.x;
	//ap1[1] += instA.y; ap2[1] += instA.y;
	var len = point_distance(0,0,ap1[0],ap1[1]);
	var dir = point_direction(0,0,ap1[0],ap1[1]) + instA.image_angle;
	ap1[0] = instA.x + lengthdir_x(len,dir);
	ap1[1] = instA.y + lengthdir_y(len,dir);
	
	len = point_distance(0,0,ap2[0],ap2[1]);
	dir = point_direction(0,0,ap2[0],ap2[1]) + instA.image_angle;
	ap2[0] = instA.x + lengthdir_x(len,dir);
	ap2[1] = instA.y + lengthdir_y(len,dir);
}

if (instance_exists(instB)) {
	//bp1[0] += instB.x; bp2[0] += instB.x;
	//bp1[1] += instB.y; bp2[1] += instB.y;
	var len = point_distance(0,0,bp1[0],bp1[1]);
	var dir = point_direction(0,0,bp1[0],bp1[1]) + instB.image_angle;
	bp1[0] = instB.x + lengthdir_x(len,dir);
	bp1[1] = instB.y + lengthdir_y(len,dir);
	
	len = point_distance(0,0,bp2[0],bp2[1]);
	dir = point_direction(0,0,bp2[0],bp2[1]) + instB.image_angle;
	bp2[0] = instB.x + lengthdir_x(len,dir);
	bp2[1] = instB.y + lengthdir_y(len,dir);
}

var axisA = shape_line(0,0,0,0);
var axisB = shape_line(0,0,0,0);

axisA[eShapeLine.Base] = ap1;
axisA[eShapeLine.Direction] = vec2_subtract(ap2,ap1);
if (on_one_side(axisA, b)) return false;

axisB[eShapeLine.Base] = bp1;
axisB[eShapeLine.Direction] = vec2_subtract(bp2,bp1);
if (on_one_side(axisB, a)) return false;

if (vec2_parallel(axisA[eShapeLine.Direction], axisB[eShapeLine.Direction])) {
	var ra = project_segment(a, axisA[eShapeLine.Direction]);
	var rb = project_segment(b, axisA[eShapeLine.Direction]);
	return overlapping_ranges(ra,rb);
} else {
	return true;
}