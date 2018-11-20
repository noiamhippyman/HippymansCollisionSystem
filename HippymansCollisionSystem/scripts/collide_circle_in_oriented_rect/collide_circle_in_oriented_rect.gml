/// @desc collide_circle_in_oriented_rect(circle,orientedRect);
/// @arg circle,orientedRect
var c = argument0;
var r = argument1;
var cinst = c[SHAPE_INSTANCE];
var rinst = r[SHAPE_INSTANCE];
var ccenter = c[eShapeCircle.Center];
var ro = r[eShapeOrientedRect.Center];
if (instance_exists(cinst)) {
	ccenter[0] += cinst.x;
	ccenter[1] += cinst.y;
}

if (instance_exists(rinst)) {
	ro[0] += rinst.x;
	ro[1] += rinst.y;
}


var lr = shape_rectangle(0,0,0,0);
lr[eShapeRect.Size] = vec2_multiply(r[eShapeOrientedRect.HalfSize], 2);

var lc = shape_circle(0,0,c[eShapeCircle.Radius]);
var dist = vec2_subtract(ccenter, ro);
dist = vec2_rotate(dist, -r[eShapeOrientedRect.Angle]);
lc[eShapeCircle.Center] = vec2_add(dist, r[eShapeOrientedRect.HalfSize]);

return collide_circle_in_rect(lc,lr);