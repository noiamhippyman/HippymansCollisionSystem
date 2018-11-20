/// @desc collide_line_seg_in_circle(segment,circle);
/// @arg segment,circle
var s = argument0;
var c = argument1;

var sinst = s[SHAPE_INSTANCE];
var cinst = c[SHAPE_INSTANCE];

var sa = s[eShapeLineSegment.Point1];
var sb = s[eShapeLineSegment.Point2];

var ccenter = c[eShapeCircle.Center];

if (instance_exists(sinst)) {
	sa[0] += sinst.x; sb[0] += sinst.x;
	sa[1] += sinst.y; sb[1] += sinst.y;
}

if (instance_exists(cinst)) {
	ccenter[0] += cinst.x;
	ccenter[1] += cinst.y;
}

if (collide_point_in_circle(sa,c) || collide_point_in_circle(sb,c)) return true;

var d = vec2_subtract(sb, sa);
var lc = vec2_subtract(ccenter, sa);
var p = vec2_project(lc, d);
var near = vec2_add(sa, p);

return  collide_point_in_circle(near,c) &&
		vec2_length(p) <= vec2_length(d) &&
		0 <= vec2_dot_product(p, d);