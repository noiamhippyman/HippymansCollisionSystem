/// @desc project_segment(segment,onto);
/// @arg segment,onto
var s = argument0;
var o = argument1;

var ounit = vec2_unit(o);

var dp1 = vec2_dot_product(ounit, s[eShapeLineSegment.Point1]);
var dp2 = vec2_dot_product(ounit, s[eShapeLineSegment.Point2]);
var r = vec2(dp1,dp2);
return vec2_sort(r);