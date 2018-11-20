/// @desc collide_circle_in_oriented_rect(circle,orientedRect);
/// @arg circle,orientedRect
var c = argument0;
var r = argument1;
var lr = shape_rectangle(0,0,0,0);
lr[eShapeRect.Size] = vec2_multiply(r[eShapeOrientedRect.HalfSize], 2);

var lc = shape_circle(0,0,c[eShapeCircle.Radius]);
var dist = vec2_subtract(c[eShapeCircle.Center], r[eShapeOrientedRect.Center]);
dist = vec2_rotate(dist, -r[eShapeOrientedRect.Angle]);
lc[eShapeCircle.Center] = vec2_add(dist, r[eShapeOrientedRect.HalfSize]);

return collide_circle_in_rect(lc,lr);