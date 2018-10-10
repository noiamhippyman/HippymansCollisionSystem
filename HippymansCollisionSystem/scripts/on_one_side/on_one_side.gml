/// @desc on_one_side(line,segment);
/// @arg line,segment
var l = argument0;
var s = argument1;
var d1 = vec2_subtract(s[eLineSegment.A], l[eLine.Base]);
var d2 = vec2_subtract(s[eLineSegment.B], l[eLine.Base]);
var n = vec2_rotate_90(l[eLine.Direction]);
return vec2_dot_product(n, d1) * vec2_dot_product(n, d2) > 0;