/// @desc collide_segments(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;

var ap1 = a[eLineSegment.A];
var ap2 = a[eLineSegment.B];
var bp1 = b[eLineSegment.A];
var bp2 = b[eLineSegment.B];

var axisA = shape_line(0,0,0,0);
var axisB = shape_line(0,0,0,0);

axisA[eLine.Base] = ap1;
axisA[eLine.Direction] = vec2_subtract(ap2,ap1);
if (on_one_side(axisA, b)) return false;

axisB[eLine.Base] = bp1;
axisB[eLine.Direction] = vec2_subtract(bp2,bp1);
if (on_one_side(axisB, a)) return false;

if (vec2_parallel(axisA[eLine.Direction], axisB[eLine.Direction])) {
	var ra = project_segment(a, axisA[eLine.Direction]);
	var rb = project_segment(b, axisA[eLine.Direction]);
	return overlapping_ranges(ra,rb);
} else {
	return true;
}