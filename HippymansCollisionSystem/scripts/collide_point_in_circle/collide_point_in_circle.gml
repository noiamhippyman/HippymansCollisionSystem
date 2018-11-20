/// @desc collide_point_in_circle(vec2,circle);
/// @arg vec2,circle
var p = argument0;
var c = argument1;
var dist = vec2_subtract(c[eShapeCircle.Center], p);
return vec2_length(dist) <= c[eShapeCircle.Radius];