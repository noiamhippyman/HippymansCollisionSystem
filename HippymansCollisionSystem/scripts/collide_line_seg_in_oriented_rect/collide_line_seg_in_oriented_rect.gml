/// @desc collide_line_seg_in_oriented_rect(segment,orientedRect);
/// @arg segment,orientedRect
var s = argument0;
var r = argument1;

var sinst = s[SHAPE_INSTANCE];
var rinst = r[SHAPE_INSTANCE];

var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];
var ro = r[eShapeOrientedRect.Center];
var rs = r[eShapeOrientedRect.HalfSize];
var ra = r[eShapeOrientedRect.Angle];

if (instance_exists(sinst)) {
	sp1[0] += sinst.x; sp2[0] += sinst.x;
	sp1[1] += sinst.y; sp2[1] += sinst.y;
}

if (instance_exists(rinst)) {
	ro[0] += rinst.x;
	ro[1] += rinst.y;
}

var lr = shape_rectangle(0,0,0,0);
lr[eShapeRect.Size] = vec2_multiply(r[eShapeOrientedRect.HalfSize], 2);

var ls = shape_line_segment(0,0,0,0);
ls[eShapeLineSegment.Point1] = vec2_subtract(sp1, ro);
ls[eShapeLineSegment.Point1] = vec2_rotate(ls[eShapeLineSegment.Point1], -ra);
ls[eShapeLineSegment.Point1] = vec2_add(ls[eShapeLineSegment.Point1], rs);

ls[eShapeLineSegment.Point2] = vec2_subtract(sp2, ro);
ls[eShapeLineSegment.Point2] = vec2_rotate(ls[eShapeLineSegment.Point2], -ra);
ls[eShapeLineSegment.Point2] = vec2_add(ls[eShapeLineSegment.Point2], rs);

return collide_line_seg_in_rect(ls, lr);