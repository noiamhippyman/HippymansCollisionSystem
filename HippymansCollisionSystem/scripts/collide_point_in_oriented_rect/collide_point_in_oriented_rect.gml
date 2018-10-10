/// @desc collide_point_in_oriented_rect(vec2,orientedRect);
/// @arg vec2,orientedRect
var v = argument0;
var r = argument1;

var lr = shape_rectangle(0,0,0,0);
lr[eRect.Size] = vec2_multiply(r[eOrientedRect.HalfSize],2);

var lp = vec2_subtract(v, r[eOrientedRect.Origin]);
lp = vec2_rotate(lp, -r[eOrientedRect.Angle]);
lp = vec2_add(lp, r[eOrientedRect.HalfSize]);

return collide_point_in_rect(lp,lr);