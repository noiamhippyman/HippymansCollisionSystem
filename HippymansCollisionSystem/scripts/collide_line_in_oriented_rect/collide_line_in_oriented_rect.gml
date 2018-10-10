/// @desc collide_line_in_oriented_rect(line,orientedRect);
/// @arg line,orientedRect
var l = argument0;
var r = argument1;
var lbase = l[eLine.Base];
var ldir = l[eLine.Direction];

var lr = shape_rectangle(0,0,0,0);
lr[eRect.Size] = vec2_multiply(r[eOrientedRect.HalfSize], 2);
		
var ll = shape_line(0,0,0,0);
ll[eLine.Base] = vec2_subtract(lbase, r[eOrientedRect.Origin]);
ll[eLine.Base] = vec2_rotate(ll[eLine.Base], -r[eOrientedRect.Angle]);
ll[eLine.Base] = vec2_add(ll[eLine.Base], r[eOrientedRect.HalfSize]);
ll[eLine.Direction] = vec2_rotate(ldir, -r[eOrientedRect.Angle]);

return collide_line_in_rect(ll, lr);