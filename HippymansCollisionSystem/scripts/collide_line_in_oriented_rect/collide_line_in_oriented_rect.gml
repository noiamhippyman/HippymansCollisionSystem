/// @desc collide_line_in_oriented_rect(line,orientedRect);
/// @arg line,orientedRect
var l = argument0;
var r = argument1;

var linst = l[SHAPE_INSTANCE];
var rinst = r[SHAPE_INSTANCE];

var lbase = l[eShapeLine.Base];
var ldir = l[eShapeLine.Direction];

var rcenter = r[eShapeOrientedRect.Center];

if (instance_exists(linst)) {
	lbase[0] += linst.x;
	lbase[1] += linst.y;
}

if (instance_exists(rinst)) {
	rcenter[0] += rinst.x;
	rcenter[1] += rinst.y;
}

var lr = shape_rectangle(0,0,0,0);
lr[eShapeRect.Size] = vec2_multiply(r[eShapeOrientedRect.HalfSize], 2);
		
var ll = shape_line(0,0,0,0);
ll[eShapeLine.Base] = vec2_subtract(lbase, rcenter);
ll[eShapeLine.Base] = vec2_rotate(ll[eShapeLine.Base], -r[eShapeOrientedRect.Angle]);
ll[eShapeLine.Base] = vec2_add(ll[eShapeLine.Base], r[eShapeOrientedRect.HalfSize]);
ll[eShapeLine.Direction] = vec2_rotate(ldir, -r[eShapeOrientedRect.Angle]);

return collide_line_in_rect(ll, lr);