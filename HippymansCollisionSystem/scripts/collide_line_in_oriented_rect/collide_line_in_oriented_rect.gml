/// @desc collide_line_in_oriented_rect(line,orientedRect);
/// @arg line,orientedRect
var l = argument0;
var r = argument1;
var lbase = l[eShapeLine.Base];
var ldir = l[eShapeLine.Direction];

var lr = shape_rectangle(0,0,0,0);
lr[eShapeRect.Size] = vec2_multiply(r[eShapeOrientedRect.HalfSize], 2);
		
var ll = shape_line(0,0,0,0);
ll[eShapeLine.Base] = vec2_subtract(lbase, r[eShapeOrientedRect.Center]);
ll[eShapeLine.Base] = vec2_rotate(ll[eShapeLine.Base], -r[eShapeOrientedRect.Angle]);
ll[eShapeLine.Base] = vec2_add(ll[eShapeLine.Base], r[eShapeOrientedRect.HalfSize]);
ll[eShapeLine.Direction] = vec2_rotate(ldir, -r[eShapeOrientedRect.Angle]);

return collide_line_in_rect(ll, lr);