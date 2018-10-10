/// @desc vec2_enclosed_angle(v1,v2);
/// @arg v1,v2
var v1 = argument0, v2 = argument1;
var u1 = vec2_unit(v1);
var u2 = vec2_unit(v2);
var dp = vec2_dot_product(u1,u2);
return radtodeg(arccos(dp));