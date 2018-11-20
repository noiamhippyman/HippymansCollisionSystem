/// @desc clamp_on_rectangle(vec2,rect);
/// @arg vec2,rect
var v = argument0;
var r = argument1;
var rinst = r[SHAPE_INSTANCE];
var ro = r[eShapeRect.Origin];
if (instance_exists(rinst)) {
	ro[0] += rinst.x;
	ro[1] += rinst.y;
}
var rs = r[eShapeRect.Size];
var x1 = ro[0];
var y1 = ro[1];
var x2 = x1 + rs[0];
var y2 = y1 + rs[1];
return vec2(
	clamp(v[0], x1,x2),
	clamp(v[1], y1,y2)
);