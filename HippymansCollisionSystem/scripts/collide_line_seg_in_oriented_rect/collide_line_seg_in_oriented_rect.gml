/// @desc collide_line_seg_in_oriented_rect(segment,orientedRect);
/// @arg segment,orientedRect
var s = argument0;
var r = argument1;

var sp1 = s[eLineSegment.A];
var sp2 = s[eLineSegment.B];
var ro = r[eOrientedRect.Origin];
var rs = r[eOrientedRect.HalfSize];
var ra = r[eOrientedRect.Angle];

var lr = shape_rectangle(0,0,0,0);
lr[eRect.Size] = vec2_multiply(r[eOrientedRect.HalfSize], 2);

var ls = shape_line_segment(0,0,0,0);
ls[eLineSegment.A] = vec2_subtract(sp1, ro);
ls[eLineSegment.A] = vec2_rotate(ls[eLineSegment.A], -ra);
ls[eLineSegment.A] = vec2_add(ls[eLineSegment.A], rs);

ls[eLineSegment.B] = vec2_subtract(sp2, ro);
ls[eLineSegment.B] = vec2_rotate(ls[eLineSegment.B], -ra);
ls[eLineSegment.B] = vec2_add(ls[eLineSegment.B], rs);

return collide_line_seg_in_rect(ls, lr);