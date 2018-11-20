/// @desc project_segment(segment,onto);
/// @arg segment,onto
var s = argument0;
var o = argument1;
var sinst = s[SHAPE_INSTANCE];
var ounit = vec2_unit(o);

var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];
if (instance_exists(sinst)) {
	sp1[0] += sinst.x; sp2[0] += sinst.x;
	sp1[1] += sinst.y; sp2[1] += sinst.y;
}

var dp1 = vec2_dot_product(ounit, sp1);
var dp2 = vec2_dot_product(ounit, sp2);
var r = vec2(dp1,dp2);
return vec2_sort(r);