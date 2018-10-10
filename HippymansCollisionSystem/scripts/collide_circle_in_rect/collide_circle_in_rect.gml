/// @desc collide_circle_in_rect(circle,rectangle);
/// @arg circle,rectangle
var c = argument0;
var r = argument1;

var clamped = clamp_on_rectangle(c[eCircle.Center], r);

return collide_point_in_circle(clamped, c);