/// @desc oriented_rect_rectangle_hull(orientedRect);
/// @arg orientedRect
var r = argument0;
var rinst = r[SHAPE_INSTANCE];
var ro = r[eShapeOrientedRect.Center];
if (instance_exists(rinst)) {
	ro[0] += rinst.x;
	ro[1] += rinst.y;
}
var h = shape_rectangle(0,0,0,0);
h[eShapeRect.Origin] = ro;


for (var nr = 0; nr < 4; ++nr) {
	var corner = oriented_rectangle_corner(r, nr);
	h = enlarge_rectangle_point(h, corner);
}

return h;