/// @desc on_one_side(line,segment);
/// @arg line,segment
var l = argument0;
var s = argument1;
var d1 = vec2_subtract(s[eShapeLineSegment.Point1], l[eShapeLine.Base]);
var d2 = vec2_subtract(s[eShapeLineSegment.Point2], l[eShapeLine.Base]);
var n = vec2_rotate_90(l[eShapeLine.Direction]);
return vec2_dot_product(n, d1) * vec2_dot_product(n, d2) > 0;