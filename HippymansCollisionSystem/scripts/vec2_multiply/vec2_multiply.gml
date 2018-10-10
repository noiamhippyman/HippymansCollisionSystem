/// @desc vec2_multiply(v1,v2);
/// @arg v1,v2
var v1 = argument0, v2 = argument1;
if (is_array(v2)) return vec2(v1[EVec2.X]*v2[EVec2.X],v1[EVec2.Y]*v2[EVec2.Y]);

return vec2(v1[EVec2.X]*v2,v1[EVec2.Y]*v2);