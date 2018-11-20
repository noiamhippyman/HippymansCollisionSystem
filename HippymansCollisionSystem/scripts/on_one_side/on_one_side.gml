/// @desc on_one_side(line,segment);
/// @arg line,segment
var l = argument0;
var s = argument1;
var linst = l[SHAPE_INSTANCE];
var sinst = s[SHAPE_INSTANCE];

var lbase = l[eShapeLine.Base];
if (instance_exists(linst)) {
	lbase[0] += linst.x;
	lbase[1] += linst.y;
}

var sp1 = s[eShapeLineSegment.Point1];
var sp2 = s[eShapeLineSegment.Point2];
if (instance_exists(sinst)) {
	sp1[0] += sinst.x; sp2[0] += sinst.x;
	sp1[1] += sinst.y; sp2[1] += sinst.y;
}

var d1 = vec2_subtract(sp1, lbase);
var d2 = vec2_subtract(sp2, lbase);
var n = vec2_rotate_90(l[eShapeLine.Direction]);
return vec2_dot_product(n, d1) * vec2_dot_product(n, d2) > 0;