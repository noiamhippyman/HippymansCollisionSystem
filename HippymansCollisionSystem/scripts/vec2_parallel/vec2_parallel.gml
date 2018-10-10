/// @desc vec2_parallel(a,b);
/// @arg a,b
var a = argument0;
var b = argument1;
var na = vec2_rotate_90(a);
return vec2_dot_product(na, b) == 0;