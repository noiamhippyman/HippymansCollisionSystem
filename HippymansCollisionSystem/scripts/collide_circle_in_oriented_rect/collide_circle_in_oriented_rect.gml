/// @desc collide_circle_in_oriented_rect(circle,orientedRect);
/// @arg circle,orientedRect
var c = argument0;
var r = argument1;
var lr = shape_rectangle(0,0,0,0);
lr[eRect.Size] = vec2_multiply(r[eOrientedRect.HalfSize], 2);

var lc = shape_circle(0,0,c[eCircle.Radius]);
var dist = vec2_subtract(c[eCircle.Center], r[eOrientedRect.Origin]);
dist = vec2_rotate(dist, -r[eOrientedRect.Angle]);
lc[eCircle.Center] = vec2_add(dist, r[eOrientedRect.HalfSize]);

return collide_circle_in_rect(lc,lr);