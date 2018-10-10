/// @desc collide_line_seg_in_circle(segment,circle);
/// @arg segment,circle
var s = argument0;
var c = argument1;

var sa = s[eLineSegment.A];
var sb = s[eLineSegment.B];

if (collide_point_in_circle(sa,c) || collide_point_in_circle(sb,c)) return true;

var d = vec2_subtract(sb, sa);
var lc = vec2_subtract(c[eCircle.Center], sa);
var p = vec2_project(lc, d);
var near = vec2_add(sa, p);

return  collide_point_in_circle(near,c) &&
		vec2_length(p) <= vec2_length(d) &&
		0 <= vec2_dot_product(p, d);