/// @desc oriented_rect_rectangle_hull(orientedRect);
/// @arg orientedRect
var r = argument0;
var h = shape_rectangle(0,0,0,0);
h[eRect.Origin] = r[eOrientedRect.Origin];

for (var nr = 0; nr < 4; ++nr) {
	var corner = oriented_rectangle_corner(r, nr);
	h = enlarge_rectangle_point(h, corner);
}

return h;