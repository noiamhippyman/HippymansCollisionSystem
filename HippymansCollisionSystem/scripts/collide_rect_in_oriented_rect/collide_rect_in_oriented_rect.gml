/// @desc collide_rect_in_oriented_rect(rect,orientedRect);
/// @arg rect,orientedRect
var r = argument0;
var oR = argument1;

var orHull = oriented_rect_rectangle_hull(oR);
if (!collide_rectangles(orHull, r)) return false;

var edge = oriented_rectangle_edge(oR, 0);
if (separating_axis_for_rect(edge,r)) return false;

edge = oriented_rectangle_edge(oR, 1);
return !separating_axis_for_rect(edge, r);