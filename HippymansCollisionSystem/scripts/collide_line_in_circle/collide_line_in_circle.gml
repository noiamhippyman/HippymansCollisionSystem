/// @desc collide_line_in_circle(line,circle);
/// @arg line,circle
var l = argument0;
var c = argument1;
var lc = vec2_subtract(c[eShapeCircle.Center], l[eShapeLine.Base]);
var p = vec2_project(lc, l[eShapeLine.Direction]);
var near = vec2_add(l[eShapeLine.Base], p);
return collide_point_in_circle(near, c);