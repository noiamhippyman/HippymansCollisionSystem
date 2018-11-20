/// @desc oriented_rect_circle_hull(orientedRect);
/// @arg orientedRect
var orientedRect = argument0;
var center = orientedRect[eShapeOrientedRect.Center];
var rad = vec2_length(orientedRect[eShapeOrientedRect.HalfSize]);
return shape_circle(center[0],center[1],rad);