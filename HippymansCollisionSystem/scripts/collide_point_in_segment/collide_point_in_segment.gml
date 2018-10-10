/// @desc collide_point_in_segment(vec2,segment);
var v = argument0;
var s = argument1;
var sp1 = s[eLineSegment.A];
var sp2 = s[eLineSegment.B];

var d = vec2_subtract(sp2,sp1);
var lp = vec2_subtract(v, sp1);
var pr = vec2_project(lp, d);
return	vec2_equals(lp,pr) &&
		vec2_length(pr) <= vec2_length(d) &&
		0 <= vec2_dot_product(pr,d);