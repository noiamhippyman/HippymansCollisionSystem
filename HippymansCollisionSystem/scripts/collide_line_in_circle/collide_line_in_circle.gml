/// @desc collide_line_in_circle(line,circle);
/// @arg line,circle
var l = argument0;
var c = argument1;
var lc = vec2_subtract(c[eCircle.Center], l[eLine.Base]);
var p = vec2_project(lc, l[eLine.Direction]);
var near = vec2_add(l[eLine.Base], p);
return collide_point_in_circle(near, c);