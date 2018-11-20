/// @desc collide_line_in_circle(line,circle);
/// @arg line,circle
var l = argument0;
var c = argument1;
var linst = l[SHAPE_INSTANCE];
var cinst = c[SHAPE_INSTANCE];
var lbase = l[eShapeLine.Base];
var ccenter = c[eShapeCircle.Center];

if (instance_exists(linst)) {
	lbase[0] += linst.x;
	lbase[1] += linst.y;
}

if (instance_exists(cinst)) {
	ccenter[0] += cinst.x;
	ccenter[1] += cinst.y;
}

var lc = vec2_subtract(ccenter, lbase);
var p = vec2_project(lc, l[eShapeLine.Direction]);
var near = vec2_add(lbase, p);
return collide_point_in_circle(near, c);