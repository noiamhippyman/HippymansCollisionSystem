/// @desc debug_draw_circle(circle);
/// @arg circle
var circle = argument0;
var c = circle[eShapeCircle.Center];
var r = circle[eShapeCircle.Radius];
var inst = circle[SHAPE_INSTANCE];
var cx = c[0];
var cy = c[1];
if (instance_exists(inst)) {
	cx += inst.x;
	cy += inst.y;
}
draw_circle(cx,cy,r,true);