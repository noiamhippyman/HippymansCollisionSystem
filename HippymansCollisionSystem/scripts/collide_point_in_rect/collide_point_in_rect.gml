/// @desc collide_point_in_rect(vec2,rect);
/// @arg vec2,rect
var v = argument0;
var r = argument1;
var ro = r[eRect.Origin];
var rs = r[eRect.Size];

var left = ro[0];
var right = left + rs[0];
var top = ro[1];
var bottom = top + rs[1];

return left <= v[0] && top <= v[1] && v[0] <= right && v[1] <= bottom;