/// @desc collide_segments(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var ap1 = a[eShapeLineSegment.Point1];
var ap2 = a[eShapeLineSegment.Point2];
var bp1 = b[eShapeLineSegment.Point1];
var bp2 = b[eShapeLineSegment.Point2];

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